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

namespace CAFAM.WebPortal.Forms
{
    public class Output1 : System.Web.UI.Page
    {
        #region Controls
        protected TextBox txtNit;
        protected TextBox txtCdigoCiudad;
        protected TextBox txtTelfono;
        protected TextBox txtTelfono;
        protected TextBox txtFax;
        protected Panel dtCorreoElectrnico;
        protected TextBox txtNDeEscrituraConstitucin;
        protected TextBox txtNNotaria;
        protected Panel dtFechaConstitucin;
        protected TextBox txtTipoDeEmpresa;
        protected TextBox txtClaseDeSociedad;
        protected TextBox txtCdigo;
        protected TextBox txtSubsidioFamiliar;
        protected TextBox txtSena;
        protected TextBox txtIcbf;
        protected TextBox txtEsap;
        protected TextBox txtInstitutosTcnicos;
        protected TextBox txtNit;
        protected TextBox txtNmeroTotalDeTrabajadores;
        protected TextBox txtValorDeLaLtimaNmina;
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
            }
            catch (Exception Ex)
            {
            }
        }
       protected void OnActiveStepChanged(object sender, EventArgs e)
       {
       }

       protected void OnFinish(object sender, WizardNavigationEventArgs e)
       {
       }

       protected void OnNext(object sender, WizardNavigationEventArgs e)
       {
       }

    }
}

