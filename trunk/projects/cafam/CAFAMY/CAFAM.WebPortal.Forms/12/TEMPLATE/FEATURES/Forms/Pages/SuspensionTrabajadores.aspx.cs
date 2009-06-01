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
using CAFAM.WebPortal.WebUI;
using System.Collections.Generic;

namespace CAFAM.WebPortal.Forms
{
    public class SuspensionTrabajadores : System.Web.UI.Page
    {
        #region Controls
        protected TextBox txtNit;
        protected TextBox txtSubNit;
        protected TextBox txtNombreORazonSocial;
        protected RadioButtonList rdTipoDeIdentificacion;
        protected TextBox txtNumeroDeIdentificacion;
        protected TextBox txtPrimerApellido;
        protected TextBox txtSegundoApellido;
        protected TextBox txtPrimerNombre;
        protected TextBox txtSegundoNombre;
        protected Panel pnldtFechaDeLaSuspensionInicial;
        protected Panel pnldtFechaDeLaSuspensionFinal;
        protected GridView gvTrabajadores;
        protected DateTimeCustomControl dtFechaDeLaSuspensionInicial;
        protected DateTimeCustomControl dtFechaDeLaSuspensionFinal;
        protected Label lblMessage;

        #endregion

        private EntSuspensionTrabajadores entSusTrabajador;
        
        public List<Trabajador> lstTrabajadores
        {
            get
            {
                List<Trabajador> Lst = (List<Trabajador>)this.ViewState["lstTrabajadores"];
                if (Lst == null)
                    Lst = new List<Trabajador>();

                return Lst;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                CreateDateControls();
                if (this.IsPostBack)
                {
                    // Do Something
                }
                else
                {
                    AutoCompleteUserData();
                    BindData();
                }

            }
            catch (Exception Ex)
            {
            }
        }

        private void AutoCompleteUserData()
        {
            SPWeb web = SPContext.Current.Web;
            if (web.Url.Equals("http://glb-vm:71"))
            {
                txtNit.Text = "123456789";
                txtSubNit.Text = "2";
                txtNombreORazonSocial.Text = "Lagarto Juancho";
            }
            else
            {
                BLL.UserBLL userBBL = new CAFAM.WebPortal.BLL.UserBLL(web);
                Entities.User Usuario = userBBL.GetUser(web.CurrentUser.LoginName);

                txtNit.Text = Usuario.NIT;
                txtSubNit.Text = Usuario.SubNIT;
                txtNombreORazonSocial.Text =
                    Usuario.FirstName + " " + Usuario.SecondName + " " + 
                    Usuario.FirstSurname + " " + Usuario.SecondSurname;
            }
        }

        private void CreateDateControls()
        {
            dtFechaDeLaSuspensionInicial = new DateTimeCustomControl();
            dtFechaDeLaSuspensionInicial.AjaxFunctionality = false;
            dtFechaDeLaSuspensionInicial.TextBoxCSSClass = "form_text";
            dtFechaDeLaSuspensionInicial.ValidatorsCSSClass = "form_field_error_message";
            dtFechaDeLaSuspensionInicial.Required = true;
            pnldtFechaDeLaSuspensionInicial.Controls.Add(dtFechaDeLaSuspensionInicial);

            dtFechaDeLaSuspensionFinal = new DateTimeCustomControl();
            dtFechaDeLaSuspensionFinal.AjaxFunctionality = false;
            dtFechaDeLaSuspensionFinal.TextBoxCSSClass = "form_text";
            dtFechaDeLaSuspensionFinal.ValidatorsCSSClass = "form_field_error_message";
            dtFechaDeLaSuspensionFinal.Required = true;
            pnldtFechaDeLaSuspensionFinal.Controls.Add(dtFechaDeLaSuspensionFinal);
        }

        protected void bntGuardarEImprimir_Click(object sender, EventArgs e)
        {
            try
            {
                if (this.lstTrabajadores.Count == 0)
                {
                    lblMessage.Text = "Debe cargar al menos un trabajador";
                    return;
                }

                // Form to Entity
                Moisture();

                // Commit Form to DB or Sharepoint
                CommitForm();

                // Go to PrintView
                Response.Redirect("rptSuspensionTrabajadores.aspx");                
            }
            catch (Exception Ex)
            {
                lblMessage.Text = "Error: " + Ex.Message;
            }
        }

        private void CommitForm()
        {
            try
            {
                entSusTrabajador.Insert();
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
        }

        protected void btnCargar_Click(object sender, EventArgs e)
        {
            if (this.lstTrabajadores.Count < 14)
            { 
                Trabajador myTrabajador = new Trabajador
                {
                    TipoId = rdTipoDeIdentificacion.SelectedValue,
                    NumeroId = txtNumeroDeIdentificacion.Text,
                    PrimerApellido = txtPrimerApellido.Text,
                    SegundoApellido = txtSegundoApellido.Text,
                    PrimerNombre = txtPrimerNombre.Text,
                    SegundoNombre = txtSegundoNombre.Text,
                    InicioSuspension = dtFechaDeLaSuspensionInicial.Date,
                    FinSuspension = dtFechaDeLaSuspensionFinal.Date
                };

                List<Trabajador> Lst = lstTrabajadores;
                Lst.Add(myTrabajador);
                this.gvTrabajadores.DataSource = Lst;
                this.ViewState["lstTrabajadores"] = Lst;
                this.gvTrabajadores.DataBind();
            }
        }

        private void Moisture()
        {
            try
            {
                entSusTrabajador = new EntSuspensionTrabajadores();

                entSusTrabajador.NIT = txtNit.Text;
                entSusTrabajador.SUBNIT = txtSubNit.Text;
                entSusTrabajador.RazonSocial = txtNombreORazonSocial.Text;
                entSusTrabajador.DateIns = DateTime.Now;
                entSusTrabajador.CurrentUser = "";

                foreach (Trabajador Tr in lstTrabajadores)
                {
                    EntSuspensionTrabajadoresDetalle entSusTrabDetalle = new EntSuspensionTrabajadoresDetalle();
                    entSusTrabDetalle.IdType = Tr.TipoId;
                    entSusTrabDetalle.IdNumber = Tr.NumeroId;
                    entSusTrabDetalle.FirstSurname = Tr.PrimerApellido;
                    entSusTrabDetalle.SecondSurname = Tr.SegundoApellido;
                    entSusTrabDetalle.FirstName = Tr.PrimerNombre;
                    entSusTrabDetalle.SecondName = Tr.SegundoNombre;
                    entSusTrabDetalle.SuspentionStart = Tr.InicioSuspension.ToString();
                    entSusTrabDetalle.SuspentionStop = Tr.FinSuspension.ToString();

                    entSusTrabajador.TrabajadoresDetalle.Add(entSusTrabDetalle);
                }                
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
        }

        

        private void BindData()
        {
            try
            {
                SPWeb web = SPContext.Current.Web;

                BLL.IdentificationTypeBLL identificationTypeBLL = new CAFAM.WebPortal.BLL.IdentificationTypeBLL(web);

                DataSet dsIdentificationType = identificationTypeBLL.GetIdentificationTypeList();

                rdTipoDeIdentificacion.DataSource = dsIdentificationType;
                rdTipoDeIdentificacion.DataTextField = "Title";
                rdTipoDeIdentificacion.DataValueField = "Value";
                rdTipoDeIdentificacion.DataBind();
                rdTipoDeIdentificacion.Items[0].Selected = true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }

    [Serializable]
    public class Trabajador
    {
        public string TipoId { get; set; }
        public string NumeroId { get; set; }
        public string PrimerApellido { get; set; }
        public string SegundoApellido { get; set; }
        public string PrimerNombre { get; set; }
        public string SegundoNombre { get; set; }
        public DateTime? InicioSuspension { get; set; }
        public DateTime? FinSuspension { get; set; }

        public Trabajador()
        {
        }
    }
}