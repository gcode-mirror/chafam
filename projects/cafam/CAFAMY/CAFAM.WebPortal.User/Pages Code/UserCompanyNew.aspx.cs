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

namespace CAFAM.WebPortal.User
{
    public class UserCompanyNew : System.Web.UI.Page
    {
        #region Controls
        protected Label lblError;
        protected HyperLink lnkCommon;
        protected HtmlTable tblContact;
        protected TextBox txtContact;
        protected Button btnSend;
        protected HtmlTable tblNIT;
        protected TextBox txtNit;
        protected TextBox txtSubNit;
        protected Button btnCompanyVerification;    
        protected HtmlTable tblIdentification;
        protected RadioButtonList rdIdentificationType;       
        protected TextBox txtIdNum;
        protected Button btnIdentificationVerification;
        protected HtmlTable tblQuestions;
        protected TextBox txtQuestion1;
        protected TextBox txtQuestion2;
        protected TextBox txtQuestion3;
        protected TextBox txtQuestion4;
        protected TextBox txtQuestion5;
        protected Button btnValidateQuestions;
        protected HtmlTable tblPrincipal;
        protected Label lblNit;
        protected Label lblSubNIT;
        protected Label lblCompanyName;
        protected TextBox txtFirstName;
        protected TextBox txtSecondName;
        protected TextBox txtFirstSurname;
        protected TextBox txtSecondSurname;
        protected Label lblIdentificationType;
        protected Label lblIdentificatioNumber;
        protected TextBox txtPosition;
        protected TextBox txtCompanyEmail;
        protected Panel pnlCompanyTel;
        protected TextBox txtTelExtension;
        protected Panel pnlCompanyMobile;
        protected TextBox txtPersonalManager;
        protected Panel pnlCaptcha;
        protected Button btnSave;
        #endregion

        private SubsidiosWS.AffiliatedCompany CompanySubsidy
        {
            get
            {
                SubsidiosWS.AffiliatedCompany companySubsidy = null;

                if (ViewState["User"] != null)
                {
                    companySubsidy = (SubsidiosWS.AffiliatedCompany)ViewState["User"];
                }

                return companySubsidy;
            }
            set
            {
                ViewState["User"] = value;
            }
        }

        protected override void OnInit(EventArgs e)
        {
            try
            {
                btnCompanyVerification.Click += new EventHandler(btnCompanyVerification_Click);
                btnIdentificationVerification.Click += new EventHandler(btnIdentificationVerification_Click);
                btnValidateQuestions.Click += new EventHandler(btnValidateQuestions_Click);
                btnSend.Click += new EventHandler(btnSend_Click);
                btnSave.Click += new EventHandler(btnSave_Click);
            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                lblError.Visible = false;
                lnkCommon.Visible = false;
                AddTelControl();

                if (!IsPostBack)
                {
                    BindData();
                }

                CreateCaptcha();
            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

        private void AddTelControl()
        {
            try
            {
                WebUI.TelephoneControl telCompany = new CAFAM.WebPortal.WebUI.TelephoneControl();
                telCompany.ID = "telCompany";
                telCompany.Required = false;
                telCompany.ValidationGroup = "grpUserNew";
                telCompany.ValidatorsCSSClass = "form_field_error_message";
                telCompany.TextBoxCSSClass = "form_text";

                pnlCompanyTel.Controls.Add(telCompany);

                WebUI.TelephoneControl telCompanyMobile = new CAFAM.WebPortal.WebUI.TelephoneControl();
                telCompanyMobile.ID = "telCompanyMobile";
                telCompanyMobile.Required = false;
                telCompanyMobile.ValidationGroup = "grpUserNew";
                telCompanyMobile.ValidatorsCSSClass = "form_field_error_message";
                telCompanyMobile.TextBoxCSSClass = "form_text";

                pnlCompanyMobile.Controls.Add(telCompanyMobile);               
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void CreateCaptcha()
        {
            try
            {
                WebUI.CaptchaValidator captchaControl = new WebUI.CaptchaValidator();
                captchaControl.ID = "captchaControl";
                pnlCaptcha.Controls.Add(captchaControl);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void BindData()
        {
            try
            {
                SPWeb web = SPContext.Current.Web;

                BLL.IdentificationTypeBLL identificationTypeBLL = new CAFAM.WebPortal.BLL.IdentificationTypeBLL(web);

                DataSet dsIdentificationType = identificationTypeBLL.GetIdentificationTypeList();

                rdIdentificationType.DataSource = dsIdentificationType;
                rdIdentificationType.DataTextField = "Title";
                rdIdentificationType.DataValueField = "Value";
                rdIdentificationType.DataBind();
                rdIdentificationType.Items[0].Selected = true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                WebUI.CaptchaValidator captchaControl = (WebUI.CaptchaValidator)pnlCaptcha.FindControl("captchaControl");

                if (captchaControl != null)
                {
                    captchaControl.Validate();
                    if (captchaControl.IsValid)
                    {
                        SPWeb web = SPContext.Current.Web;

                        Entities.User userEntity = AssignDataToEntity();
                        BLL.UserBLL userBLL = new BLL.UserBLL(web);

                        userBLL.AddNewUserCompany(userEntity);

                        lblError.Text = "El proceso de registro ha finalizado. Usted recibirá un correo electrónico con el usuario y contraseña. ";
                        lblError.Visible = true;
                        lnkCommon.Visible = true;
                        lnkCommon.Text = "Volver al Home.";
                        lnkCommon.NavigateUrl = "~/default.aspx";
                        tblPrincipal.Visible = false;
                    }
                }
            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                Commons.EmailHelper emailHelper = new CAFAM.WebPortal.Commons.EmailHelper(SPContext.Current.Web);

                //emailHelper.SendContactMailNewMemberUser(ConfigurationSettings.AppSettings["ContactNewUserTo"], ConfigurationSettings.AppSettings["ContactNewUserFrom"], txtContact.Text, ConfigurationSettings.AppSettings["SMTPServer"], UserSubsdy.PrimerNombre + " " + UserSubsdy.PrimerApellido);

                emailHelper.SendContactMailNewMemberUser(ConfigurationSettings.AppSettings["ContactNewUserTo"], ConfigurationSettings.AppSettings["ContactNewUserFrom"], txtContact.Text, CompanySubsidy.NombreRepresentanteLegal);

                lblError.Visible = true;
                lblError.Text = "Mensaje enviado correctamente";
                lnkCommon.Visible = true;
                lnkCommon.NavigateUrl = "./default.aspx";

                tblContact.Visible = false;
            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

        protected void btnValidateQuestions_Click(object sender, EventArgs e)
        {
            try
            {
                bool valid = true;

                tblQuestions.Visible = false;
                if (txtQuestion1.Text.ToUpper().Replace(" ", "") != CompanySubsidy.NombreJefePersonal.ToUpper().Replace(" ", ""))
                {
                    valid = false;
                }
                if (txtQuestion2.Text != CompanySubsidy.NIT)
                {
                    valid = false;
                }
                /*El objeto no tiene el siguiente dato
                if (txtQuestion3.Text != CompanySubsdy.)
                {
                    valid = false;
                }*/
                /* El objeto UserSubsidy no tiene dato para comparar
                if (txtQuestion4.Text != UserSubsdy.ActividadEconomica)
                {
                    valid = false;
                }*/
                /*  El objeto UserSubsidy no tiene dato para comparar
                if (txtQuestion5.Text != UserSubsdy.MesAfilicacion)
                {
                    valid = false;
                }*/

                if (valid)
                {
                    BLL.UserCompanyNewBLL userCompanyNewBLL = new CAFAM.WebPortal.BLL.UserCompanyNewBLL(SPContext.Current.Web);
                    BLL.UserBLL userBLL = new CAFAM.WebPortal.BLL.UserBLL(SPContext.Current.Web);

                    if (!userCompanyNewBLL.ExistsIdentificationInList(rdIdentificationType.SelectedItem.Text, txtIdNum.Text) &&
                        userBLL.GetUserByIdentificationtAndCompanyCompanyUser(rdIdentificationType.SelectedItem.Text, txtIdNum.Text, txtNit.Text, txtSubNit.Text) == null)
                    {
                        tblPrincipal.Visible = true;
                        lblNit.Text = CompanySubsidy.NIT;
                        lblSubNIT.Text = CompanySubsidy.SubNIT;
                        lblCompanyName.Text = CompanySubsidy.RazonSocial;
                        lblIdentificationType.Text = rdIdentificationType.SelectedItem.Text;
                        lblIdentificatioNumber.Text = txtIdNum.Text;
                    }
                    else
                    {
                        lblError.Visible = true;
                        lblError.Text = "Ya existe un usuario registrado para esta empresa. Si olvido su contraseña puede restablecerla ";
                        lnkCommon.NavigateUrl = "~/_layouts/restorepassword.aspx";
                        lnkCommon.Text = "aqui.";
                        lnkCommon.Visible = true;
                    }
                }
                else
                {
                    lblError.Visible = true;
                    lblError.Text = "Sus respuestas a las preguntas de identificación difieren con la información que tenemos. Si desea contactarse con Cafam por favor esriba un mensaje debajo y envíelo";
                    tblContact.Visible = true;
                }
            }
            catch(Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

        protected void btnIdentificationVerification_Click(object sender, EventArgs e)
        {
            try
            {
                tblIdentification.Visible = false;
                tblQuestions.Visible = true;
#if DEBUG
                         lblError.Visible = true;
                         lblError.Text = "Jefe de Personal: " + CompanySubsidy.NombreJefePersonal + "<br />";
                        lblError.Text += "NIT: " + CompanySubsidy.NIT + "<br />";
#endif
            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

        protected void btnCompanyVerification_Click(object sender, EventArgs e)
        {
            try
            {
                int outInt;

                tblNIT.Visible = false;

                SubsidiosWS.CompanyRequest companyInfo = new CAFAM.WebPortal.User.SubsidiosWS.CompanyRequest();
                companyInfo.NIT = txtNit.Text;
                companyInfo.SubNIT = txtSubNit.Text;

                SubsidiosWS.WebService_Globant_PortalWeb_BiztalkSubsidios webService = new CAFAM.WebPortal.User.SubsidiosWS.WebService_Globant_PortalWeb_BiztalkSubsidios();

                webService.Url = ConfigurationManager.AppSettings["WSSubsidiosURL"];

               CompanySubsidy = webService.GetAffiliatedCompany(companyInfo); ;

                if (string.IsNullOrEmpty(CompanySubsidy.RazonSocial))
                {
                    lblError.Visible = true;
                    lblError.Text = "La empresa no se encuentra registrada como afiliada a CAFAM. Si su inscripción fue reciente por favor inténtelo mas tarde. Si no está afiliado y desea hacerlo por favor diríjase ";
                    lnkCommon.Visible = true;
                    lnkCommon.Text = "aquí";
                    lnkCommon.NavigateUrl = ConfigurationManager.AppSettings["CompanyMemberFormURL"];
                }
                else
                {
                    tblIdentification.Visible = true;
                }
            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

        public Entities.User AssignDataToEntity()
        {
            try
            {
                int outInt;

                Entities.User userEntity = new CAFAM.WebPortal.Entities.User();

                userEntity.NIT = lblNit.Text;
                userEntity.SubNIT = lblSubNIT.Text;
                userEntity.Company = lblCompanyName.Text;
                userEntity.FirstName = txtFirstName.Text;
                userEntity.SecondName = txtSecondName.Text;
                userEntity.FirstSurname = txtFirstSurname.Text;
                userEntity.SecondSurname = txtSecondSurname.Text;
                userEntity.IdentificationType = lblIdentificationType.Text;
                userEntity.IdentificationNumber = lblIdentificatioNumber.Text;             
                userEntity.Position = txtPosition.Text;
                userEntity.CompanyEmail = txtCompanyEmail.Text;
                WebUI.TelephoneControl telCompany = (WebUI.TelephoneControl)pnlCompanyTel.FindControl("telCompany");
                userEntity.CompanyTel = telCompany.Tel;
                userEntity.TelExtension = txtTelExtension.Text;
                WebUI.TelephoneControl telCompanyMobile = (WebUI.TelephoneControl)pnlCompanyMobile.FindControl("telCompanyMobile");
                userEntity.CompanyMobile = telCompanyMobile.Tel;
                userEntity.PersonalManager = txtPersonalManager.Text;

                return userEntity;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
