using System;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Microsoft.Office.Server.Security;

namespace CAFAM.WebPortal.User
{
    public class _CustomLogin : System.Web.UI.Page
    {
        protected Label lblHelloWorld;
        protected TextBox txtUSR;
        protected TextBox txtPWD;
        protected ImageButton ibtnSignIn;
        protected Label lblMessage;

        protected void Page_Load(object sender, EventArgs e)
        {
            lblHelloWorld.Text = "Login Page!";
        }

        public string EnsureString(string sArg)
        {
            if (string.IsNullOrEmpty(sArg))
                return "";
            else return sArg;
        }

        protected void ibtnSignIn_Click(object sender, EventArgs e)
        {
            LdapMembershipProvider MemberProv = new LdapMembershipProvider();
            string sUserName = EnsureString(txtUSR.Text).Trim();
            string sPassword = EnsureString(txtPWD.Text).Trim();

            if (sUserName.Length == 0 || sPassword.Length == 0)
            {
                lblMessage.Text = "Ingrese Usuario y Password";
                return;
            }

            if (MemberProv.GetUser(sUserName, false) == null)
            {
                lblMessage.Text = "Usuario no existente";
                return;
            }

            if (MemberProv.ValidateUser(txtUSR.Text, txtPWD.Text))
            {
                FormsAuthentication.SetAuthCookie(sUserName, true);
            }
            else
            {
                lblMessage.Text = "El usuario y la clave no coinciden";
                return;
            }
        }
    }
}