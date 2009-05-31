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
        protected TextBox txtTelefono2;
        protected CheckBox boolEsSocioOPropietarioDeLaEmpresa;
        protected CheckBox boolEsTrabajadorDelSectorAgrario;
        protected CheckBox boolLaboraEnOtraEmpresa;
        protected TextBox txtNit2;
        protected TextBox txtSubNit2;
        protected TextBox txtNombreORazonSocial2;
        protected TextBox txtHorasMes2;
        protected TextBox txtSueldoBasico2;
        protected TextBox txtComisionEnVentas2;
        protected CheckBox boolDeseaIngresarUnConyuge;
        protected TextBox txtTipoDeIdentificacion2;
        protected TextBox txtNumeroDeIdentificacion2;
        protected CheckBox boolConviven;
        protected TextBox txtTipoDeRelacion;
        protected TextBox txtPrimerApellido2;
        protected TextBox txtSegundoApellido2;
        protected TextBox txtPrimerNombre2;
        protected TextBox txtSegundoNombre2;
        protected Panel pnldtFechaDeNacimiento2;
        protected TextBox txtDomicilio2;
        protected TextBox txtCiudad2;
        protected TextBox txtTelefono3;
        protected TextBox txtOcupacion;
        protected CheckBox boolRecibeSubsidio;
        protected TextBox txtNit3;
        protected TextBox txtNombreORazonSocialDeLaEmpresaDondeTrabaja;
        protected TextBox txtSueldoBasico3;
        protected TextBox txtTipoDeIdentificacion3;
        protected TextBox txtNumeroDeIdentificacion3;
        protected CheckBox boolConviven2;
        protected TextBox txtPadreOMadreBiologica;
        protected TextBox txtPrimerApellido3;
        protected TextBox txtSegundoApellido3;
        protected TextBox txtPrimerNombre3;
        protected TextBox txtSegundoNombre3;
        protected Panel pnldtFechaDeNacimiento3;
        protected TextBox txtOcupacion2;
        protected TextBox txtDomicilio3;
        protected TextBox txtCiudad3;
        protected TextBox txtTelefono4;
        protected CheckBox boolRecibeSubsidio2;
        protected TextBox txtNombreDeLosHijosPorLosQueRecibeElSubsidio;
        protected TextBox txtNit4;
        protected TextBox txtNombreORazonSocialDeLaEmpresaDondeTrabaja2;
        protected TextBox txtSueldoBasico4;
        protected TextBox txtCantidadDePersonasQueVaAInscribir;
        protected Repeater rptRepeater;
        protected TextBox txtTipoDeIdentificacion4;
        protected TextBox txtNumeroDeIdentificacion4;
        protected TextBox txtTipoDeIdentificacionDelPadreAsociado;
        protected TextBox txtNumeroDeIdentificacionDelPadreAsociado;
        protected TextBox txtSexo2;
        protected Panel pnldtFechaDeNacimiento4;
        protected TextBox txtPrimerApellido4;
        protected TextBox txtSegundoApellido4;
        protected TextBox txtPrimerNombre4;
        protected TextBox txtSegundoNombre4;
        protected TextBox txtParentesco;
        protected CheckBox boolDiscapacitado;
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
               // TO DO: Convert pnldtFechaDeIngresoALaEmpresa to Custom DateTimePicker
               // TO DO: Convert pnldtFechaDeNacimiento2 to Custom DateTimePicker
               // TO DO: Convert pnldtFechaDeNacimiento3 to Custom DateTimePicker
               // TO DO: Convert pnldtFechaDeNacimiento4 to Custom DateTimePicker
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
        this.EMPPHONENUMB2 = txtTelefono2.Value;
        this.EMPOWNER = boolEsSocioOPropietarioDeLaEmpresa.Checked;
        this.EMPAGRICULTUREW = boolEsTrabajadorDelSectorAgrario.Checked;
        this.EMPCOMPNIT = txtNit2.Value;
        this.EMPCOMPSUBNIT = txtSubNit2.Value;
        this.EMPCOMPNAME = txtNombreORazonSocial2.Value;
        this.EMPCOMPMONTHHOUR = txtHorasMes2.Value;
        this.EMPCOMPBASICSALARY = txtSueldoBasico2.Value;
        this.EMPCOMPSALECOMMISSION = txtComisionEnVentas2.Value;
        this. los campos del cónyuge son obligatorios. = boolDeseaIngresarUnConyuge.Checked;
        this.PARTNERIDTYPE = txtTipoDeIdentificacion2.Value;
        this.PARTNERIDNUM = txtNumeroDeIdentificacion2.Value;
        this.PARTNERLIVETOGETHER = boolConviven.Checked;
        this.PARTNERRELATIONSHIP = txtTipoDeRelacion.Value;
        this.PARTNERFIRSTSURNAME = txtPrimerApellido2.Value;
        this.PARTNERSECONDSURNAME = txtSegundoApellido2.Value;
        this.PARTNERFIRSTNAME = txtPrimerNombre2.Value;
        this.PARTNERSECONDNAME = txtSegundoNombre2.Value;
        this.PARTNERBIRTHDATE = pnldtFechaDeNacimiento2.Value;
        this.PARTNERADDRESS = txtDomicilio2.Value;
        this.PARTNERCITY = txtCiudad2.Value;
        this.PARTNERPHONENUMB = txtTelefono3.Value;
        this.PARTNEROCCUPATION = txtOcupacion.Value;
        this.PARTNEROCCUPSUBSIDY = boolRecibeSubsidio.Checked;
        this.PARTNEROCCUPNIT = txtNit3.Value;
        this.PARTNEROCCUPCOMPANYNAME = txtNombreORazonSocialDeLaEmpresaDondeTrabaja.Value;
        this.PARTNEROCCUPBASICSALARY = txtSueldoBasico3.Value;
        this.PARENTIDTYPE = txtTipoDeIdentificacion3.Value;
        this.PARENTIDNUM = txtNumeroDeIdentificacion3.Value;
        this.PARENTLIVETOGETHER = boolConviven2.Checked;
        this.PARENTFIRSTSURNAME = txtPrimerApellido3.Value;
        this.PARENTSECONDSURNAME = txtSegundoApellido3.Value;
        this.PARENTFIRSTNAME = txtPrimerNombre3.Value;
        this.PARENTSECONDNAME = txtSegundoNombre3.Value;
        this.PARENTBIRTHDATE = pnldtFechaDeNacimiento3.Value;
        this.PARENTOCCUPATION = txtOcupacion2.Value;
        this.PARENTADDRESS = txtDomicilio3.Value;
        this.PARENTCITY = txtCiudad3.Value;
        this.PARENTPHONENUMB = txtTelefono4.Value;
        this.PARENTEMPLOYEESUBSIDY = boolRecibeSubsidio2.Checked;
        this.PARENTEMPLOYEESONNAME = txtNombreDeLosHijosPorLosQueRecibeElSubsidio.Value;
        this.PARENTEMPLOYEENIT = txtNit4.Value;
        this.PARENTEMPLOYEECOMPNAME = txtNombreORazonSocialDeLaEmpresaDondeTrabaja2.Value;
        this.PARENTEMPLOYEEBASICSALARY = txtSueldoBasico4.Value;
        this.DEPENDIDTYPE = txtTipoDeIdentificacion4.Value;
        this.DEPENDIDNUM = txtNumeroDeIdentificacion4.Value;
        this.DEPENDPARENTIDTYPE = txtTipoDeIdentificacionDelPadreAsociado.Value;
        this.DEPENDPARENTIDNUM = txtNumeroDeIdentificacionDelPadreAsociado.Value;
        this.DEPENDPARENTGENDER = txtSexo2.Value;
        this.DEPENDBIRTHDATE = pnldtFechaDeNacimiento4.Value;
        this.DEPENDFIRSTSURENAME = txtPrimerApellido4.Value;
        this.DEPENDSECONDSURENAME = txtSegundoApellido4.Value;
        this.DEPENDFIRSTNAME = txtPrimerNombre4.Value;
        this.DEPENDSECONDNAME = txtSegundoNombre4.Value;
        this.DEPENDKINDSHIP = txtParentesco.Value;
        this.DEPENDHANDICAPP = boolDiscapacitado.Checked;
       }

       #endregion
    }
}

