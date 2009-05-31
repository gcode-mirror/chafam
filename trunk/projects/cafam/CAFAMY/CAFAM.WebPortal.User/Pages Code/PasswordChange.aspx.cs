using System;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Microsoft.SharePoint;
using Microsoft.Office.Server.Security;
using System.Text.RegularExpressions;
using CAFAM.WebPortal.AdamConnetion;

namespace CAFAM.WebPortal.User
{
    public class _PasswordChange : System.Web.UI.Page
    {
        protected Label lblHelloWorld;
        protected TextBox txtPwd;
        protected TextBox txtPwdNew1;
        protected TextBox txtPwdNew2;
        //protected ImageButton ibtnSubmit;
        protected Button ibtnSubmit;
        protected Label lblMessage;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        public string EnsureString(string sArg)
        {
            if (string.IsNullOrEmpty(sArg))
                return "";
            else return sArg;
        }

        public bool StringContainsNumbers(string st)
        {
            if (string.IsNullOrEmpty(st)) return false;

            Regex re = new Regex(@"\d+");
            Match m = re.Match(st);
            return m.Success;
        }

        protected void ibtnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string sPassword = EnsureString(txtPwd.Text);
                string sNewPassword1 = EnsureString(txtPwdNew1.Text);
                string sNewPassword2 = EnsureString(txtPwdNew2.Text);

                //LdapMembershipProvider MemberProv = new LdapMembershipProvider();
                //LdapMembershipProvider MemberProv = (LdapMembershipProvider)Membership.Provider;
                AdamHelper MemberProv = new AdamHelper();

                string sUser = SPContext.Current.Web.CurrentUser.LoginName;
                sUser = sUser.Substring(sUser.IndexOf(":") + 1);
                string sSiteURL = SPContext.Current.Web.Url;
                if (!MemberProv.ValidateUser(sUser, sPassword))
                {
                    lblMessage.Text = "La contraseña ingresada es incorrecta";
                    //lblMessage.Text = "Uno o más datos ingresados son inválidos";
                    return;
                }

                if (sNewPassword1.Length < 6)
                {
                    lblMessage.Text = "La nueva contraseña debe tener al menos seis caracteres";
                    return;
                }

                if (!StringContainsNumbers (sNewPassword1))
                {
                    lblMessage.Text = "La nueva contraseña debe contener al menos un caracter numerico";
                    return;
                }

                if (sNewPassword1.Equals(sPassword))
                {
                    lblMessage.Text = "La nueva contraseña debe ser diferente de la actual";
                    return;
                }

                if (!sNewPassword1.Equals(sNewPassword2))
                {
                    lblMessage.Text = "La confirmacion de la contraseña es diferente de la nueva contraseña";
                    return;
                }

                // Cambiar la contraseña
                //MemberProv.ChangePassword (sUser, sPassword, sNewPassword1);
                MemberProv.SetPassword(sUser, sNewPassword1);

                ibtnSubmit.Enabled = false;
                lblMessage.Text = "La contraseña se ha actualizado de manera exitosa";

                FormsAuthentication.SignOut();
                Response.Redirect(sSiteURL);
            }
            catch (Exception Ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(Ex, ref lblMessage, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }
    }
}