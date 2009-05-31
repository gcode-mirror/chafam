using System;
using System.Collections.Generic;
using System.Text;
using System.Web.Security;
using System.DirectoryServices.Protocols;
using Microsoft.Office.Server.Security;


namespace CAFAM.WebPortal.AdamConnetion
{
    public class AdamMembershipProvider : LdapMembershipProvider
    {

        AdamHelper _adamHelper;
        private AdamHelper AdamHelper
        {
            get
            {
                return _adamHelper;
            }
            set
            {
                _adamHelper = value;
            }
        }
        

        public override void Initialize(string name, System.Collections.Specialized.NameValueCollection config)
        {
            string server = config["server"];
            string port = config["port"];
            string userContainer = config["userContainer"];

            this.AdamHelper = new AdamHelper(server, Convert.ToInt32(port), userContainer, System.Net.CredentialCache.DefaultNetworkCredentials);
            base.Initialize(name, config);
        }

        public override bool ValidateUser(string username, string password)
        {
            return this.AdamHelper.ValidateUser(username, password);
        }
    }
}
