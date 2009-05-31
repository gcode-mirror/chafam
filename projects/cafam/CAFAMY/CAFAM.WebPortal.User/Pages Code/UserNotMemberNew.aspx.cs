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
    public class UserNotMemberNew : System.Web.UI.Page
    {
        #region Controls
        protected Image imgEjemplo;
        protected ImageButton imgButton;
        protected Label lblError;
        protected HyperLink lnkGoHome;
        protected HyperLink lnkCommon;
        protected HtmlTable tblPrincipal;
        protected TextBox txtFirstName;
        protected TextBox txtSecondName;
        protected TextBox txtFirstSurname;
        protected TextBox txtSecondSurname;
        protected Label lblIdentificationType;
        protected Label lblIdentificationNumber;
        protected Panel pnlBirthDate;
        protected RadioButtonList rdlMaritalState;
        protected DropDownList ddlOccupation;
        protected DropDownList ddlCompensationFund;
        protected TextBox txtCompany;
        protected TextBox txtPosition;
        protected TextBox txtPrivateEmail;
        protected TextBox txtCompanyEmail;
        protected Panel pnlPrivateTel;
        protected Panel pnlPrivateMobile;
        protected Panel pnlCompanyTel;
        protected TextBox txtTelExtension;
        protected Panel pnlAddress;
        protected DropDownList ddlEPS;
        protected TextBox txtChildrenQuantity;
        protected DropDownList ddlIncomeLevel;
        protected TextBox txtUserName;
        protected TextBox txtPass;
        protected DropDownList ddlSecurityQuestion;
        protected TextBox txtOtherSecurityQuestion;
        protected TextBox txtSecurityAnswer;
        protected CheckBoxList chkListTopicOfInterest; 
        protected Panel pnlCaptcha;
        protected Button btnSave;      
        #endregion

        protected void imgButton_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                ImageButton imgButtonEjemplo = (ImageButton)sender;
                switch (imgButtonEjemplo.ID)
                {
                    case "imgButton":
                        imgEjemplo.Visible = !imgEjemplo.Visible;
                        break;
                    default:
                        break;
                }
            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

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

        protected override void OnInit(EventArgs e)
        {
            try
            {
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
                lnkGoHome.Visible = false;
                lnkCommon.Visible = false;
                CreateDatePickers();
                CreateCaptcha();
                AddTelControls();
                AddAddressControl();

                if (!IsPostBack)
                {
                    if (!string.IsNullOrEmpty(Commons.CryptographicService.Decrypt(Request.QueryString["IT"]))
                        && !string.IsNullOrEmpty(Commons.CryptographicService.Decrypt(Request.QueryString["IN"])))
                    {
                        BindData();
                        AssignDataToControls();
                    }
                    else
                    {
                        tblPrincipal.Visible = false;
                        lblError.Visible = true;
                        lblError.Text = "No se encuentra el usuario";
                        lnkGoHome.Visible = true;
                    }
                }

            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
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

        private void CreateDatePickers()
        {
            try
            {
                WebUI.DateTimeCustomControl dateTimeCustomControl = new WebUI.DateTimeCustomControl();
                dateTimeCustomControl.ID = "dateTimeCustomControl";
                dateTimeCustomControl.Required = false;
                dateTimeCustomControl.ValidationGroup = "grpUserNew";
                dateTimeCustomControl.ValidatorsCSSClass = "form_field_error_message";
                dateTimeCustomControl.AjaxFunctionality = true;
                dateTimeCustomControl.LessOrEqualThanNow = true;
                dateTimeCustomControl.TextBoxCSSClass = "form_text";
                pnlBirthDate.Controls.Add(dateTimeCustomControl);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void AddTelControls()
        {
            try
            {
                WebUI.TelephoneControl telPrivate = new CAFAM.WebPortal.WebUI.TelephoneControl();
                telPrivate.ID = "telPrivate";
                telPrivate.Required = true;
                telPrivate.ValidationGroup = "grpUserNew";
                telPrivate.ValidatorsCSSClass = "form_field_error_message";
                telPrivate.TextBoxCSSClass = "form_text";

                pnlPrivateTel.Controls.Add(telPrivate);

                WebUI.TelephoneControl telPrivateMobile = new CAFAM.WebPortal.WebUI.TelephoneControl();
                telPrivateMobile.ID = "telPrivateMobile";
                telPrivateMobile.Required = false;
                telPrivateMobile.ValidationGroup = "grpUserNew";
                telPrivateMobile.ValidatorsCSSClass = "form_field_error_message";
                telPrivateMobile.TextBoxCSSClass = "form_text";

                pnlPrivateMobile.Controls.Add(telPrivateMobile);

                WebUI.TelephoneControl telCompany = new CAFAM.WebPortal.WebUI.TelephoneControl();
                telCompany.ID = "telCompany";
                telCompany.Required = false;
                telCompany.ValidationGroup = "grpUserNew";
                telCompany.ValidatorsCSSClass = "form_field_error_message";
                telCompany.TextBoxCSSClass = "form_text";

                pnlCompanyTel.Controls.Add(telCompany);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void AddAddressControl()
        {
            try
            {
                WebUI.AddressControl address = new CAFAM.WebPortal.WebUI.AddressControl();
                address.ID = "address";
                address.ValidationGroup = "grpUserNew";
                address.FieldText = "Dirección de Residencia";
                address.FieldTextClass = "form_label";
                address.ValidatorClass = "form_field_error_message";
                address.TextBoxClass = "form_text";

                pnlAddress.Controls.Add(address);
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
                        string message;

                        BLL.UserBLL userBLL = new BLL.UserBLL(web);

                        AssignDataToEntity();

                        if (!userBLL.CreateUser(UserEntity, out message))
                        {
                            lblError.Text = message;
                        }
                        else
                        {
                            lblError.Text = "El proceso de registro ha finalizado exitosamente. ";
                            lnkGoHome.Visible = true;
                            tblPrincipal.Visible = false;
                        }

                        lblError.Visible = true;
                    }
                }
            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

        protected void BindData()
        {
            try
            {
                ListItem blankListItem = new ListItem();

                SPWeb web = SPContext.Current.Web;

                BLL.MaritalStateBLL maritalStateBLL = new CAFAM.WebPortal.BLL.MaritalStateBLL(web);

                rdlMaritalState.DataSource = maritalStateBLL.GetMaritalStateList();
                rdlMaritalState.DataTextField = "Title";
                rdlMaritalState.DataValueField = "Title";
                rdlMaritalState.DataBind();
                rdlMaritalState.Items[0].Selected = true;

                BLL.OccupationBLL occupationBLL = new CAFAM.WebPortal.BLL.OccupationBLL(web);
                ddlOccupation.DataSource = occupationBLL.GetOccupationList();
                ddlOccupation.DataTextField = "Title";
                ddlOccupation.DataValueField = "Title";
                ddlOccupation.DataBind();           

                BLL.CompensationFundBLL compensationFundBLL = new CAFAM.WebPortal.BLL.CompensationFundBLL(web);

                ddlCompensationFund.DataSource = compensationFundBLL.GetCompensationFundList();
                ddlCompensationFund.DataTextField = "Title";
                ddlCompensationFund.DataValueField = "Title";
                ddlCompensationFund.DataBind();
                ddlCompensationFund.Items.Insert(0, new ListItem("Ninguno", ""));

                BLL.EPSBLL ePSBLL = new CAFAM.WebPortal.BLL.EPSBLL(web);

                ddlEPS.DataSource = ePSBLL.GetEPSList();
                ddlEPS.DataTextField = "Title";
                ddlEPS.DataValueField = "Title";
                ddlEPS.DataBind();
                ddlEPS.Items.Insert(0, new ListItem("Ninguno", ""));

                BLL.IncomeLevelBLL incomeLevelBLL = new CAFAM.WebPortal.BLL.IncomeLevelBLL(web);

                ddlIncomeLevel.DataSource = incomeLevelBLL.GetIncomeLevelList();
                ddlIncomeLevel.DataTextField = "Title";
                ddlIncomeLevel.DataValueField = "Value";
                ddlIncomeLevel.DataBind();
                ddlIncomeLevel.Items.Insert(0, blankListItem);

                BLL.SecurityQuestionBLL securityQuestionBLL = new CAFAM.WebPortal.BLL.SecurityQuestionBLL(web);

                ddlSecurityQuestion.DataSource = securityQuestionBLL.GetSecurityQuestionList();
                ddlSecurityQuestion.DataTextField = "Title";
                ddlSecurityQuestion.DataValueField = "Title";
                ddlSecurityQuestion.DataBind();
                ddlSecurityQuestion.Items.Insert(ddlSecurityQuestion.Items.Count, new ListItem("Otra pregunta", ""));

                BLL.TopicOfInterestBLL topicOfInterestBLL = new BLL.TopicOfInterestBLL(web);

                chkListTopicOfInterest.DataSource = topicOfInterestBLL.GetTopicOfInterestList();
                chkListTopicOfInterest.DataTextField = "Title";
                chkListTopicOfInterest.DataValueField = "Title";
                chkListTopicOfInterest.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void AssignDataToControls()
        {
            try
            {
                if (!string.IsNullOrEmpty(Request.QueryString["IT"]))
                {
                    lblIdentificationType.Text = CAFAM.WebPortal.Commons.CryptographicService.Decrypt(Request.QueryString["IT"]);
                }
                if (!string.IsNullOrEmpty(Request.QueryString["IN"]))
                {
                    lblIdentificationNumber.Text = CAFAM.WebPortal.Commons.CryptographicService.Decrypt(Request.QueryString["IN"]);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void AssignDataToEntity()
        {
            try
            {
                int outInt;

                UserEntity.CreationDate = DateTime.Now;
                UserEntity.UserType = CAFAM.WebPortal.Entities.EnumUserType.No_Afiliado;
                UserEntity.FirstName = txtFirstName.Text;
                UserEntity.SecondName = txtSecondName.Text;
                UserEntity.FirstSurname = txtFirstSurname.Text;
                UserEntity.SecondSurname = txtSecondSurname.Text;
                UserEntity.IdentificationType = lblIdentificationType.Text;
                UserEntity.IdentificationNumber = lblIdentificationNumber.Text;
                WebUI.DateTimeCustomControl dateTimeCustomControl = (WebUI.DateTimeCustomControl)this.pnlBirthDate.FindControl("dateTimeCustomControl");
                if (dateTimeCustomControl != null)
                {
                    UserEntity.BirthDate = dateTimeCustomControl.Date;
                }
                UserEntity.MaritalState = rdlMaritalState.SelectedValue;
                UserEntity.Ocupattion = ddlOccupation.SelectedValue;
                UserEntity.CompensationFund = ddlCompensationFund.SelectedValue;
                UserEntity.Company = txtCompany.Text;
                UserEntity.Position = txtPosition.Text;
                UserEntity.PrivateEmail = txtPrivateEmail.Text;
                UserEntity.CompanyEmail = txtCompanyEmail.Text;
                WebUI.TelephoneControl telPrivate = (WebUI.TelephoneControl)pnlPrivateTel.FindControl("telPrivate");
                UserEntity.PrivateTel = telPrivate.Tel;
                WebUI.TelephoneControl telPrivateMobile = (WebUI.TelephoneControl)pnlPrivateMobile.FindControl("telPrivateMobile");
                 UserEntity.PrivateMobile = telPrivateMobile.Tel;
                WebUI.TelephoneControl telCompany = (WebUI.TelephoneControl)pnlCompanyTel.FindControl("telCompany");
                UserEntity.CompanyTel = telCompany.Tel ;
                UserEntity.TelExtension = txtTelExtension.Text;
                WebUI.AddressControl address = (WebUI.AddressControl)pnlAddress.FindControl("address");
                UserEntity.Address = address.Address;
                UserEntity.EPS = ddlEPS.SelectedValue;
                if (int.TryParse(txtChildrenQuantity.Text, out outInt))
                {
                    UserEntity.ChildrenQuantity = outInt;
                }
                else
                {
                    UserEntity.ChildrenQuantity = null;
                }
                UserEntity.IncomeLevel = ddlIncomeLevel.SelectedValue;
                UserEntity.UserName = string.Format("{0}:{1}", ConfigurationManager.AppSettings["ProviderName"], txtUserName.Text);
                UserEntity.Password = txtPass.Text;
                if (!string.IsNullOrEmpty(ddlSecurityQuestion.SelectedValue))
                {
                    UserEntity.SecurityQuestion = ddlSecurityQuestion.SelectedValue;
                }
                else
                {
                    UserEntity.SecurityQuestion = txtOtherSecurityQuestion.Text;
                }
                UserEntity.SecurityAnswer = txtSecurityAnswer.Text;
                int i = 0;
                foreach (ListItem lItem in chkListTopicOfInterest.Items)
                {
                    switch (i)
                    {
                        case 0:
                            UserEntity.TopicOfInterest.MarketSales = lItem.Selected;
                            break;
                        case 1:
                            UserEntity.TopicOfInterest.Recreation = lItem.Selected;
                            break;
                        case 2:
                            UserEntity.TopicOfInterest.Education = lItem.Selected;
                            break;
                        case 3:
                            UserEntity.TopicOfInterest.Home = lItem.Selected;
                            break;
                        case 4:
                            UserEntity.TopicOfInterest.Health = lItem.Selected;
                            break;
                        case 5:
                            UserEntity.TopicOfInterest.Subsidy = lItem.Selected;
                            break;
                        case 6:
                            UserEntity.TopicOfInterest.Credits = lItem.Selected;
                            break;
                    }
                    i++;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
