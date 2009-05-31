using System;
using System.Collections.Generic;
using System.Text;

namespace CAFAM.WebPortal.AdamConnetion
{
    public class AdamServer
    {
        public string ServerIP {get; set;}
        public int ServerPort {get; set;}
        public string UsersDistinguishedName {get; set;}
        public string UserNameCredential {get; set;}
        public string PasswordCredential {get; set;}
        public string DomainCredential {get; set;}

        public System.Net.NetworkCredential GetCredential()
        {
            try
            {
                System.Net.NetworkCredential credential = new System.Net.NetworkCredential();
                credential.UserName = UserNameCredential;
                credential.Password = PasswordCredential;
                credential.Domain = DomainCredential;

                return credential;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
