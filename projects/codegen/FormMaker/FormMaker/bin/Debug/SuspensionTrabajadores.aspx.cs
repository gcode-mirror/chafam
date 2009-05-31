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
    public class SuspensionTrabajadores : System.Web.UI.Page
    {
        #region Controls
        protected TextBox txtNit;
        protected TextBox txtSubNit;
        protected TextBox txtNombreORazonSocial;
        protected TextBox txtTipoDeIdentificacion;
        protected TextBox txtNumeroDeIdentificacion;
        protected TextBox txtPrimerApellido;
        protected TextBox txtSegundoApellido;
        protected TextBox txtPrimerNombre;
        protected TextBox txtSegundoNombre;
        protected Panel pnldtFechaDeLaSuspensionInicial;
        protected Panel pnldtFechaDeLaSuspensionFinal;
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
               if (this.IsPostBack())
               {
                   // Do Settings here
               }
               else
               {
                   Moisture();
               }

               // TO DO: Convert pnldtFechaDeLaSuspensionInicial to Custom DateTimePicker
               // TO DO: Convert pnldtFechaDeLaSuspensionFinal to Custom DateTimePicker
            }
            catch (Exception Ex)
            {
            }
        }
    }
}

