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
    public class UserCompanyNewAdmin : System.Web.UI.Page
    {
        #region Controls
        protected Label lblError;
        protected HyperLink lnkGoHome;
        protected HtmlTable tblPrincipal;
        protected TextBox txtNit;
        protected TextBox txtSubNIT;
        protected TextBox txtCompanyName;
        protected TextBox txtFirstName;
        protected TextBox txtSecondName;
        protected TextBox txtFirstSurname;
        protected TextBox txtSecondSurname;
        protected RadioButtonList rdIdentificationType;
        protected TextBox txtIdentificatioNumber;
        protected TextBox txtPosition;
        protected TextBox txtCompanyEmail;
        protected Panel pnlCompanyTel;
        protected TextBox txtTelExtension;
        protected Panel pnlCompanyMobile;
        protected TextBox txtPersonalManager;
        protected TextBox txtAuthorizedBy;
        protected Panel pnlAuthorizationDate;
        protected CheckBox chkAuthorizedToGetBasicData;
        protected CheckBox chkAuthorizedToGetContibutionData;
        protected CheckBox chkAuthorizedToGetMemberData;
        protected TextBox txtUserName;
        protected Button btnSave;
        #endregion


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
                CreateDatePickers();
                AddTelControl();

                if (!IsPostBack)
                {
                    BindData();
                } 
            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
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
                pnlAuthorizationDate.Controls.Add(dateTimeCustomControl);
            }
            catch (Exception ex)
            {
                throw ex;
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

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                SPWeb web = SPContext.Current.Web;
                BLL.UserBLL userBLL = new BLL.UserBLL(web);
                string message;

                Entities.User userEntity = AssignDataToEntity();
                if (userBLL.GetUserByIdentificationtAndCompanyCompanyUser(userEntity.IdentificationType, userEntity.IdentificationNumber, userEntity.NIT, userEntity.SubNIT) == null)
                {
                    if (!userBLL.CreateUser(userEntity, out message))
                    {
                        lblError.Text = message;
                    }
                    else
                    {
                        lblError.Text = "El proceso de registro ha finalizado exitosamente. ";
                        lblError.Visible = true;
                        lnkGoHome.Visible = true;
                        tblPrincipal.Visible = false;

                        Commons.EmailHelper emailHelper = new CAFAM.WebPortal.Commons.EmailHelper(SPContext.Current.Web);

                        //emailHelper.SendMailNewCompanyUserData(ConfigurationSettings.AppSettings["ContactNewUserCompanyFrom"], ConfigurationSettings.AppSettings["SMTPServer"], userEntity);
                        emailHelper.SendMailNewCompanyUserData(ConfigurationSettings.AppSettings["ContactNewUserCompanyFrom"], userEntity);
                    }
                }
                else
                {
                    lblError.Text = "Ya existe un usuario registrado para esta empresa. ";
                }
                lblError.Visible = true;

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
                SPWeb web = SPContext.Current.Web;

                BLL.IdentificationTypeBLL identificationTypeBLL = new CAFAM.WebPortal.BLL.IdentificationTypeBLL(web);

                rdIdentificationType.DataSource = identificationTypeBLL.GetIdentificationTypeList();
                rdIdentificationType.DataTextField = "Title";
                rdIdentificationType.DataValueField = "Title";
                rdIdentificationType.DataBind();
                rdIdentificationType.Items[0].Selected = true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Entities.User AssignDataToEntity()
        {
            try
            {

                Entities.User userEntity = new CAFAM.WebPortal.Entities.User();

                Random random = new Random();
                userEntity.Password = random.Next(11111111, 99999999).ToString();
                userEntity.CreationDate = DateTime.Now;
                userEntity.UserType = CAFAM.WebPortal.Entities.EnumUserType.Empresa;
                userEntity.NIT = txtNit.Text;
                userEntity.SubNIT = txtSubNIT.Text;
                userEntity.Company = txtCompanyName.Text;
                userEntity.FirstName = txtFirstName.Text;
                userEntity.SecondName = txtSecondName.Text;
                userEntity.FirstSurname = txtFirstSurname.Text;
                userEntity.SecondSurname = txtSecondSurname.Text;
                userEntity.IdentificationType = rdIdentificationType.SelectedValue;
                userEntity.IdentificationNumber = txtIdentificatioNumber.Text;
                userEntity.Position = txtPosition.Text;
                userEntity.CompanyEmail = txtCompanyEmail.Text;
                WebUI.TelephoneControl telCompany = (WebUI.TelephoneControl)pnlCompanyTel.FindControl("telCompany");
                userEntity.CompanyTel = telCompany.Tel;
                userEntity.TelExtension = txtTelExtension.Text;
                WebUI.TelephoneControl telCompanyMobile = (WebUI.TelephoneControl)pnlCompanyMobile.FindControl("telCompanyMobile");
                userEntity.CompanyMobile = telCompanyMobile.Tel;
                userEntity.AuthorizedBy = txtAuthorizedBy.Text;
                WebUI.DateTimeCustomControl dateTimeCustomControl = (WebUI.DateTimeCustomControl)this.pnlAuthorizationDate.FindControl("dateTimeCustomControl");
                if (dateTimeCustomControl != null)
                {
                    userEntity.BirthDate = dateTimeCustomControl.Date;
                }
                    userEntity.AuthorizedToGetBasicData = chkAuthorizedToGetBasicData.Checked;
                    userEntity.AuthorizedToGetContibutionData = chkAuthorizedToGetContibutionData.Checked;
                    userEntity.AuthorizedToGetMemberData = chkAuthorizedToGetMemberData.Checked;
                userEntity.UserName = string.Format("{0}:{1}", ConfigurationManager.AppSettings["ProviderName"], txtUserName.Text);

                return userEntity;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
