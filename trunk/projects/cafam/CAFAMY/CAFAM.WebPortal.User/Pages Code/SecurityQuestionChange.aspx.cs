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
using CAFAM.WebPortal.AdamConnetion;
using CAFAM.WebPortal.Commons;

namespace CAFAM.WebPortal.User
{
    public class _SecurityQuestionChange : System.Web.UI.Page
    {
        //protected Label lblHelloWorld;
        protected TextBox txtPwd;
        protected DropDownList ddlSecurityQuestion;
        protected TextBox txtOtherSecurityQuestion;
        protected TextBox txtAnswer;
        //protected ImageButton ibtnSubmit;
        protected Button ibtnSubmit;
        protected Label lblMessage;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    BLL.SecurityQuestionBLL securityQuestionBLL = new CAFAM.WebPortal.BLL.SecurityQuestionBLL(SPContext.Current.Web);

                    ddlSecurityQuestion.DataSource = securityQuestionBLL.GetSecurityQuestionList();
                    ddlSecurityQuestion.DataTextField = "Title";
                    ddlSecurityQuestion.DataValueField = "Title";
                    ddlSecurityQuestion.DataBind();
                    ddlSecurityQuestion.Items.Insert(ddlSecurityQuestion.Items.Count, new ListItem("Otra pregunta", ""));
                }
            }
            catch (Exception Ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(Ex, ref lblMessage, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

        protected void ibtnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string sQuestion;

                 if(!string.IsNullOrEmpty(ddlSecurityQuestion.SelectedValue))
                {
                    sQuestion = ddlSecurityQuestion.SelectedValue;
                }
                else
                {
                    sQuestion = txtOtherSecurityQuestion.Text;
                }

                string sAnswer = txtAnswer.Text;
                if (sAnswer.Trim().Length == 0)
                {
                    lblMessage.Text = "Debe ingresar una respuesta";
                    return;
                }

                // Comprobar la contraseña con el usuario logueado
                AdamHelper MemberProv = new AdamHelper();
                string sUser;

                sUser =  SPContext.Current.Web.CurrentUser.LoginName;
                string sPassword = txtPwd.Text.Trim();
                if (MemberProv.ValidateUser(sUser.Substring(sUser.IndexOf(":") + 1), sPassword))
                {
                    // Update in Profile!!
                    BLL.UserBLL MyUserBLL = new BLL.UserBLL(SPContext.Current.Web);
                    Entities.User MyUser = MyUserBLL.GetUser(sUser);
                    MyUser.SecurityQuestion = sQuestion;
                    MyUser.SecurityAnswer = sAnswer;
                    MyUserBLL.ModifyUser(MyUser);

                    ibtnSubmit.Enabled = false;

                    lblMessage.Text = "La pregunta de seguridad se ha actualizado correctamente";
                }
                else
                {
                    lblMessage.Text = "Uno o más datos requeridos no han sido diligenciados correctamente"; //  "La contraseña no es correcta";
                }
            }
            catch (Exception Ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(Ex, ref lblMessage, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }
    }
}