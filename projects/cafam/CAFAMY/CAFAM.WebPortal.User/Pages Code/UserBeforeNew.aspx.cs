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
using AjaxControlToolkit;
using System.Collections.Generic;

namespace CAFAM.WebPortal.User
{
    public class UserBeforeNew : System.Web.UI.Page
    {
        #region Controls
        protected Label lblError;
        protected HyperLink lnkCommon;
        protected HtmlTable tblContact;
        protected TextBox txtContact;
        protected Button btnSend;
        protected HtmlTable tblIdentification;
        protected RadioButtonList rdIdentificationType;
        protected TextBox txtIdentificationNumber;
        protected Button btnVerify;
        protected HtmlTable tblQuestions;
        protected Label lblQuestion1;
        protected Panel pnlAnswer1;
        protected Label lblQuestion2;
        protected Panel pnlAnswer2;
        protected Label lblQuestion3;
        protected Panel pnlAnswer3;
        protected Label lblQuestion4;
        protected Panel pnlAnswer4;
        protected Label lblQuestion5;
        protected HtmlTableRow trQuestion5;
        protected Panel pnlAnswer5;
        protected HtmlTableRow trQuestion6;
        protected Label lblQuestion6;
        protected Panel pnlAnswer6;
        protected Button btnVerifyQuestions;
        #endregion

        private SubsidiosWS.AffiliatedUser UserSubsdy
        {
            get
            {
                SubsidiosWS.AffiliatedUser userSubsidy = null;

                if (ViewState["User"] != null)
                {
                    userSubsidy = (SubsidiosWS.AffiliatedUser)ViewState["User"];
                }

                return userSubsidy;
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
                btnVerify.Click += new EventHandler(btnVerify_Click);
                btnVerifyQuestions.Click += new EventHandler(btnVerifyQuestions_Click);
                btnSend.Click += new EventHandler(btnSend_Click);
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

                if (!IsPostBack)
                {
                    BindData();
                }

                RegenerateControls();
            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

        private void BindData()
        {
            try
            {
                SPWeb web = SPContext.Current.Web;

                BLL.IdentificationTypeBLL identificationTypeBLL = new CAFAM.WebPortal.BLL.IdentificationTypeBLL(web);

                rdIdentificationType.DataSource = identificationTypeBLL.GetIdentificationTypeList();
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

        protected void btnVerifyQuestions_Click(object sender, EventArgs e)
        {
            try
            {
                bool validAnswers = false;

                if (UserSubsdy.ClaseAfiliado == "1")
                {
                    switch (UserSubsdy.TipoAfiliado)
                    {
                        case "D":
                            validAnswers = ValidateDependantAnswers();
                            break;
                        case "P":
                            validAnswers = ValidatePensionateAnswers();
                            break;
                        case "I":
                            validAnswers = ValidateIndependantAnswers();
                            break;
                    }
                }
                else
                {
                    validAnswers = ValidateSpouseAnswers();
                }

                if (validAnswers)
                {
                    Response.Redirect(string.Format("UserNew.aspx?IT={0}&IN={1}", Server.UrlEncode(Commons.CryptographicService.Encrypt(rdIdentificationType.SelectedItem.Text))
                            , Server.UrlEncode(Commons.CryptographicService.Encrypt(txtIdentificationNumber.Text))), false);
                }
                else
                {
                    lblError.Visible = true;
                    lblError.Text = "Sus respuestas a las preguntas de identificación difieren con la información que tenemos. Si desea contactarse con Cafam por favor esriba un mensaje debajo y envíelo";

                    tblQuestions.Visible = false;
                    tblContact.Visible = true;
                }
            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

        protected void btnVerify_Click(object sender, EventArgs e)
        {
            try
            {
                int outInt;

                SPWeb web = SPContext.Current.Web;

                BLL.UserBLL userBLL = new CAFAM.WebPortal.BLL.UserBLL(web);

                Entities.User userSP = userBLL.GetUserByIdentificationNotCompany(rdIdentificationType.SelectedItem.Text, txtIdentificationNumber.Text);

                if (userSP == null)
                {
                    tblIdentification.Visible = false;

                    SubsidiosWS.UserRequest userInfo = new CAFAM.WebPortal.User.SubsidiosWS.UserRequest();
                    outInt = int.Parse(rdIdentificationType.SelectedValue);
                    userInfo.TipoDocumento = outInt;
                    userInfo.NroDocumento = txtIdentificationNumber.Text;

                    SubsidiosWS.WebService_Globant_PortalWeb_BiztalkSubsidios webService = new CAFAM.WebPortal.User.SubsidiosWS.WebService_Globant_PortalWeb_BiztalkSubsidios();

                    webService.Url = ConfigurationManager.AppSettings["WSSubsidiosURL"];

                    UserSubsdy = webService.GetAffiliatedUser(userInfo); ;

                    if (string.IsNullOrEmpty(UserSubsdy.ClaseAfiliado))
                    {
                        lblError.Visible = true;
                        lblError.Text = "Usted no está registrado como usuario Afiliado a Cafam. Si desea afiliarse por favor diríjase ";
                        lnkCommon.Visible = true;
                        lnkCommon.Text = "aquí";
                        lnkCommon.NavigateUrl = string.Format("UserNotMemberNew.aspx?IT={0}&IN={1}", Server.UrlEncode(Commons.CryptographicService.Encrypt(rdIdentificationType.SelectedItem.Text))
                            , Server.UrlEncode(Commons.CryptographicService.Encrypt(txtIdentificationNumber.Text)));
                    }
                    else
                    {
                        tblQuestions.Visible = true;

#if DEBUG
                        lblError.Visible = true;
                        lblError.Text = "Tipo de Usuario: " + UserSubsdy.TipoAfiliado + "<br />";
                        lblError.Text += "Fecha De Nacimiento: " + UserSubsdy.FechaNacimiento + "<br />";
                        lblError.Text += "Numero Telefonico: " + UserSubsdy.Telefono + "<br />";
                        lblError.Text += "Monto de Ingresos: " + UserSubsdy.CategoriaSalarial + "<br />";
                        lblError.Text += "Nombre de Afiliado: " + UserSubsdy.PrimerNombre.ToUpper() + UserSubsdy.PrimerApellido.ToUpper() + "<br />";
                        lblError.Text += "Numero de Afiliacion Principal: " + UserSubsdy.IdentificacionPrincipal.Nro;
#endif

                        if (UserSubsdy.ClaseAfiliado == "1")
                        {
                            switch (UserSubsdy.TipoAfiliado)
                            {
                                case "D":
                                    lblQuestion1.Text = "¿Cuál de los siguientes nombres corresponde a la última empresa donde labora?";
                                    lblQuestion2.Text = "¿Cuál es su fecha de nacimiento?";
                                    lblQuestion3.Text = "¿Con cuál de estas direcciones tiene o ha tenido relación?";
                                    lblQuestion4.Text = "¿Con cuál de estos teléfonos tiene o ha tenido relación?";
                                    lblQuestion5.Text = "¿Cuál de las siguientes es su Fecha de ingreso a su empresa?";
                                    GenerateAnswerControlsForDependant();
                                    break;
                                case "P":
                                    lblQuestion1.Text = "¿Cuál de los siguientes nombres corresponde a la última empresa donde laboró?";
                                    lblQuestion2.Text = "¿Cuál es su fecha de nacimiento?";
                                    lblQuestion3.Text = "¿Con cuál de estas direcciones tiene o ha tenido relación?";
                                    lblQuestion4.Text = "¿Con cuál de estos teléfonos tiene o ha tenido relación?";
                                    lblQuestion5.Text = "¿Cuál es la fecha en la cual se pensionó?";
                                    GenerateAnswerControlsForPensioner();
                                    break;
                                case "I":
                                    lblQuestion1.Text = "¿Cuál es su fecha de nacimiento?";
                                    lblQuestion2.Text = "¿Con cuál de estas direcciones tiene o ha tenido relación?";
                                    lblQuestion3.Text = "¿Con cuál de estos teléfonos tiene o ha tenido relación?";
                                    lblQuestion4.Text = "¿Cuál es la fecha en que se afilió?";
                                    trQuestion5.Visible = false;
                                    GenerateAnswerControlsForIndependant();
                                    break;
                            }
                        }
                        else
                        {
                            lblQuestion1.Text = "¿Cuál es la empresa donde labora el afiliado?";
                            lblQuestion2.Text = "¿Cuál es el número de identificación del afiliado?";
                            lblQuestion3.Text = "¿Cuál es la fecha de nacimiento del Afiliado Principal o  Cotizante?";
                            lblQuestion4.Text = "¿Con cuál de estas direcciones tiene o ha tenido relación?";
                            lblQuestion5.Text = "¿Con cuál de estos teléfonos tiene o ha tenido relación?";

                            GenerateAnswerControlsForSpouse();
                        }
                    }
                }
                else
                {
                    lblError.Text = "Ya existe un usuario registrado para el documento ingresado. Si olvidó su contraseña puede solicitarla ";
                    lnkCommon.Visible = true;
                    lnkCommon.Text = "aqui";
                    lnkCommon.NavigateUrl = "~/_layouts/RestorePassword.aspx";
                    lblError.Visible = true;
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

                emailHelper.SendContactMailNewMemberUser(ConfigurationSettings.AppSettings["ContactNewUserTo"], ConfigurationSettings.AppSettings["ContactNewUserFrom"], txtContact.Text, UserSubsdy.PrimerNombre + " " + UserSubsdy.PrimerApellido);

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

        #region Generation of Answer Controls
        private void GenerateAnswerControlsForDependant()
        {
            try
            {
                DateTime dateTime;
                Table tbl = new Table();
                TableCell cell = new TableCell();
                TableRow row = new TableRow();
                SPWeb web = SPContext.Current.Web;

                ListItem realListItem = null;

                BLL.FalseCompanyBLL falseCompanyBLL = new CAFAM.WebPortal.BLL.FalseCompanyBLL(web);
                DropDownList ddlCompany = new DropDownList();

                ddlCompany.ID = "ddlCompany";
                ddlCompany.CssClass = "form_Select";
                ddlCompany.DataSource = falseCompanyBLL.GetFalseCompanyList();
                ddlCompany.DataTextField = "Title";
                ddlCompany.DataValueField = "Title";
                ddlCompany.DataBind();

                realListItem = new ListItem();
                realListItem.Text = UserSubsdy.NombreORazonSocial;
                realListItem.Value = UserSubsdy.NombreORazonSocial;

                InsertRealValueInDropDownList(realListItem, ddlCompany);

                pnlAnswer1.Controls.Add(ddlCompany);

                DropDownList ddlBirthDate = new DropDownList();
                ddlBirthDate.ID = "ddlBirthDate";
                ddlBirthDate.CssClass = "form_Select";
                ddlBirthDate.DataSource = GetFakeDateList();
                ddlBirthDate.DataTextField = "Text";
                ddlBirthDate.DataValueField = "Date";
                ddlBirthDate.DataBind();

                realListItem = new ListItem();
                if (!string.IsNullOrEmpty(UserSubsdy.FechaNacimiento))
                {
                    realListItem.Text = DateTime.Parse(GetDate(UserSubsdy.FechaNacimiento).ToString()).ToString("dd/MM/yyyy"); ;
                    realListItem.Value = UserSubsdy.FechaNacimiento;
                }

                InsertRealValueInDropDownList(realListItem, ddlBirthDate);

                pnlAnswer2.Controls.Add(ddlBirthDate);

                BLL.FalseAddressBLL falseAddressBLL = new CAFAM.WebPortal.BLL.FalseAddressBLL(web);
                DropDownList ddlAddress = new DropDownList();

                ddlAddress.ID = "ddlAddress";
                ddlAddress.CssClass = "form_select";
                ddlAddress.DataSource = falseAddressBLL.GetFalseAddressList();
                ddlAddress.DataTextField = "Title";
                ddlAddress.DataValueField = "Title";
                ddlAddress.DataBind();

                realListItem = new ListItem();
                realListItem.Text = UserSubsdy.DomicilioTrabajador;
                realListItem.Value = UserSubsdy.DomicilioTrabajador;

                InsertRealValueInDropDownList(realListItem, ddlAddress);

                pnlAnswer3.Controls.Add(ddlAddress);

                DropDownList ddlTel = new DropDownList();

                ddlTel.ID = "ddlTel";
                ddlTel.CssClass = "form_select";
                ddlTel.DataSource = GetFakeTelList();
                ddlTel.DataBind();

                realListItem = new ListItem();
                realListItem.Text = UserSubsdy.Telefono;
                realListItem.Value = UserSubsdy.Telefono;

                InsertRealValueInDropDownList(realListItem, ddlTel);

                pnlAnswer4.Controls.Add(ddlTel);

                DropDownList ddlStartWorking= new DropDownList();
                ddlStartWorking.ID = "ddlStartWorking";
                ddlStartWorking.CssClass = "form_Select";
                ddlStartWorking.DataSource = GetFakeDateList();
                ddlStartWorking.DataTextField = "Text";
                ddlStartWorking.DataValueField = "Date";
                ddlStartWorking.Enabled = false;
                ddlStartWorking.DataBind();

                pnlAnswer5.Controls.Add(ddlStartWorking);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void GenerateAnswerControlsForPensioner()
        {
            try
            {
                DateTime dateTime;
                Table tbl = new Table();
                TableCell cell = new TableCell();
                TableRow row = new TableRow();
                SPWeb web = SPContext.Current.Web;

                ListItem realListItem = null;

                BLL.FalseCompanyBLL falseCompanyBLL = new CAFAM.WebPortal.BLL.FalseCompanyBLL(web);
                DropDownList ddlCompany = new DropDownList();

                ddlCompany.ID = "ddlCompany";
                ddlCompany.CssClass = "form_select";
                ddlCompany.DataSource = falseCompanyBLL.GetFalseCompanyList();
                ddlCompany.DataTextField = "Title";
                ddlCompany.DataValueField = "Title";
                ddlCompany.DataBind();

                realListItem = new ListItem();
                realListItem.Text = UserSubsdy.NombreORazonSocial;
                realListItem.Value = UserSubsdy.NombreORazonSocial;

                InsertRealValueInDropDownList(realListItem, ddlCompany);

                pnlAnswer1.Controls.Add(ddlCompany);

                DropDownList ddlBirthDate = new DropDownList();
                ddlBirthDate.ID = "ddlBirthDate";
                ddlBirthDate.CssClass = "form_Select";
                ddlBirthDate.DataSource = GetFakeDateList();
                ddlBirthDate.DataTextField = "Text";
                ddlBirthDate.DataValueField = "Date";
                ddlBirthDate.DataBind();

                realListItem = new ListItem();
                if (!string.IsNullOrEmpty(UserSubsdy.FechaNacimiento))
                {
                    realListItem.Text = DateTime.Parse(GetDate(UserSubsdy.FechaNacimiento).ToString()).ToString("dd/MM/yyyy"); ;
                    realListItem.Value = UserSubsdy.FechaNacimiento;
                }

                InsertRealValueInDropDownList(realListItem, ddlBirthDate);

                pnlAnswer2.Controls.Add(ddlBirthDate);

                BLL.FalseAddressBLL falseAddressBLL = new CAFAM.WebPortal.BLL.FalseAddressBLL(web);
                DropDownList ddlAddress = new DropDownList();

                ddlAddress.ID = "ddlAddress";
                ddlAddress.CssClass = "form_select";
                ddlAddress.DataSource = falseAddressBLL.GetFalseAddressList();
                ddlAddress.DataTextField = "Title";
                ddlAddress.DataValueField = "Title";
                ddlAddress.DataBind();

                realListItem = new ListItem();
                realListItem.Text = UserSubsdy.DomicilioTrabajador;
                realListItem.Value = UserSubsdy.DomicilioTrabajador;

                InsertRealValueInDropDownList(realListItem, ddlAddress);

                pnlAnswer3.Controls.Add(ddlAddress);

                DropDownList ddlTel = new DropDownList();

                ddlTel.ID = "ddlTel";
                ddlTel.CssClass = "form_select";
                ddlTel.DataSource = GetFakeTelList();
                ddlTel.DataBind();

                realListItem = new ListItem();
                realListItem.Text = UserSubsdy.Telefono;
                realListItem.Value = UserSubsdy.Telefono;

                InsertRealValueInDropDownList(realListItem, ddlTel);

                pnlAnswer4.Controls.Add(ddlTel);

                DropDownList ddPensionDate = new DropDownList();
                ddPensionDate.ID = "ddPensionDate";
                ddPensionDate.CssClass = "form_Select";
                ddPensionDate.DataSource = GetFakeDateList();
                ddPensionDate.DataTextField = "Text";
                ddPensionDate.DataValueField = "Date";
                ddPensionDate.Enabled = false;
                ddPensionDate.DataBind();

                pnlAnswer5.Controls.Add(ddPensionDate);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void GenerateAnswerControlsForIndependant()
        {
            try
            {
                DateTime dateTime;
                Table tbl = new Table();
                TableCell cell = new TableCell();
                TableRow row = new TableRow();
                SPWeb web = SPContext.Current.Web;

                ListItem realListItem = null;

                DropDownList ddlBirthDate = new DropDownList();
                ddlBirthDate.ID = "ddlBirthDate";
                ddlBirthDate.CssClass = "form_Select";
                ddlBirthDate.DataSource = GetFakeDateList();
                ddlBirthDate.DataTextField = "Text";
                ddlBirthDate.DataValueField = "Date";
                ddlBirthDate.DataBind();

                realListItem = new ListItem();
                if (!string.IsNullOrEmpty(UserSubsdy.FechaNacimiento))
                {
                    realListItem.Text = DateTime.Parse(GetDate(UserSubsdy.FechaNacimiento).ToString()).ToString("dd/MM/yyyy"); ;
                    realListItem.Value = UserSubsdy.FechaNacimiento;
                }

                InsertRealValueInDropDownList(realListItem, ddlBirthDate);

                pnlAnswer1.Controls.Add(ddlBirthDate);

                BLL.FalseAddressBLL falseAddressBLL = new CAFAM.WebPortal.BLL.FalseAddressBLL(web);
                DropDownList ddlAddress = new DropDownList();

                ddlAddress.ID = "ddlAddress";
                ddlAddress.CssClass = "form_select";
                ddlAddress.DataSource = falseAddressBLL.GetFalseAddressList();
                ddlAddress.DataTextField = "Title";
                ddlAddress.DataValueField = "Title";
                ddlAddress.DataBind();

                realListItem = new ListItem();
                realListItem.Text = UserSubsdy.DomicilioTrabajador;
                realListItem.Value = UserSubsdy.DomicilioTrabajador;

                InsertRealValueInDropDownList(realListItem, ddlAddress);

                pnlAnswer2.Controls.Add(ddlAddress);

                DropDownList ddlTel = new DropDownList();

                ddlTel.ID = "ddlTel";
                ddlTel.CssClass = "form_select";
                ddlTel.DataSource = GetFakeTelList();
                ddlTel.DataBind();

                realListItem = new ListItem();
                realListItem.Text = UserSubsdy.Telefono;
                realListItem.Value = UserSubsdy.Telefono;

                InsertRealValueInDropDownList(realListItem, ddlTel);
                pnlAnswer3.Controls.Add(ddlTel);

                DropDownList ddlMemberDate = new DropDownList();
                ddlMemberDate.ID = "ddlMemberDate";
                ddlMemberDate.CssClass = "form_Select";
                ddlMemberDate.DataSource = GetFakeDateList();
                ddlMemberDate.DataTextField = "Text";
                ddlMemberDate.DataValueField = "Date";
                ddlMemberDate.Enabled = false;
                ddlMemberDate.DataBind();

                pnlAnswer4.Controls.Add(ddlMemberDate);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void GenerateAnswerControlsForSpouse()
        {
            try
            {
                DateTime dateTime;
                Table tbl = new Table();
                TableCell cell = new TableCell();
                TableRow row = new TableRow();
                SPWeb web = SPContext.Current.Web;

                ListItem realListItem = null;

                BLL.FalseCompanyBLL falseCompanyBLL = new CAFAM.WebPortal.BLL.FalseCompanyBLL(web);
                DropDownList ddlMemberCompany = new DropDownList();

                ddlMemberCompany.ID = "ddlMemberCompany";
                ddlMemberCompany.CssClass = "form_select";
                ddlMemberCompany.DataSource = falseCompanyBLL.GetFalseCompanyList();
                ddlMemberCompany.DataTextField = "Title";
                ddlMemberCompany.DataValueField = "Title";
                ddlMemberCompany.DataBind();

                realListItem = new ListItem();
                realListItem.Text = UserSubsdy.NombreORazonSocial;
                realListItem.Value = UserSubsdy.NombreORazonSocial;

                InsertRealValueInDropDownList(realListItem, ddlMemberCompany);

                pnlAnswer1.Controls.Add(ddlMemberCompany);

                TextBox txtMemberIdentificationNumber = new TextBox();
                txtMemberIdentificationNumber.CssClass = "form_text";
                txtMemberIdentificationNumber.ID = "txtMemberIdentificationNumber";

                cell.Controls.Add(txtMemberIdentificationNumber);
                row.Cells.Add(cell);


                tbl.Rows.Add(row);
                row = new TableRow();
                cell = new TableCell();
                cell.Controls.Add(CreateRegExpValidator("regExpMemberIdentificationNumber", txtMemberIdentificationNumber.ID));
                row.Cells.Add(cell);
                tbl.Rows.Add(row);

                row = new TableRow();
                cell = new TableCell();
                cell.Controls.Add(CreateRequiredField("reqMemberIdentificationNumber", txtMemberIdentificationNumber.ID));
                row.Cells.Add(cell);
                tbl.Rows.Add(row);

                pnlAnswer2.Controls.Add(tbl);

                DropDownList ddlBirthDate = new DropDownList();
                ddlBirthDate.ID = "ddlBirthDate";
                ddlBirthDate.CssClass = "form_Select";
                ddlBirthDate.DataSource = GetFakeDateList();
                ddlBirthDate.DataTextField = "Text";
                ddlBirthDate.DataValueField = "Date";
                ddlBirthDate.DataBind();

                realListItem = new ListItem();
                if (!string.IsNullOrEmpty(UserSubsdy.FechaNacimiento))
                {
                    realListItem.Text = DateTime.Parse(GetDate(UserSubsdy.FechaNacimiento).ToString()).ToString("dd/MM/yyyy"); ;
                    realListItem.Value = UserSubsdy.FechaNacimiento;
                }

                InsertRealValueInDropDownList(realListItem, ddlBirthDate);

                pnlAnswer3.Controls.Add(ddlBirthDate);

                BLL.FalseAddressBLL falseAddressBLL = new CAFAM.WebPortal.BLL.FalseAddressBLL(web);
                DropDownList ddlAddress = new DropDownList();

                ddlAddress.ID = "ddlAddress";
                ddlAddress.CssClass = "form_select";
                ddlAddress.DataSource = falseAddressBLL.GetFalseAddressList();
                ddlAddress.DataTextField = "Title";
                ddlAddress.DataValueField = "Title";
                ddlAddress.DataBind();

                realListItem = new ListItem();
                realListItem.Text = UserSubsdy.DomicilioTrabajador;
                realListItem.Value = UserSubsdy.DomicilioTrabajador;

                InsertRealValueInDropDownList(realListItem, ddlAddress);

                pnlAnswer4.Controls.Add(ddlAddress);

                DropDownList ddlTel = new DropDownList();

                ddlTel.ID = "ddlTel";
                ddlTel.CssClass = "form_select";
                ddlTel.DataSource = GetFakeTelList();
                ddlTel.DataBind();

                realListItem = new ListItem();
                realListItem.Text = UserSubsdy.Telefono;
                realListItem.Value = UserSubsdy.Telefono;

                InsertRealValueInDropDownList(realListItem, ddlTel);

                pnlAnswer5.Controls.Add(ddlTel);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void RegenerateControls()
        {
            if (UserSubsdy != null)
            {
#if DEBUG
                lblError.Visible = true;
                lblError.Text = "Tipo de Usuario: " + UserSubsdy.TipoAfiliado + "<br />";
                lblError.Text += "Fecha De Nacimiento: " + UserSubsdy.FechaNacimiento + "<br />";
                lblError.Text += "Numero Telefonico: " + UserSubsdy.Telefono + "<br />";
                lblError.Text += "Monto de Ingresos: " + UserSubsdy.CategoriaSalarial + "<br />";
                lblError.Text += "Nombre de Afiliado: " + UserSubsdy.PrimerNombre.ToUpper() + UserSubsdy.PrimerApellido.ToUpper() + "<br />";
                lblError.Text += "Numero de Afiliacion Principal: " + UserSubsdy.IdentificacionPrincipal.Nro;
#endif

                if (UserSubsdy.ClaseAfiliado == "1")
                {
                    switch (UserSubsdy.TipoAfiliado)
                    {
                        case "D":
                            GenerateAnswerControlsForDependant();
                            break;
                        case "P":
                            GenerateAnswerControlsForPensioner();
                            break;
                        case "I":
                            GenerateAnswerControlsForIndependant();
                            break;
                    }
                }
                else
                {
                    GenerateAnswerControlsForSpouse();
                }
            }
        }
        #endregion

        #region Validation of Answer
        private bool ValidateDependantAnswers()
        {
            bool validAnswers = true;

            DropDownList ddlCompany = (DropDownList)pnlAnswer1.FindControl("ddlCompany");

            if (UserSubsdy.NombreORazonSocial != ddlCompany.SelectedValue)
            {
                validAnswers = false;
            }

            DropDownList ddlBirthDate = (DropDownList)pnlAnswer2.FindControl("ddlBirthDate");

            DateTime? birthDate = GetDate(UserSubsdy.FechaNacimiento);
            DateTime? birthDate2 = GetDate(ddlBirthDate.SelectedValue);

            if (birthDate != null && birthDate != birthDate2)
            {
                validAnswers = false;
            }

            DropDownList ddlAddress = (DropDownList)pnlAnswer3.FindControl("ddlAddress");

            if (UserSubsdy.DomicilioTrabajador != ddlAddress.SelectedValue)
            {
                validAnswers = false;
            }

            DropDownList ddlTel = (DropDownList)pnlAnswer4.FindControl("ddlTel");

            if (ddlTel.SelectedValue != UserSubsdy.Telefono)
            {
                validAnswers = false;
            }

            //falta la fecha de ingreso laboral en el objeto User
            //DateTime? dateStartWorking = GetDate(User.

            return validAnswers;
        }

        private bool ValidatePensionateAnswers()
        {
            bool validAnswers = true;

            DropDownList ddlCompany = (DropDownList)pnlAnswer1.FindControl("ddlCompany");

            if (UserSubsdy.NombreORazonSocial != ddlCompany.SelectedValue)
            {
                validAnswers = false;
            }

            DropDownList ddlBirthDate = (DropDownList)pnlAnswer2.FindControl("ddlBirthDate");

            DateTime? birthDate = GetDate(UserSubsdy.FechaNacimiento);
            DateTime? birthDate2 = GetDate(ddlBirthDate.SelectedValue);

            if (birthDate != null && birthDate != birthDate2)
            {
                validAnswers = false;
            }

            DropDownList ddlAddress = (DropDownList)pnlAnswer3.FindControl("ddlAddress");

            if (UserSubsdy.DomicilioTrabajador != ddlAddress.SelectedValue)
            {
                validAnswers = false;
            }

            DropDownList ddlTel = (DropDownList)pnlAnswer4.FindControl("ddlTel");

            if (ddlTel.SelectedValue != UserSubsdy.Telefono)
            {
                validAnswers = false;
            }

            //WebUI.DateTimeCustomControl dtcPensionDate = (WebUI.DateTimeCustomControl)pnlAnswer5.FindControl("dtcPensionDate");
            //falta la fecha de pension en el objeto Usuario

            return validAnswers;
        }

        private bool ValidateIndependantAnswers()
        {
            bool validAnswers = true;

            DropDownList ddlBirthDate = (DropDownList)pnlAnswer1.FindControl("ddlBirthDate");

            DateTime? birthDate = GetDate(UserSubsdy.FechaNacimiento);
            DateTime? birthDate2 = GetDate(ddlBirthDate.SelectedValue);

            if (birthDate != null && birthDate != birthDate2)
            {
                validAnswers = false;
            }

            DropDownList ddlAddress = (DropDownList)pnlAnswer2.FindControl("ddlAddress");

            if (UserSubsdy.DomicilioTrabajador != ddlAddress.SelectedValue)
            {
                validAnswers = false;
            }

            DropDownList ddlTel = (DropDownList)pnlAnswer3.FindControl("ddlTel");

            if (ddlTel.SelectedValue != UserSubsdy.Telefono)
            {
                validAnswers = false;
            }

            return validAnswers;
        }

        private bool ValidateSpouseAnswers()
        {
            bool validAnswers = true;

            DropDownList ddlCompany = (DropDownList)pnlAnswer1.FindControl("ddlMemberCompany");

            if (UserSubsdy.NombreORazonSocial != ddlCompany.SelectedValue)
            {
                validAnswers = false;
            }

            TextBox txtMemberIdentificationNumber = (TextBox)pnlAnswer2.FindControl("txtMemberIdentificationNumber");

            if (UserSubsdy.IdentificacionPrincipal.Nro != txtMemberIdentificationNumber.Text)
            {
                validAnswers = false;
            }

            DropDownList ddlBirthDate = (DropDownList)pnlAnswer3.FindControl("ddlBirthDate");

            DateTime? birthDate = GetDate(UserSubsdy.FechaNacimiento);
            DateTime? birthDate2 = GetDate(ddlBirthDate.SelectedValue);

            if (birthDate != null && birthDate != birthDate2)
            {
                validAnswers = false;
            }

            DropDownList ddlAddress = (DropDownList)pnlAnswer4.FindControl("ddlAddress");

            if (UserSubsdy.DomicilioTrabajador != ddlAddress.SelectedValue)
            {
                validAnswers = false;
            }

            DropDownList ddlTel = (DropDownList)pnlAnswer5.FindControl("ddlTel");

            if (ddlTel.SelectedValue != UserSubsdy.Telefono)
            {
                validAnswers = false;
            }

            return validAnswers;
        }
        #endregion

        #region Common
        private void InsertRealValueInDropDownList(ListItem listItem, DropDownList ddlList)
        {
            try
            {
                Random random = new Random();

                ddlList.Items.Insert(random.Next(0, ddlList.Items.Count), listItem);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private RequiredFieldValidator CreateRequiredField(string id, string controlToValidate)
        {
            try
            {
                RequiredFieldValidator reqField = new RequiredFieldValidator();
                reqField.ID = id;
                reqField.ControlToValidate = controlToValidate;
                reqField.ValidationGroup = "grpUserBeforeNewQuestions";
                reqField.CssClass = "form_field_error_message";
                reqField.Text = "El Campo es Requerido";
                reqField.Display = ValidatorDisplay.Dynamic;
                return reqField;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private RegularExpressionValidator CreateRegExpValidator(string id, string controlToValidate)
        {
            try
            {
                RegularExpressionValidator regExp = new RegularExpressionValidator();
                regExp.ID = id;
                regExp.ControlToValidate = controlToValidate;
                regExp.ValidationGroup = "grpUserBeforeNewQuestions";
                regExp.ValidationExpression = "^[\\d]*$";
                regExp.CssClass = "form_field_error_message";
                regExp.Text = "Solo puede ingresar números";
                regExp.Display = ValidatorDisplay.Dynamic;
                return regExp;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private DateTime? GetDate(string strDate)
        {
            try
            {
                DateTime dateTime;

                if (!string.IsNullOrEmpty(strDate))
                {
                    strDate = strDate.Substring(0, 4) + "-" + strDate.Substring(4, 2) + "-" + strDate.Substring(6, 2);
                    if (DateTime.TryParse(strDate.ToString(), out dateTime))
                    {
                        return dateTime;
                    }
                }
                return null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        private List<Entities.FakeDate> GetFakeDateList()
        {
            List<Entities.FakeDate> listDateTime = new List<Entities.FakeDate>();
            Random random = new Random();
            for (int i = 1; i <= 19; i++)
            {
                string fakeDate = string.Format("{0}-{1}-{2}", random.Next(1930, DateTime.Now.Year), random.Next(1, 12), random.Next(1, 28));

                DateTime dt = DateTime.Parse(fakeDate);

                Entities.FakeDate fakeDateObj = new Entities.FakeDate();
                fakeDateObj.Text = dt.ToString("dd/MM/yyyy");
                fakeDateObj.Date = dt;

                listDateTime.Add(fakeDateObj);
            }

            return listDateTime;
        }

        private List<string> GetFakeTelList()
        {
            List<string> listTel = new List<string>();
            Random random = new Random();
            for (int i = 1; i <= 19; i++)
            {
                string fakeTel;
                fakeTel = random.Next(1111111, 9999999).ToString();

                listTel.Add(fakeTel);
            }

            return listTel;
        }
    }
}
