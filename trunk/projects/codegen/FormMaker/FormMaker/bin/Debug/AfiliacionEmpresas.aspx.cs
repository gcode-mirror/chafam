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
        this.COMPNIT = txtNit.Value;
        this.COMPSUBNIT = txtSubNit.Value;
        this.COMPNAME = txtNombreORazonSocial.Value;
        this.EMPIDTYPE = txtTipoDeIdentificacion.Value;
        this.EMPIDNUM = txtNumeroDeIdentificacion.Value;
        this.EMPBRANCH = txtSucursal.Value;
        this.EMPFIRSTSURNAME = txtPrimerApellido.Value;
        this.EMPSECONDSURNAME = txtSegundoApellido.Value;
        this.EMPFIRSTNAME = txtPrimerNombre.Value;
        this.EMPSECONDNAME = txtSegundoNombre.Value;
        this.EMPMARITALSTATE = txtEstadoCivil.Value;
        this.EMPBIRTHDATE = pnldtFechaDeNacimiento.Value;
        this.EMPGENDER = txtSexo.Value;
        this.EMPJOININGDATE = pnldtFechaDeIngresoALaEmpresa.Value;
        this.EMPPOSITION = txtCargo.Value;
        this.EMPMONTHHOUR = txtHorasMes.Value;
        this.EMPBASICSALARY = txtSueldoBasico.Value;
        this.EMPSALECOMMISSION = txtComisionEnVentas.Value;
        this.EMPCITY = txtCiudad.Value;
        this.EMPADDRESS = txtDomicilio.Value;
        this.EMPEMAIL = txtEmail.Value;
        this.EMPPHONENUMB1 = txtTelefono.Value;
        this.EMPPHONENUMB2 = txtTelefono.Value;
        this.EMPOWNER = boolEsSocioOPropietarioDeLaEmpresa.Checked;
        this.EMPAGRICULTUREW = boolEsTrabajadorDelSectorAgrario.Checked;
        this.EMPCOMPNIT = txtNit.Value;
        this.EMPCOMPSUBNIT = txtSubNit.Value;
        this.EMPCOMPNAME = txtNombreORazonSocial.Value;
        this.EMPCOMPMONTHHOUR = txtHorasMes.Value;
        this.EMPCOMPBASICSALARY = txtSueldoBasico.Value;
        this.EMPCOMPSALECOMMISSION = txtComisionEnVentas.Value;
        this. los campos del cónyuge son obligatorios. = boolDeseaIngresarUnConyuge.Checked;
        this.PARTNERIDTYPE = txtTipoDeIdentificacion.Value;
        this.PARTNERIDNUM = txtNumeroDeIdentificacion.Value;
        this.PARTNERLIVETOGETHER = boolConviven.Checked;
        this.PARTNERRELATIONSHIP = txtTipoDeRelacion.Value;
        this.PARTNERFIRSTSURNAME = txtPrimerApellido.Value;
        this.PARTNERSECONDSURNAME = txtSegundoApellido.Value;
        this.PARTNERFIRSTNAME = txtPrimerNombre.Value;
        this.PARTNERSECONDNAME = txtSegundoNombre.Value;
        this.PARTNERBIRTHDATE = pnldtFechaDeNacimiento.Value;
        this.PARTNERADDRESS = txtDomicilio.Value;
        this.PARTNERCITY = txtCiudad.Value;
        this.PARTNERPHONENUMB = txtTelefono.Value;
        this.PARTNEROCCUPATION = txtOcupacion.Value;
        this.PARTNEROCCUPSUBSIDY = boolRecibeSubsidio.Checked;
        this.PARTNEROCCUPNIT = txtNit.Value;
        this.PARTNEROCCUPCOMPANYNAME = txtNombreORazonSocialDeLaEmpresaDondeTrabaja.Value;
        this.PARTNEROCCUPBASICSALARY = txtSueldoBasico.Value;
        this.PARENTIDTYPE = txtTipoDeIdentificacion.Value;
        this.PARENTIDNUM = txtNumeroDeIdentificacion.Value;
        this.PARENTLIVETOGETHER = boolConviven.Checked;
        this.PARENTFIRSTSURNAME = txtPrimerApellido.Value;
        this.PARENTSECONDSURNAME = txtSegundoApellido.Value;
        this.PARENTFIRSTNAME = txtPrimerNombre.Value;
        this.PARENTSECONDNAME = txtSegundoNombre.Value;
        this.PARENTBIRTHDATE = pnldtFechaDeNacimiento.Value;
        this.PARENTOCCUPATION = txtOcupacion.Value;
        this.PARENTADDRESS = txtDomicilio.Value;
        this.PARENTCITY = txtCiudad.Value;
        this.PARENTPHONENUMB = txtTelefono.Value;
        this.PARENTEMPLOYEESUBSIDY = boolRecibeSubsidio.Checked;
        this.PARENTEMPLOYEESONNAME = txtNombreDeLosHijosPorLosQueRecibeElSubsidio.Value;
        this.PARENTEMPLOYEENIT = txtNit.Value;
        this.PARENTEMPLOYEECOMPNAME = txtNombreORazonSocialDeLaEmpresaDondeTrabaja.Value;
        this.PARENTEMPLOYEEBASICSALARY = txtSueldoBasico.Value;
        this.DEPENDIDTYPE = txtTipoDeIdentificacion.Value;
        this.DEPENDIDNUM = txtNumeroDeIdentificacion.Value;
        this.DEPENDPARENTIDTYPE = txtTipoDeIdentificacionDelPadreAsociado.Value;
        this.DEPENDPARENTIDNUM = txtNumeroDeIdentificacionDelPadreAsociado.Value;
        this.DEPENDPARENTGENDER = txtSexo.Value;
        this.DEPENDBIRTHDATE = pnldtFechaDeNacimiento.Value;
        this.DEPENDFIRSTSURENAME = txtPrimerApellido.Value;
        this.DEPENDSECONDSURENAME = txtSegundoApellido.Value;
        this.DEPENDFIRSTNAME = txtPrimerNombre.Value;
        this.DEPENDSECONDNAME = txtSegundoNombre.Value;
        this.DEPENDKINDSHIP = txtParentesco.Value;
        this.DEPENDHANDICAPP = boolDiscapacitado.Checked;
       }

       #endregion
    }
}

