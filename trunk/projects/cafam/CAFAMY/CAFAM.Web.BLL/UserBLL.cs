using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.SharePoint;
using System.Configuration;

namespace CAFAM.WebPortal.BLL
{
    public class UserBLL
    {
        private SPWeb Web;

        public UserBLL(SPWeb web)
        {
            Web = web;
        }

        public UserBLL()
        {
        }

        public Entities.User GetUser(string profile)
        {
            try
            {
                DAO.UserDAO userDAO = new DAO.UserDAO(Web);
                return userDAO.GetUser(profile);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Entities.User GetUser(int id)
        {
            try
            {
                DAO.UserDAO userDAO = new DAO.UserDAO(Web);
                return userDAO.GetUser(id);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Entities.User GetUserByWS(string profile, string user, string pass, string domain)
        {
            try
            {
                DAO.UserDAO userDAO = new CAFAM.WebPortal.DAO.UserDAO();
                return userDAO.GetUserByWS(profile, user, pass, domain);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        public void ModifyUser(Entities.User user)
        {
            try
            {
                DAO.UserDAO userDAO = new DAO.UserDAO(Web);
                userDAO.ModifyUser(user);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool CreateUser(Entities.User user, out string message)
        {
            try
            {
                AdamConnetion.AdamServer adamServer = new CAFAM.WebPortal.AdamConnetion.AdamServer();

                adamServer.ServerIP = ConfigurationSettings.AppSettings["ADAMServerIP"];
                adamServer.ServerPort = int.Parse(ConfigurationSettings.AppSettings["ADAMServerPort"]);
                adamServer.UsersDistinguishedName = ConfigurationSettings.AppSettings["ADAMUsersDistinguishedName"];
                adamServer.UserNameCredential = ConfigurationSettings.AppSettings["ADAMUserCredential"];
                adamServer.PasswordCredential = ConfigurationSettings.AppSettings["ADAMPasswordCredential"];
                adamServer.DomainCredential = ConfigurationSettings.AppSettings["ADAMDomainCredential"];

                DAO.UserDAO userDAO = new CAFAM.WebPortal.DAO.UserDAO(Web);

                if (System.DirectoryServices.Protocols.ResultCode.EntryAlreadyExists == userDAO.CreateUserAdam(user, adamServer))
                {
                    message = "El nombre de usuario seleccionado ya existe en el sistema, por favor ingrese uno nuevo. ";
                    return false;
                }
                else
                {
                    string group = string.Empty;
                    switch (user.UserType)
                    {
                        case CAFAM.WebPortal.Entities.EnumUserType.Afiliado:
                            group = ConfigurationSettings.AppSettings["ADAMAfiliadosMemberGroup"];
                            break;
                        case CAFAM.WebPortal.Entities.EnumUserType.No_Afiliado:
                            group = ConfigurationSettings.AppSettings["ADAMNoAfiliadosMemberGroup"];
                            break;
                        case CAFAM.WebPortal.Entities.EnumUserType.Empresa:
                            group = ConfigurationSettings.AppSettings["ADAMEmpresasMemberGroup"];
                            break;
                    }
                    userDAO.AddUserToAdamGroup(user, adamServer, group);
                    userDAO.AddUserToAdamGroup(user, adamServer, ConfigurationSettings.AppSettings["ADAMBaseMemberGroup"]);
                    userDAO.CreateUser(user);
                    message = string.Empty;

                    if (user.UserType != CAFAM.WebPortal.Entities.EnumUserType.Empresa)
                    {
                        System.Web.Security.FormsAuthentication.SetAuthCookie(user.UserNameWithoutMembership, true);
                    }
                    
                    return true;
                }
            }
            catch (Exception ex)
            {
                AdamConnetion.AdamServer adamServer = new CAFAM.WebPortal.AdamConnetion.AdamServer();

                adamServer.ServerIP = ConfigurationSettings.AppSettings["ADAMServerIP"];
                adamServer.ServerPort = int.Parse(ConfigurationSettings.AppSettings["ADAMServerPort"]);
                adamServer.UsersDistinguishedName = ConfigurationSettings.AppSettings["ADAMUsersDistinguishedName"];
                adamServer.UserNameCredential = ConfigurationSettings.AppSettings["ADAMUserCredential"];
                adamServer.PasswordCredential = ConfigurationSettings.AppSettings["ADAMPasswordCredential"];
                adamServer.DomainCredential = ConfigurationSettings.AppSettings["ADAMDomainCredential"];

                 DAO.UserDAO userDAO = new CAFAM.WebPortal.DAO.UserDAO(Web);

                if(userDAO.UserExistAdam(adamServer, user))
                {
                    userDAO.DeleteUserAdam(user.UserNameWithoutMembership, adamServer);
                }

                throw ex;
            }
        }

        public void DeleteUser(Entities.User user)
        {
            try
            {
                DeleteUser(user.UserName);   
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void DeleteUser(string profile)
        {
            Entities.User user = null;
            try
            {
                AdamConnetion.AdamServer adamServer = new CAFAM.WebPortal.AdamConnetion.AdamServer();

                adamServer.ServerIP = ConfigurationSettings.AppSettings["ADAMServerIP"];
                adamServer.ServerPort = int.Parse(ConfigurationSettings.AppSettings["ADAMServerPort"]);
                adamServer.UsersDistinguishedName = ConfigurationSettings.AppSettings["ADAMUsersDistinguishedName"];
                adamServer.UserNameCredential = ConfigurationSettings.AppSettings["ADAMUserCredential"];
                adamServer.PasswordCredential = ConfigurationSettings.AppSettings["ADAMPasswordCredential"];
                adamServer.DomainCredential = ConfigurationSettings.AppSettings["ADAMDomainCredential"];

                DAO.UserDAO userDAO = new CAFAM.WebPortal.DAO.UserDAO(Web);

                user = userDAO.GetUser(profile);

                userDAO.DeleteUser(profile);

                string profileADAM = profile.Substring(profile.IndexOf(":") + 1);

                userDAO.DeleteUserAdam(profileADAM, adamServer);
            }
            catch (Exception ex)
            {
                AdamConnetion.AdamServer adamServer = new CAFAM.WebPortal.AdamConnetion.AdamServer();

                adamServer.ServerIP = ConfigurationSettings.AppSettings["ADAMServerIP"];
                adamServer.ServerPort = int.Parse(ConfigurationSettings.AppSettings["ADAMServerPort"]);
                adamServer.UsersDistinguishedName = ConfigurationSettings.AppSettings["ADAMUsersDistinguishedName"];
                adamServer.UserNameCredential = ConfigurationSettings.AppSettings["ADAMUserCredential"];
                adamServer.PasswordCredential = ConfigurationSettings.AppSettings["ADAMPasswordCredential"];
                adamServer.DomainCredential = ConfigurationSettings.AppSettings["ADAMDomainCredential"];

                string profileADAM = profile.Substring(profile.IndexOf(":") + 1);

                DAO.UserDAO userDAO = new CAFAM.WebPortal.DAO.UserDAO(Web);

                if (!userDAO.UserExistSP(profile) && userDAO.UserExistAdam(adamServer, user))
                {
                    userDAO.CreateUser(user);
                }

                throw ex;
            }
        }

        public void AddNewUserCompany(Entities.User user)
        {
            try
            {
                DAO.UserDAO userDAO = new CAFAM.WebPortal.DAO.UserDAO(Web);

                userDAO.AddNewUserCompany(user);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Entities.User GetUserByIdentification(string identificationType, string identificationNumber)
        {
            try
            {
                List<Entities.Filter> listFilter = new List<CAFAM.WebPortal.Entities.Filter>();

                Entities.Filter filter = new CAFAM.WebPortal.Entities.Filter("IdentificationType", identificationType, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                listFilter.Add(filter);

                filter = new CAFAM.WebPortal.Entities.Filter("IdentificationNumber", identificationNumber, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                listFilter.Add(filter);

                DAO.UserDAO userDAO = new CAFAM.WebPortal.DAO.UserDAO(Web);

                return userDAO.FilterUser(listFilter);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Entities.User GetUserByIdentificationNotCompany(string identificationType, string identificationNumber)
        {
            try
            {
                List<Entities.Filter> listFilter = new List<CAFAM.WebPortal.Entities.Filter>();

                Entities.Filter filter = new CAFAM.WebPortal.Entities.Filter("IdentificationType", identificationType, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                listFilter.Add(filter);

                filter = new CAFAM.WebPortal.Entities.Filter("IdentificationNumber", identificationNumber, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                listFilter.Add(filter);

                filter = new CAFAM.WebPortal.Entities.Filter("UserType", Entities.EnumUserType.Empresa, CAFAM.WebPortal.Entities.EnumOperator.NotEqual);
                listFilter.Add(filter);

                DAO.UserDAO userDAO = new CAFAM.WebPortal.DAO.UserDAO(Web);

                return userDAO.FilterUser(listFilter);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Entities.User GetUserByIdentificationtAndCompanyCompanyUser(string identificationType, string identificationNumber, string nit, string subNIT)
        {
            try
            {
                List<Entities.Filter> listFilter = new List<CAFAM.WebPortal.Entities.Filter>();

                Entities.Filter filter = new CAFAM.WebPortal.Entities.Filter("IdentificationType", identificationType, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                listFilter.Add(filter);

                filter = new CAFAM.WebPortal.Entities.Filter("IdentificationNumber", identificationNumber, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                listFilter.Add(filter);

                filter = new CAFAM.WebPortal.Entities.Filter("NIT", nit, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                listFilter.Add(filter);

                filter = new CAFAM.WebPortal.Entities.Filter("SubNIT", subNIT, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                listFilter.Add(filter);  

                filter = new CAFAM.WebPortal.Entities.Filter("UserType", Entities.EnumUserType.Empresa, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                listFilter.Add(filter);

                DAO.UserDAO userDAO = new CAFAM.WebPortal.DAO.UserDAO(Web);

                return userDAO.FilterUser(listFilter);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Entities.User GetUserByIdentificationAndCompany(string identificationType, string identificationNumber, string nit, string subNIT)
        {
            try
            {
                List<Entities.Filter> listFilter = new List<CAFAM.WebPortal.Entities.Filter>();

                Entities.Filter filter = new CAFAM.WebPortal.Entities.Filter("IdentificationType", identificationType, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                listFilter.Add(filter);

                filter = new CAFAM.WebPortal.Entities.Filter("IdentificationNumber", identificationNumber, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                listFilter.Add(filter);

                filter = new CAFAM.WebPortal.Entities.Filter("NIT", nit, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                listFilter.Add(filter);

                filter = new CAFAM.WebPortal.Entities.Filter("SubNIT", subNIT, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                listFilter.Add(filter);

                DAO.UserDAO userDAO = new CAFAM.WebPortal.DAO.UserDAO(Web);

                return userDAO.FilterUser(listFilter);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Entities.User GetUserByPrivateEmail(string mail)
        {
            try
            {
                DAO.UserDAO userDAO = new CAFAM.WebPortal.DAO.UserDAO(Web);

                Entities.Filter filter = new CAFAM.WebPortal.Entities.Filter("PrivateEmail", mail, Entities.EnumOperator.Equal);

                return userDAO.FilterUser(filter);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<Entities.User > GetFilterListUsers(string firstName, string firstSurname, string idType, string idNum, string audience, DateTime date1, DateTime date2, string accountName, string nit, string subNit, string company, string userType, string creationDate)
        {
            try
            {
                List<Entities.Filter> listFilter = new List<CAFAM.WebPortal.Entities.Filter>();

                Entities.Filter filter = null;

                if (!string.IsNullOrEmpty(firstName))
                {
                    filter = new CAFAM.WebPortal.Entities.Filter("FirstName", firstName, CAFAM.WebPortal.Entities.EnumOperator.Like);
                    listFilter.Add(filter);
                }
                if (!string.IsNullOrEmpty(firstSurname))
                {
                    filter = new CAFAM.WebPortal.Entities.Filter("FirstSurname", firstSurname, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                    listFilter.Add(filter);
                }
                if (!string.IsNullOrEmpty(idType))
                {
                    filter = new CAFAM.WebPortal.Entities.Filter("IdentificationType", idType, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                    listFilter.Add(filter);
                }
                if (!string.IsNullOrEmpty(idNum))
                {
                    filter = new CAFAM.WebPortal.Entities.Filter("IdentificationNumber", idNum, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                    listFilter.Add(filter);
                }
                if (!string.IsNullOrEmpty(audience))
                {
                    filter = new CAFAM.WebPortal.Entities.Filter("Audience", audience, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                    listFilter.Add(filter);
                }
                if (date1 != DateTime.MinValue)
                {
                    filter = new CAFAM.WebPortal.Entities.Filter("BirthDate", date1, CAFAM.WebPortal.Entities.EnumOperator.LessThanOrEqual);
                    listFilter.Add(filter);
                }

                if (date2 != DateTime.MinValue)
                {
                    filter = new CAFAM.WebPortal.Entities.Filter("BirthDate", date2, CAFAM.WebPortal.Entities.EnumOperator.GreaterThan);
                    listFilter.Add(filter);
                }
                if (!string.IsNullOrEmpty(accountName))
                {
                    filter = new CAFAM.WebPortal.Entities.Filter("AccountName", string.Format("{0}:{1}", ConfigurationSettings.AppSettings["ProviderName"], accountName), CAFAM.WebPortal.Entities.EnumOperator.Equal);
                    listFilter.Add(filter);
                }
                if (!string.IsNullOrEmpty(nit))
                {
                    filter = new CAFAM.WebPortal.Entities.Filter("NIT", nit, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                    listFilter.Add(filter);
                }
                if (!string.IsNullOrEmpty(subNit))
                {
                    filter = new CAFAM.WebPortal.Entities.Filter("SubNIT", subNit, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                    listFilter.Add(filter);
                }
                if (!string.IsNullOrEmpty(company))
                {
                    filter = new CAFAM.WebPortal.Entities.Filter("Company", company, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                    listFilter.Add(filter);
                }
                if (!string.IsNullOrEmpty(userType))
                {
                    filter = new CAFAM.WebPortal.Entities.Filter("UserType", userType, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                    listFilter.Add(filter);
                }
                if (!string.IsNullOrEmpty(creationDate))
                {
                    filter = new CAFAM.WebPortal.Entities.Filter("CreationDate", creationDate, CAFAM.WebPortal.Entities.EnumOperator.Equal);
                    listFilter.Add(filter);
                }               


                DAO.UserDAO userDAO = new CAFAM.WebPortal.DAO.UserDAO(Web);

                return userDAO.FilterUsers(listFilter);         
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
