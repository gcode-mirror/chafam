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
    public class AfiliacionIndividuales : System.Web.UI.Page
    {
        #region Controls
        protected TextBox txtNitEntidadAsociadora;
        protected TextBox txtNombreDeLaEntidadAsociadora;
        protected TextBox txtEps;
        protected TextBox txtFondoDePensiones;
        protected TextBox txtTipoDeIdentificacion;
        protected TextBox txtNumeroDeIdentificacion;
        protected TextBox txtPrimerApellido;
        protected TextBox txtSegundoApellido;
        protected TextBox txtPrimerNombre;
        protected TextBox txtSegundoNombre;
        protected TextBox txtIngresosMensuales;
        protected Panel pnldtFechaDeNacimiento;
        protected TextBox txtSexo;
        protected TextBox txtEstadoCivil;
        protected TextBox txtDireccionActual;
        protected TextBox txtEstrato;
        protected TextBox txtBarrio;
        protected TextBox txtCiudad;
        protected TextBox txtTelefono;
        protected TextBox txtTelefono2;
        protected TextBox txtCorreoElectronico;
        protected TextBox txtEstudiosRealizados;
        protected TextBox txtTituloOtorgado;
        protected TextBox txtTipoDeIdentificacion2;
        protected TextBox txtNumeroDeIdentificacion2;
        protected TextBox txtPrimerApellido2;
        protected TextBox txtSegundoApellido2;
        protected TextBox txtPrimerNombre2;
        protected TextBox txtSegundoNombre2;
        protected TextBox txtConviven;
        protected Panel pnldtFechaDeNacimiento2;
        protected TextBox txtSexo2;
        protected TextBox txtDireccionActual2;
        protected TextBox txtEstrato2;
        protected TextBox txtBarrio2;
        protected TextBox txtCiudad2;
        protected TextBox txtTelefono3;
        protected TextBox txtOcupacionActual;
        protected TextBox txtNombreDeLaEmpresaDondeLabora;
        protected TextBox txtNit;
        protected CheckBox boolRecibeSubsidio;
        protected TextBox txtSueldoMensual;
        protected TextBox txtTelefono4;
        protected TextBox txtTipoDeContrato;
        protected TextBox txtTipoDeVinculacion;
        protected TextBox txtCantidadDePersonasACargo;
        protected TextBox txtNIdentificacion;
        protected TextBox txtPrimerApellido3;
        protected TextBox txtSegundoApellido3;
        protected TextBox txtPrimerNombre3;
        protected TextBox txtSegundoNombre3;
        protected TextBox txtSexo3;
        protected Panel pnldtFechaDeNacimiento3;
        protected TextBox txtParentesco;
        protected TextBox txtObservaciones;
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

               // TO DO: Convert pnldtFechaDeNacimiento to Custom DateTimePicker
               // TO DO: Convert pnldtFechaDeNacimiento2 to Custom DateTimePicker
               // TO DO: Convert pnldtFechaDeNacimiento3 to Custom DateTimePicker
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

