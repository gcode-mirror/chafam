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
using Microsoft.Office.Server;
using Microsoft.Office.Server.UserProfiles;
using System.Collections;
using System.Collections.Generic;

namespace CAFAM.WebPortal.User
{
    public class UserList : System.Web.UI.Page
    {
        #region Controls
        protected Label lblError;
        protected Label lblConfirmacion;
        protected TextBox txtUserNameSearch;
        protected TextBox txtUserSurenameSearch;
        protected DropDownList ddlIdType;
        protected TextBox txtIdNumSearch;
        protected TextBox txtAudienceSearch;
        protected TextBox txtAgeSearch;
        protected TextBox txtAccountName;
        protected TextBox txtNitSearch;
        protected TextBox txtSubNitSearch;
        protected TextBox txtCompanySearch;
        protected DropDownList ddlUserType;
        protected Panel pnlCreationDateSearch;
        protected Button btnUserSearchButton;
        protected GridView grUserdList;
        protected HtmlTable tblEliminacion;
        protected LinkButton btnSi;
        protected LinkButton btnNo;
        #endregion


        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                lblError.Visible = false;
                tblEliminacion.Visible = false;
                CreateDatePickers();

                if (!IsPostBack)
                {
                    BindData();
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
                dateTimeCustomControl.ValidatorsCSSClass = "form_field_error_message";
                dateTimeCustomControl.AjaxFunctionality = true;
                dateTimeCustomControl.LessOrEqualThanNow = true;
                pnlCreationDateSearch.Controls.Add(dateTimeCustomControl);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected override void OnInit(EventArgs e)
        {
            btnUserSearchButton.Click += new EventHandler(btnUserSearchButton_Click);
            btnSi.Command += new CommandEventHandler(btnSi_Command);
            btnNo.Click += new EventHandler(btnNo_Click);
            grUserdList.PageIndexChanging += new GridViewPageEventHandler(grUserdList_PageIndexChanging);
        }

        protected void grUserdList_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
           setGrid(e.NewPageIndex);
        }

        protected void BindData()
        {
            try
            {
                SPWeb web = SPContext.Current.Web;

                BLL.IdentificationTypeBLL idTypeBLL = new CAFAM.WebPortal.BLL.IdentificationTypeBLL(web);
                DataSet idTypeListDS = idTypeBLL.GetIdentificationTypeList();

                ListItem blankListItem = new ListItem();

                ddlIdType.DataSource = idTypeListDS;
                ddlIdType.DataTextField = "Title";
                ddlIdType.DataValueField = "Title";
                ddlIdType.DataBind();
                ddlIdType.Items.Insert(0, blankListItem);

                ddlUserType.Items.Insert(0, blankListItem);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        protected void btnUserSearchButton_Click(object sender, EventArgs e)
        {
            try
            {
                setGrid(null);

            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

        protected void btnDelete_OnCommand(object sender, CommandEventArgs e)
        {
            try
            {
                btnSi.CommandArgument = e.CommandArgument.ToString();
                tblEliminacion.Visible = true;
            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

        protected void btnSi_Command(object sender, CommandEventArgs e)
        {
            try
            {
                SPWeb web = SPContext.Current.Web;
                
                BLL.UserBLL userBLL = new CAFAM.WebPortal.BLL.UserBLL(web);

                userBLL.DeleteUser(e.CommandArgument.ToString());

                lblError.Text = "El usuario se elimino con exito";
                tblEliminacion.Visible = false;

                setGrid(null);
            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }

        }

        protected void btnNo_Click(object sender, EventArgs e)
        {
            try
            {               
               
            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

        public string GenerateModifyURL(string userName, string userTypeString)
        {
            try
            {
                Entities.EnumUserType userType = (Entities.EnumUserType)Enum.Parse(typeof(Entities.EnumUserType), userTypeString);

                string returnURL = string.Empty;

                switch ((Entities.EnumUserType)userType)
                {
                    case CAFAM.WebPortal.Entities.EnumUserType.Afiliado:
                        {
                            returnURL = string.Format("UserEdit.aspx?UserName={0}", Server.UrlEncode(Commons.CryptographicService.Encrypt(userName)));
                            break;
                        }
                    case CAFAM.WebPortal.Entities.EnumUserType.Empresa:
                        {
                            returnURL = string.Format("UserCompanyEdit.aspx?UserName={0}", Server.UrlEncode(Commons.CryptographicService.Encrypt(userName)));
                            break;
                        }
                    case CAFAM.WebPortal.Entities.EnumUserType.No_Afiliado:
                        {
                            returnURL = string.Format("UserNotMemberEdit.aspx?UserName={0}", Server.UrlEncode(Commons.CryptographicService.Encrypt(userName)));
                            break;
                        }
                }

                return returnURL;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void setGrid(int? index)
        {
            try
            {
                SPWeb web = SPContext.Current.Web;

                BLL.UserBLL userBLL = new CAFAM.WebPortal.BLL.UserBLL(web);

                DateTime date1 = DateTime.MinValue;
                DateTime date2 = DateTime.MinValue;

                if (!string.IsNullOrEmpty(txtAgeSearch.Text))
                {

                    DateTime Now = DateTime.Today;
                    int intOut = 0;

                    if (!int.TryParse("-" + txtAgeSearch.Text, out intOut))
                    {
                        throw new Exception("Edad Invalida");
                    }

                    date1 = Now.AddYears(intOut);
                    date2 = date1.AddYears( - 1);
                }

                DateTime? creationDate = ((WebUI.DateTimeCustomControl)pnlCreationDateSearch.FindControl("dateTimeCustomControl")).Date;

                List<Entities.User> userSPList = userBLL.GetFilterListUsers(txtUserNameSearch.Text, txtUserSurenameSearch.Text, ddlIdType.SelectedValue,
                    txtIdNumSearch.Text, txtAudienceSearch.Text, date1, date2, txtAccountName.Text, txtNitSearch.Text, txtSubNitSearch.Text,
                    txtCompanySearch.Text, ddlUserType.SelectedValue, (creationDate != null)? creationDate.ToString(): string.Empty);

                grUserdList.DataSource = userSPList;

                if (index.HasValue)
                {
                    int i = int.Parse(index.ToString());
                    grUserdList.PageIndex = i;
                }
                else
                {
                    grUserdList.PageIndex = 0;
                }
                
                grUserdList.DataBind();

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}