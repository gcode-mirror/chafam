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
    public class UserNotMemberEdit : System.Web.UI.Page
    {
        #region Controls
        protected Label lblError;
        protected HyperLink lnkGoHome;
        protected HtmlTable tblPrincipal;
        protected Label lblFirstName;
        protected Label lblSecondName;
        protected Label lblFirstSurname;
        protected Label lblSecondSurname;
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
        protected CheckBoxList chkListTopicOfInterest;
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
                AddTelControls();
                AddAddressControl();

                if (!IsPostBack)
                {
                    BindData();
                    if (string.IsNullOrEmpty(Request.QueryString["UserName"]))
                    {
                        AssignDataToControls(SPContext.Current.Web.CurrentUser.LoginName);;
                        SetTopicOfInterest();
                    }
                    else
                    {
                        string profile = Commons.CryptographicService.Decrypt(Request.QueryString["UserName"]);
                        if (!string.IsNullOrEmpty(profile))
                        {
                            AssignDataToControls(profile);
                            SetTopicOfInterest();
                        }
                        else
                        {
                            tblPrincipal.Visible = false;
                            lblError.Visible = true;
                            lblError.Text = "No se encuentra el usuario ";
                            lnkGoHome.Visible = true;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

        private void AddAddressControl()
        {
            try
            {
                WebUI.AddressControl address = new CAFAM.WebPortal.WebUI.AddressControl();
                address.ID = "address";
                address.ValidationGroup = "grpUserEdit";
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
                telPrivate.ValidationGroup = "grpUserEdit";
                telPrivate.ValidatorsCSSClass = "form_field_error_message";
                telPrivate.TextBoxCSSClass = "form_text";

                pnlPrivateTel.Controls.Add(telPrivate);

                WebUI.TelephoneControl telPrivateMobile = new CAFAM.WebPortal.WebUI.TelephoneControl();
                telPrivateMobile.ID = "telPrivateMobile";
                telPrivateMobile.Required = false;
                telPrivateMobile.ValidationGroup = "grpUserEdit";
                telPrivateMobile.ValidatorsCSSClass = "form_field_error_message";
                telPrivateMobile.TextBoxCSSClass = "form_text";

                pnlPrivateMobile.Controls.Add(telPrivateMobile);

                WebUI.TelephoneControl telCompany = new CAFAM.WebPortal.WebUI.TelephoneControl();
                telCompany.ID = "telCompany";
                telCompany.Required = false;
                telCompany.ValidationGroup = "grpUserEdit";
                telCompany.ValidatorsCSSClass = "form_field_error_message";
                telCompany.TextBoxCSSClass = "form_text";

                pnlCompanyTel.Controls.Add(telCompany);
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
                ddlIncomeLevel.Items.Insert(0, new ListItem());

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
                lblIdentificationType.Text = UserEntity.IdentificationType;
                lblIdentificationNumber.Text = UserEntity.IdentificationNumber;
                WebUI.DateTimeCustomControl dateTimeCustomControl = (WebUI.DateTimeCustomControl)this.pnlBirthDate.FindControl("dateTimeCustomControl");
                if (dateTimeCustomControl != null)
                {
                    dateTimeCustomControl.Date = UserEntity.BirthDate;
                }
                if(!string.IsNullOrEmpty(UserEntity.MaritalState))
                {
                    rdlMaritalState.SelectedValue = UserEntity.MaritalState;
                }
                ddlOccupation.SelectedValue = UserEntity.Ocupattion;
                if (!string.IsNullOrEmpty(UserEntity.CompensationFund))
                {
                    ddlCompensationFund.SelectedValue = UserEntity.CompensationFund;
                }
                txtCompany.Text = UserEntity.Company;
                txtPosition.Text = UserEntity.Position;
                txtPrivateEmail.Text = UserEntity.PrivateEmail;
                txtCompanyEmail.Text = UserEntity.CompanyEmail;
                WebUI.TelephoneControl telPrivate = (WebUI.TelephoneControl)pnlPrivateTel.FindControl("telPrivate");
                telPrivate.Tel = UserEntity.PrivateTel;
                WebUI.TelephoneControl telPrivateMobile = (WebUI.TelephoneControl)pnlPrivateMobile.FindControl("telPrivateMobile");
                telPrivateMobile.Tel = UserEntity.PrivateMobile;
                WebUI.TelephoneControl telCompany = (WebUI.TelephoneControl)pnlCompanyTel.FindControl("telCompany");
                telCompany.Tel = UserEntity.CompanyTel;
                txtTelExtension.Text = UserEntity.TelExtension;
                WebUI.AddressControl address = (WebUI.AddressControl)pnlAddress.FindControl("address");
                address.Address = UserEntity.Address;
                if (!string.IsNullOrEmpty(UserEntity.EPS))
                {
                    ddlEPS.SelectedValue = UserEntity.EPS;
                }
                if (UserEntity.ChildrenQuantity.HasValue)
                {
                    txtChildrenQuantity.Text = UserEntity.ChildrenQuantity.ToString();
                }
                if (!string.IsNullOrEmpty(UserEntity.IncomeLevel))
                {
                    ddlIncomeLevel.SelectedValue = UserEntity.IncomeLevel;
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
                UserEntity.CompanyTel = telCompany.Tel;
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

        private void SetTopicOfInterest()
        {
            int i = 0;
            foreach (ListItem lItem in chkListTopicOfInterest.Items)
            {
                switch (i)
                {
                    case 0:
                        lItem.Selected = UserEntity.TopicOfInterest.MarketSales;
                        break;
                    case 1:
                        lItem.Selected = UserEntity.TopicOfInterest.Recreation;
                        break;
                    case 2:
                        lItem.Selected = UserEntity.TopicOfInterest.Education;
                        break;
                    case 3:
                        lItem.Selected = UserEntity.TopicOfInterest.Home;
                        break;
                    case 4:
                        lItem.Selected = UserEntity.TopicOfInterest.Health;
                        break;
                    case 5:
                        lItem.Selected = UserEntity.TopicOfInterest.Subsidy;
                        break;
                    case 6:
                        lItem.Selected = UserEntity.TopicOfInterest.Credits;
                        break;
                }
                i++;
            }
        }
    }
}
