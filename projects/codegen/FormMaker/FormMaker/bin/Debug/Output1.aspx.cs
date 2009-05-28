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
        protected TextBox txtCodigoCiudad;
        protected TextBox txtTelefono;
        protected TextBox txtTelefono;
        protected TextBox txtFax;
        protected Panel pnldtCorreoElectronico;
        protected TextBox txtNDeEscrituraConstitucion;
        protected TextBox txtNNotaria;
        protected Panel pnldtFechaConstitucion;
        protected TextBox txtTipoDeEmpresa;
        protected TextBox txtClaseDeSociedad;
        protected TextBox txtCodigo;
        protected TextBox txtSubsidioFamiliar;
        protected TextBox txtSena;
        protected TextBox txtIcbf;
        protected TextBox txtEsap;
        protected TextBox txtInstitutosTecnicos;
        protected TextBox txtNit;
        protected TextBox txtNumeroTotalDeTrabajadores;
        protected TextBox txtValorDeLaUltimaNomina;
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
               if (this.isPostBack())
               {
                   // Do Settings here
               }
               else
               {
                   Moisture();
               }

               // TO DO: Convert pnldtCorreoElectronico to Custom DateTimePicker
               // TO DO: Convert pnldtFechaConstitucion to Custom DateTimePicker
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

       #region bindings
       private void Moisture()
       {
       }

       #endregion
    }
}

