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
    public class UserCompanyEdit : System.Web.UI.Page
    {
        #region Controls
        protected Label lblError;
        protected HyperLink lnkGoHome;
        protected HtmlTable tblPrincipal;
        protected Label lblFirstName;
        protected Label lblSecondName;
        protected Label lblFirstSurname;
        protected Label lblSecondSurname;
        protected Label lblPosition;
        protected TextBox txtCompanyEmail;
        protected Panel pnlCompanyTel;
        protected TextBox txtTelExtension;
        protected Panel pnlCompanyMobile;
        protected HtmlTableRow trAuthorizedBy;
        protected HtmlTableRow trAuthorizationDate;
        protected HtmlTableRow trAuthorizedToGetBasicData;
        protected HtmlTableRow trAuthorizedToGetContibutionData;
        protected HtmlTableRow trAuthorizedToGetMemberData;       
        protected TextBox txtAuthorizedBy;
        protected Panel pnlAuthorizationDate;
        protected CheckBox chkAuthorizedToGetMemberData;
        protected CheckBox chkAuthorizedToGetBasicData;
        protected CheckBox chkAuthorizedToGetContibutionData;
        protected Button btnModify;
        #endregion

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
                btnModify.Click += new EventHandler(btnModify_Click);
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
                    bool userFound = false;
                    if (string.IsNullOrEmpty(Request.QueryString["UserName"]))
                    {
                        AssignDataToControls(SPContext.Current.Web.CurrentUser.LoginName);
                        userFound = true;
                    }
                    else
                    {
                        string profile = Commons.CryptographicService.Decrypt(Request.QueryString["UserName"]);
                        if (!string.IsNullOrEmpty(profile))
                        {
                            AssignDataToControls(profile);
                            userFound = true;
                        }
                        else
                        {
                            tblPrincipal.Visible = false;
                            lblError.Visible = true;
                            lblError.Text = "No se encuentra el usuario ";
                            lnkGoHome.Visible = true;
                        }
                    }
                    if (userFound)
                    {
                        SetControlsVisibility();
                    }
                }
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
                telCompany.Required =true;
                telCompany.ValidationGroup = "grpUserEdit";
                telCompany.ValidatorsCSSClass = "form_field_error_message";
                telCompany.TextBoxCSSClass = "form_text";

                pnlCompanyTel.Controls.Add(telCompany);

                WebUI.TelephoneControl telCompanyMobile = new CAFAM.WebPortal.WebUI.TelephoneControl();
                telCompanyMobile.ID = "telCompanyMobile";
                telCompanyMobile.Required = false;
                telCompanyMobile.ValidationGroup = "grpUserEdit";
                telCompanyMobile.ValidatorsCSSClass = "form_field_error_message";
                telCompanyMobile.TextBoxCSSClass = "form_text";

                pnlCompanyMobile.Controls.Add(telCompanyMobile);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void SetControlsVisibility()
        {
            try
            {
                SPUser spUser = SPContext.Current.Web.CurrentUser;

                if (!spUser.IsSiteAdmin)
                {
                    trAuthorizedBy.Visible = false;
                    trAuthorizationDate.Visible = false;
                    trAuthorizedToGetBasicData.Visible = false;
                    trAuthorizedToGetContibutionData.Visible = false;
                    trAuthorizedToGetMemberData.Visible = false;
                }
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
                dateTimeCustomControl.ValidationGroup = "grpUserEdit";
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

        protected void btnModify_Click(object sender, EventArgs e)
        {
            try
            {
                SPWeb web = SPContext.Current.Web;

                AssignDataToEntity();
                BLL.UserBLL userBLL = new BLL.UserBLL(web);
                userBLL.ModifyUser(UserEntity);
                lblError.Text = "Los cambios fueron guardados con éxito. ";
                lblError.Visible = true;
                lnkGoHome.Visible = true;
            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

        public void AssignDataToControls(string profile)
        {
            try
            {
                SPWeb web = SPContext.Current.Web;

                BLL.UserBLL userBLL = new CAFAM.WebPortal.BLL.UserBLL(web);
                UserEntity = userBLL.GetUser(profile);

                lblFirstName.Text = UserEntity.FirstName;
                lblSecondName.Text = UserEntity.SecondName;
                lblFirstSurname.Text = UserEntity.FirstSurname;
                lblSecondSurname.Text = UserEntity.SecondSurname;
                lblPosition.Text = UserEntity.Position;
                txtCompanyEmail.Text = UserEntity.CompanyEmail;
                WebUI.TelephoneControl telCompany = (WebUI.TelephoneControl)pnlCompanyTel.FindControl("telCompany");
                telCompany.Tel = UserEntity.CompanyTel;
                txtTelExtension.Text = UserEntity.TelExtension;
                WebUI.TelephoneControl telCompanyMobile = (WebUI.TelephoneControl)pnlCompanyMobile.FindControl("telCompanyMobile");
                telCompanyMobile.Tel = UserEntity.CompanyMobile;
                txtAuthorizedBy.Text = UserEntity.AuthorizedBy;
                WebUI.DateTimeCustomControl dateTimeCustomControl = (WebUI.DateTimeCustomControl)this.pnlAuthorizationDate.FindControl("dateTimeCustomControl");
                if (dateTimeCustomControl != null)
                {
                    dateTimeCustomControl.Date = UserEntity.BirthDate;
                }
                chkAuthorizedToGetBasicData.Checked = UserEntity.AuthorizedToGetBasicData;
                chkAuthorizedToGetContibutionData.Checked = UserEntity.AuthorizedToGetContibutionData;
                chkAuthorizedToGetMemberData.Checked = UserEntity.AuthorizedToGetMemberData;
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

                UserEntity.CompanyEmail = txtCompanyEmail.Text;
                WebUI.TelephoneControl telCompany = (WebUI.TelephoneControl)pnlCompanyTel.FindControl("telCompany");
                UserEntity.CompanyTel = telCompany.Tel;
                UserEntity.TelExtension = txtTelExtension.Text;
                WebUI.TelephoneControl telCompanyMobile = (WebUI.TelephoneControl)pnlCompanyMobile.FindControl("telCompanyMobile");
                UserEntity.CompanyMobile = telCompanyMobile.Tel;
                UserEntity.AuthorizedBy = txtAuthorizedBy.Text;
                WebUI.DateTimeCustomControl dateTimeCustomControl = (WebUI.DateTimeCustomControl)this.pnlAuthorizationDate.FindControl("dateTimeCustomControl");
                if (dateTimeCustomControl != null)
                {
                    UserEntity.BirthDate = dateTimeCustomControl.Date;
                }
                UserEntity.AuthorizedToGetBasicData = chkAuthorizedToGetBasicData.Checked;
                UserEntity.AuthorizedToGetContibutionData = chkAuthorizedToGetContibutionData.Checked;
                UserEntity.AuthorizedToGetMemberData = chkAuthorizedToGetMemberData.Checked;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
