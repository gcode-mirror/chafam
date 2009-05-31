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
        protected TextBox txtTipoDeIdentificacion;
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

        #endregion
        
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
                if (this.IsPostBack)
                {
                   // Do Settings here
                }
                else
                {
                    BindData();
                    Moisture();
                }

                dtFechaDeLaSuspensionInicial = new DateTimeCustomControl();
                dtFechaDeLaSuspensionInicial.AjaxFunctionality = false;
                dtFechaDeLaSuspensionInicial.TextBoxCSSClass = "form_text";
                dtFechaDeLaSuspensionInicial.ValidatorsCSSClass = "form_field_error_message";
                pnldtFechaDeLaSuspensionInicial.Controls.Add(dtFechaDeLaSuspensionInicial);

                dtFechaDeLaSuspensionFinal = new DateTimeCustomControl();
                dtFechaDeLaSuspensionFinal.AjaxFunctionality = false;
                dtFechaDeLaSuspensionFinal.TextBoxCSSClass = "form_text";
                dtFechaDeLaSuspensionFinal.ValidatorsCSSClass = "form_field_error_message";
                pnldtFechaDeLaSuspensionFinal.Controls.Add(dtFechaDeLaSuspensionFinal);
            }
            catch (Exception Ex)
            {
            }
        }

        protected void bntGuardarEImprimir_Click(object sender, EventArgs e)
        {
            try
            {
                Moisture();

                // Save

                // Call print view
            }
            catch (Exception Ex)
            {
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
                this.gvTrabajadores.DataBind();
                this.ViewState["lstTrabajadores"] = Lst;
            }
        }

        private void Moisture()
        {
            //throw new NotImplementedException();
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