using System;
using System.DirectoryServices.Protocols;
using System.Net;
using System.Text;
using System.Configuration;
using System.Collections.Generic;

//ver documentación en:  http://msdn.microsoft.com/en-us/library/bb332056.aspx
namespace CAFAM.WebPortal.AdamConnetion
{
    /// <summary>
    /// Clase para realizar operaciones sobre un proveedor de autenticación tipo ADAM
    /// </summary>
    public class AdamHelper : IDisposable
    {
        #region Private fields

        private string _serverUrl = string.Empty;
        private DirectoryConnection _adamConnection;
        private string _usersDistinguishedName;
        private NetworkCredential _credential;

        #endregion

        #region Private properties
        private string GroupsDistinguishedName
        {
            get
            {
                string groupsDN = _usersDistinguishedName.Replace("Users", "Groups");
                return groupsDN;
            }
        }
        #endregion

        #region Constructor
        /// <summary>
        /// Construtor del Objeto
        /// </summary>
        /// <param name="ldapServerIP">Indicar la IP del servidor (o el nombre). Ej: 172.172.1.1</param>
        /// <param name="serverPort">Indicar el puerto. Ej: 389</param>
        /// <param name="usersDistinguishedName">Indicar el DN del repositorio de usuarios. Ej: CN=Users,CN=PortalWeb,OU=cafam,O=dom,C=US</param>
        /// <param name="credential">Credenciales con permisos para operar sobre el ADAM</param>
        public AdamHelper(string ldapServerIP, int serverPort, string usersDistinguishedName, NetworkCredential credential)
        {
            this._serverUrl = ldapServerIP + ":" + serverPort.ToString();
            this._usersDistinguishedName = usersDistinguishedName;
            this._credential = credential;
        }

        public AdamHelper()
        {
            System.Net.NetworkCredential crdAccess;

            //Utilizar éste cuando es corrido fuera de los servidores de Cafam (ambientes de desarrollo que esten conectados a la VPN de Cafam) Hacer Ping primero para comprobar disponibilidad
            crdAccess = new System.Net.NetworkCredential(ConfigurationSettings.AppSettings["ADAMUserCredential"], ConfigurationSettings.AppSettings["ADAMPasswordCredential"], ConfigurationSettings.AppSettings["ADAMDomainCredential"]);

            //DefaultNetworkCredentials corre utilizando la cuenta con la que se ejecuta. (Utilizar éste cuando es corrido dentro del mismo contexto de Sharepoint en los servers de Cafam)
            //crdAccess = System.Net.CredentialCache.DefaultNetworkCredentials;
            
            // Leer todo esto del WEB CONFIG
            string ldapServerIP = ConfigurationSettings.AppSettings["ADAMServerIP"];
            int serverPort = int.Parse(ConfigurationSettings.AppSettings["ADAMServerPort"]);
            string usersDistinguishedName = ConfigurationSettings.AppSettings["ADAMUsersDistinguishedName"];

            //Instanciar el Objeto AdamHelper
            AdamHelper adamHelper = new AdamHelper(ldapServerIP, serverPort, usersDistinguishedName, crdAccess);
            
            this._serverUrl = ldapServerIP + ":" + serverPort.ToString();
            this._usersDistinguishedName = usersDistinguishedName;
            this._credential = crdAccess;
        }
        #endregion

        #region Public Methods
        public bool ValidateUser(string userName, string password)
        {
            try
            {
                if (string.IsNullOrEmpty(password))
                    return false;

                string userDN = string.Format("CN={0},{1}", userName, this._usersDistinguishedName);
                System.Net.NetworkCredential netC = new System.Net.NetworkCredential(userDN, password);
                DirectoryConnection dc = this.GetConnection(this._serverUrl, netC);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
   
        }
        /// <summary>
        /// Obtiene un objeto del tipo AdamUser
        /// </summary>
        /// <param name="loginName">Login del usuario</param>
        /// <returns></returns>
        public AdamUser GetUser(string loginName)
        {
            if (!this.UserExist(loginName))
                return null;

            AdamUser user = new AdamUser();
            string filter = string.Format("(&(objectClass=Person)(cn={0}))", loginName);
            this.OpenConnection();
            SearchRequest srchRequest = new SearchRequest(this._usersDistinguishedName, filter, SearchScope.Subtree);
            SearchResponse srchResponse = (SearchResponse)this._adamConnection.SendRequest(srchRequest);
            this.CloseConnection();

            SearchResultEntry srchEntry = srchResponse.Entries[0];
            user.Groups = new List<string>();
            DirectoryAttribute memberOfGroups = srchResponse.Entries[0].Attributes["memberOf"];

            if (memberOfGroups != null)
            {
                string[] groupsDN = (string[])memberOfGroups.GetValues(typeof(string));

                foreach (string groupDN in groupsDN)
                {
                    int fPos = groupDN.IndexOf("=") + 1;
                    int lPos = groupDN.IndexOf(",");
                    string groupName = groupDN.Substring(fPos, lPos - fPos);
                    user.Groups.Add(groupName);
                }
            }

            user.DistinguishedName = srchEntry.DistinguishedName;
            if (srchEntry.Attributes["givenName"] != null)
                user.FullName = srchEntry.Attributes["givenName"].GetValues(typeof(String))[0].ToString();
            else
                user.FullName = "";

            if (srchEntry.Attributes["cn"] != null)
                user.LoginName = srchEntry.Attributes["cn"].GetValues(typeof(String))[0].ToString();
            else
                user.LoginName = "";

            return user;
        }

        /// <summary>
        /// Crear un nuevo usuario en el ADAM
        /// </summary>
        /// <param name="loginName">Nombre de Login</param>
        /// <param name="fullName">Nombre y Apellido del usuario</param>
        /// <param name="password">Contraseña</param>
        /// <returns></returns>
        public ResultCode CreateUser(string loginName, string fullName, string password)
        {
            if (this.UserExist(loginName))
                return ResultCode.EntryAlreadyExists;

            this.OpenConnection();

            string dirClasstype = "user";
            string userDN = string.Format("CN={0},{1}", loginName, this._usersDistinguishedName);
            AddRequest addNewUserRequest = new AddRequest(userDN, dirClasstype);
            AddResponse response = (AddResponse)this._adamConnection.SendRequest(addNewUserRequest);

            if (response.ResultCode != ResultCode.Success)
                return response.ResultCode;

            DirectoryAttributeModification attFullName = new DirectoryAttributeModification();
            attFullName.Name = "givenName";
            attFullName.Operation = DirectoryAttributeOperation.Add;
            attFullName.Add(fullName);

            DirectoryAttributeModification attPassword = new DirectoryAttributeModification();
            attPassword.Name = "unicodePwd";
            attPassword.Add(GetPasswordData(password));
            attPassword.Operation = DirectoryAttributeOperation.Add;

            DirectoryAttributeModification attDisableAccount = new DirectoryAttributeModification();
            attDisableAccount.Name = "msDS-UserAccountDisabled";
            attDisableAccount.Add("FALSE");
            attDisableAccount.Operation = DirectoryAttributeOperation.Replace;


            ModifyRequest modRequest = new ModifyRequest(userDN, attFullName, attPassword, attDisableAccount);
            ModifyResponse modResponse = (ModifyResponse)this._adamConnection.SendRequest(modRequest);
            if (modResponse.ResultCode != ResultCode.Success)
                return modResponse.ResultCode;

            this.CloseConnection();
            return modResponse.ResultCode;

        }

        /// <summary>
        /// Eliminar un usuario del ADAM
        /// </summary>
        /// <param name="UserLogin">LoginName</param>
        /// <returns></returns>
        public ResultCode DeleteUser(string UserLogin)
        {
            if (!this.UserExist(UserLogin))
                return ResultCode.NoSuchObject;

            this.OpenConnection();
            string userDN = string.Format("CN={0},{1}", UserLogin, this._usersDistinguishedName);

            DeleteRequest delRequest = new DeleteRequest(userDN);
            DeleteResponse delResponse = (DeleteResponse)this._adamConnection.SendRequest(delRequest);

            this.CloseConnection();
            return delResponse.ResultCode;
        }


        /// <summary>
        /// Establecer una nueva password para un usuario 
        /// </summary>
        /// <param name="UserLogin">Login del usuario</param>
        /// <param name="newPassword">Nueva contraseña</param>
        /// <returns></returns>
        public ResultCode SetPassword(string UserLogin, string newPassword)
        {
            if (!this.UserExist(UserLogin))
                return ResultCode.NoSuchObject;

            this.OpenConnection();
            DirectoryAttributeModification modOperation = new DirectoryAttributeModification();
            modOperation.Name = "unicodePwd";
            modOperation.Add(GetPasswordData(newPassword));
            modOperation.Operation = DirectoryAttributeOperation.Replace;

            string userDN = string.Format("CN={0},{1}", UserLogin, this._usersDistinguishedName);

            ModifyRequest request = new ModifyRequest(userDN, modOperation);

            DirectoryResponse response = this._adamConnection.SendRequest(request);
            this.CloseConnection();
            return response.ResultCode;
        }

        /// <summary>
        /// Verificar si un usuario existe en el repositorio
        /// </summary>
        /// <param name="loginName">Login del usuario</param>
        /// <returns></returns>
        public bool UserExist(string loginName)
        {
            AdamUser user = new AdamUser();
            string filter = string.Format("(&(objectClass=user)(cn={0}))", loginName);
            this.OpenConnection();
            SearchRequest srchRequest = new SearchRequest(this._usersDistinguishedName, filter, SearchScope.Subtree);
            SearchResponse srchResponse = (SearchResponse)this._adamConnection.SendRequest(srchRequest);
            this.CloseConnection();

            return srchResponse.Entries.Count != 0;
        }

        public ResultCode AddUserToGroup(string userName, string groupName)
        {
            return ModifyUserInGroup(userName, groupName, DirectoryAttributeOperation.Add);
        }

        public ResultCode RemoveUserFromGroup(string userName, string groupName)
        {
            return ModifyUserInGroup(userName, groupName, DirectoryAttributeOperation.Delete);
        }

        public void Dispose()
        {
            IDisposable disposable = _adamConnection as IDisposable;
            if (disposable != null)
                disposable.Dispose();
        }
        #endregion

        #region Private Methods
        private void OpenConnection()
        {
            this._adamConnection = GetConnection(this._serverUrl);
        }

        private void CloseConnection()
        {
            IDisposable disposable = _adamConnection as IDisposable;
            if (disposable != null)
                disposable.Dispose();
        }
        private DirectoryConnection GetConnection(string server)
        {
            LdapConnection connection = new LdapConnection(new LdapDirectoryIdentifier(server));
            connection.SessionOptions.Sealing = true;
            connection.Credential = this._credential;
            connection.AuthType = AuthType.Ntlm;
            connection.Bind();
            return connection;
        }

        private DirectoryConnection GetConnection(string server, NetworkCredential credential)
        {
            LdapConnection connection = new LdapConnection(new LdapDirectoryIdentifier(server));
            connection.SessionOptions.ProtocolVersion = 3;
            connection.Credential = credential;
            connection.AuthType = AuthType.Basic;
            connection.Bind();
            return connection;
        }


        private static byte[] GetPasswordData(string password)
        {
            string formattedPassword;
            formattedPassword = String.Format("\"{0}\"", password);
            return (Encoding.Unicode.GetBytes(formattedPassword));
        }

       private ResultCode ModifyUserInGroup(string userName, string groupName, DirectoryAttributeOperation operation)
        {
            if (!this.UserExist(userName))
                return ResultCode.NoSuchObject;
            AdamUser user = this.GetUser(userName);


            if ((user.Groups.Contains(groupName) && operation == DirectoryAttributeOperation.Add))
                return ResultCode.EntryAlreadyExists;
            else if ((!user.Groups.Contains(groupName) && operation == DirectoryAttributeOperation.Delete))
                return ResultCode.NoSuchAttribute;

            
            string filter = string.Format("(&(objectClass=Group)(distinguishedName=CN={0},{1}))", groupName, this.GroupsDistinguishedName);
            this.OpenConnection();
            SearchRequest srchRequestGroup = new SearchRequest(this.GroupsDistinguishedName, filter, SearchScope.Subtree);
            SearchResponse srchResponseGroup = (SearchResponse)this._adamConnection.SendRequest(srchRequestGroup);
            this.CloseConnection();

            SearchResultEntry srchEntryGrp = srchResponseGroup.Entries[0];
            string groupDN = srchEntryGrp.DistinguishedName;

            DirectoryAttributeModification addMod = new DirectoryAttributeModification();
            addMod.Name = "member";
            addMod.Add(user.DistinguishedName);
            addMod.Operation = operation;
            ModifyRequest modRequestAddUser = new ModifyRequest(groupDN, addMod);
            this.OpenConnection();
            DirectoryResponse modResponseAdduser = this._adamConnection.SendRequest(modRequestAddUser);
            this.CloseConnection();

            return modResponseAdduser.ResultCode;
        }
        #endregion
    }
}