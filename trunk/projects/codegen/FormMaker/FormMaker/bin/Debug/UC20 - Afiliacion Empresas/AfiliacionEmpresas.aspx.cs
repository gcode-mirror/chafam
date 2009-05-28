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
    public class AfiliacionEmpresas : System.Web.UI.Page
    {
        #region Controls
        protected TextBox txtNit;
        protected TextBox txtSubNit;
        protected TextBox txtNombreORazonSocial;
        protected TextBox txtTipoDeIdentificacion;
        protected TextBox txtNumeroDeIdentificacion;
        protected TextBox txtSucursal;
        protected TextBox txtPrimerApellido;
        protected TextBox txtSegundoApellido;
        protected TextBox txtPrimerNombre;
        protected TextBox txtSegundoNombre;
        protected TextBox txtEstadoCivil;
        protected Panel pnldtFechaDeNacimiento;
        protected TextBox txtSexo;
        protected Panel pnldtFechaDeIngresoALaEmpresa;
        protected TextBox txtCargo;
        protected TextBox txtHorasMes;
        protected TextBox txtSueldoBasico;
        protected TextBox txtComisionEnVentas;
        protected TextBox txtCiudad;
        protected TextBox txtDomicilio;
        protected TextBox txtEmail;
        protected TextBox txtTelefono;
        protected TextBox txtTelefono;
        protected CheckBox boolEsSocioOPropietarioDeLaEmpresa;
        protected CheckBox boolEsTrabajadorDelSectorAgrario;
        protected CheckBox boolLaboraEnOtraEmpresa;
        protected TextBox txtNit;
        protected TextBox txtSubNit;
        protected TextBox txtNombreORazonSocial;
        protected TextBox txtHorasMes;
        protected TextBox txtSueldoBasico;
        protected TextBox txtComisionEnVentas;
        protected CheckBox boolDeseaIngresarUnConyuge;
        protected TextBox txtTipoDeIdentificacion;
        protected TextBox txtNumeroDeIdentificacion;
        protected CheckBox boolConviven;
        protected TextBox txtTipoDeRelacion;
        protected TextBox txtPrimerApellido;
        protected TextBox txtSegundoApellido;
        protected TextBox txtPrimerNombre;
        protected TextBox txtSegundoNombre;
        protected Panel pnldtFechaDeNacimiento;
        protected TextBox txtDomicilio;
        protected TextBox txtCiudad;
        protected TextBox txtTelefono;
        protected TextBox txtOcupacion;
        protected CheckBox boolRecibeSubsidio;
        protected TextBox txtNit;
        protected TextBox txtNombreORazonSocialDeLaEmpresaDondeTrabaja;
        protected TextBox txtSueldoBasico;
        protected TextBox txtTipoDeIdentificacion;
        protected TextBox txtNumeroDeIdentificacion;
        protected CheckBox boolConviven;
        protected TextBox txtPadreOMadreBiologica;
        protected TextBox txtPrimerApellido;
        protected TextBox txtSegundoApellido;
        protected TextBox txtPrimerNombre;
        protected TextBox txtSegundoNombre;
        protected Panel pnldtFechaDeNacimiento;
        protected TextBox txtOcupacion;
        protected TextBox txtDomicilio;
        protected TextBox txtCiudad;
        protected TextBox txtTelefono;
        protected CheckBox boolRecibeSubsidio;
        protected TextBox txtNombreDeLosHijosPorLosQueRecibeElSubsidio;
        protected TextBox txtNit;
        protected TextBox txtNombreORazonSocialDeLaEmpresaDondeTrabaja;
        protected TextBox txtSueldoBasico;
        protected TextBox txtCantidadDePersonasQueVaAInscribir;
        protected Repeater rptRepeater;
        protected TextBox txtTipoDeIdentificacion;
        protected TextBox txtNumeroDeIdentificacion;
        protected TextBox txtTipoDeIdentificacionDelPadreAsociado;
        protected TextBox txtNumeroDeIdentificacionDelPadreAsociado;
        protected TextBox txtSexo;
        protected Panel pnldtFechaDeNacimiento;
        protected TextBox txtPrimerApellido;
        protected TextBox txtSegundoApellido;
        protected TextBox txtPrimerNombre;
        protected TextBox txtSegundoNombre;
        protected TextBox txtParentesco;
        protected CheckBox boolDiscapacitado;
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

               // TO DO: Convert pnldtFechaDeNacimiento to Custom DateTimePicker
               // TO DO: Convert pnldtFechaDeIngresoALaEmpresa to Custom DateTimePicker
               // TO DO: Convert pnldtFechaDeNacimiento to Custom DateTimePicker
               // TO DO: Convert pnldtFechaDeNacimiento to Custom DateTimePicker
               // TO DO: Convert pnldtFechaDeNacimiento to Custom DateTimePicker
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
        this.DEPENDHANDICAPP = boolDiscapacitado.Checked;
       }

       #endregion
    }
}

