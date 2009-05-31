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
using Microsoft.Office.Server.UserProfiles;
using System.Collections.Generic;
using Microsoft.SharePoint;
using CAFAM.WebPortal.Commons;
using System.Net.Mail;
using CAFAM.WebPortal.AdamConnetion;
using System.DirectoryServices.Protocols;

namespace CAFAM.WebPortal.User
{
    public class _RestorePassword : System.Web.UI.Page
    {
        //protected Label lblHelloWorld;
        protected TextBox txtEMail;
        protected Panel pnlSecretQuestion;
        //protected ImageButton ibtnCheckEMail;
        protected Button ibtnCheckEMail;
        protected Label lblSecretQuestion;
        protected TextBox txtAnswer;
        //protected ImageButton ibtnRestorePwd;
        protected Button ibtnRestorePwd;
        protected Label lblMessage;
        protected String sPassword;
        //protected ImageButton ibtnGoHome;
        protected Button ibtnGoHome;

        private Entities.User UserEntity
        {
            get
            {
                if (ViewState["User"] == null)
                {
                    ViewState["User"] = new Entities.User();
                }
                return (Entities.User)ViewState["User"];
            }
            set
            {
                ViewState["User"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //lblHelloWorld.Text = "Restablecer Contraseña";
        }

        public string EnsureString(string sArg)
        {
            if (string.IsNullOrEmpty(sArg))
                return "";
            else return sArg;
        }

        protected void ibtnCheckEMail_Click(object sender, EventArgs e)
        {
            try
            {
                string sEMail = txtEMail.Text.Trim().ToLower();

                BLL.UserBLL userBLL = new CAFAM.WebPortal.BLL.UserBLL(SPContext.Current.Web);

                Entities.User FoundUser = userBLL.GetUserByPrivateEmail(sEMail);

                if (FoundUser != null)
                {
                    UserEntity = FoundUser;

                    pnlSecretQuestion.Visible = true;
                    lblSecretQuestion.Text = FoundUser.SecurityQuestion;
                    lblMessage.Text = "Ingrese la respuesta";

                    txtEMail.Enabled = false;
                    ibtnCheckEMail.Enabled = false;
                }
                else
                {
                    lblMessage.Text = "El correo electrónico ingresado no se encuentra en el sistema";
                }
            }
            catch (Exception Ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(Ex, ref lblMessage, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

        protected string MakeNewPassword()
        {
            string sPWD = UserEntity.UserName;
            sPWD = char.ToUpper(sPWD[0]) + sPWD.Substring(1);

            Random RandNum = new Random(1234);
            DateTime dtCurr = DateTime.Now;
            sPWD = sPWD + dtCurr.Year + dtCurr.Month + dtCurr.Day + dtCurr.Hour +
                dtCurr.Minute + dtCurr.Second + "_" + RandNum.Next(1000, 9999);
            return sPWD;
        }

        protected void ibtnRestorePwd_Click(object sender, EventArgs e)
        {
            try
            {
                // Chequear si la respuesta es correcta
                if (UserEntity.SecurityAnswer.Trim().Equals(txtAnswer.Text.Trim()))
                {
                    AdamHelper MemberProv = new AdamHelper();

                    sPassword = MakeNewPassword();
                    ResultCode Rcode =
                        MemberProv.SetPassword(UserEntity.UserName.Substring(UserEntity.UserName.IndexOf(":") + 1), sPassword);

                    // Respuesta correcta, enviar el correo al usuario y avisar
                    EmailHelper MyEmailHlp = new EmailHelper(SPContext.Current.Web);
                    string sBody = string.Format("Estimado {0} {1}, {2} y {3}:" + Environment.NewLine +
                        "Este correo responde a su solicitud de restablecimiento de su contraseña. Para ingresar al sitio nuevamente deberá hacerlo con los siguientes datos. " + Environment.NewLine +
                        "Nombre de usuario: {4}" + Environment.NewLine +
                        "Contraseña: {5}" + Environment.NewLine +
                        "	Recomendamos que modifique su contraseña al ingresar al sitio." + Environment.NewLine +
                        "   El uso de este  usuario y la contraseña es personal e intransferible, le recordamos que la información de nuestros afiliados es confidencial y goza del" +
                        " privilegio del derecho a la intimidad consagrada en el Artículo 15 de la Constitución Política de Colombia de 1991; por lo tanto su uso es confidencial.",
                        UserEntity.FirstName, UserEntity.FirstSurname, UserEntity.NIT, UserEntity.TradeName, UserEntity.UserName, sPassword);

                    txtAnswer.Enabled = false;
                    ibtnRestorePwd.Enabled = false;
                    string sSMTPServer = ConfigurationSettings.AppSettings["SMTPServer"];
                    if (!string.IsNullOrEmpty(sSMTPServer))
                    {
                        /*MyEmailHlp.SendEmail(sSMTPServer,
                            MyEmailHlp.CreateEmail(UserEntity.PrivateEmail, "info@cafam.com", "Olvido de Contraseña", sBody));*/
                        MyEmailHlp.SendEmail(MyEmailHlp.CreateEmail(UserEntity.PrivateEmail, "info@cafam.com", "Olvido de Contraseña", sBody));

                        //lblMessage.Text = "Se le ha enviado un correo electrónico a su casilla privada con su nueva contraseña";
                        Response.Redirect(ConfigurationSettings.AppSettings["GoBackFromPasswdRestoreURL"]);
                    }
                    else
                    {
                        lblMessage.Text = sBody;
                    }
                }
                else
                {
                    lblMessage.Text = "La respuesta ingresada no es correcta";
                    ibtnGoHome.Visible = true;
                }
            }
            catch (Exception Ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(Ex, ref lblMessage, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

        protected void ibtnGoHome_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect(ConfigurationSettings.AppSettings["GoBackFromPasswdRestoreURL"]);
            }
            catch (Exception Ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(Ex, ref lblMessage, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }
    }
}