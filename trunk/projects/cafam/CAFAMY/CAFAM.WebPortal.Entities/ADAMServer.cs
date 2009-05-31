using System;
using System.Net;
using System.Collections.Generic;
using System.Text;

namespace CAFAM.WebPortal.Entities
{
    public class AdamServer
    {
        public string ServerIP { get; set; }
        public int ServerPort { get; set; }
        public string UsersDistinguishedName { get; set; }
        public string UserNameCredential { get; set; }
        public string PasswordCredential { get; set; }
        public string DomainCredential { get; set; }

        public NetworkCredential GetCredential()
        {
            try
            {
                NetworkCredential networkCredential = new NetworkCredential(UserNameCredential, PasswordCredential, DomainCredential);

                return networkCredential;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
