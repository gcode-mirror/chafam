using System;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
//using Microsoft.SharePoint;



public partial class Novedades : System.Web.UI.Page
{
    #region Controls
   
    #endregion
   
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
              // Moisture();
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
   //private void Moisture()
   //{
   //    this.COMPNIT = txtNit.Text;
   //    this.COMPSUBNIT = txtSubNit.Text;
   //    this.COMPNAME = txtNombreORazonSocial.Text;
   //    this.EMPIDTYPE = txtTipoDeIdentificacion.Text;
   //    this.EMPIDNUM = txtNumeroDeIdentificacion.Text;
   //    this.EMPBRANCH = txtSucursal.Text;
   //    this.EMPFIRSTSURNAME = txtPrimerApellido.Text;
   //    this.EMPSECONDSURNAME = txtSegundoApellido.Text;
   //    this.EMPFIRSTNAME = txtPrimerNombre.Text;
   //    this.EMPSECONDNAME = txtSegundoNombre.Text;
   //    this.EMPMARITALSTATE = txtEstadoCivil.Text;
   //    this.EMPBIRTHDATE = pnldtFechaDeNacimiento.Text;
   //    this.EMPGENDER = txtSexo.Text;
   //    this.EMPJOININGDATE = pnldtFechaDeIngresoALaEmpresa.Text;
   //    this.EMPPOSITION = txtCargo.Text;
   //    this.EMPMONTHHOUR = txtHorasMes.Text;
   //    this.EMPBASICSALARY = txtSueldoBasico.Text;
   //    this.EMPSALECOMMISSION = txtComisionEnVentas.Text;
   //    this.EMPCITY = txtCiudad.Text;
   //    this.EMPADDRESS = txtDomicilio.Text;
   //    this.EMPEMAIL = txtEmail.Text;
   //    this.EMPPHONENUMB1 = txtTelefono.Text;
   //    this.EMPPHONENUMB2 = txtTelefono2.Text;
   //    this.EMPOWNER = boolEsSocioOPropietarioDeLaEmpresa.Checked;
   //    this.EMPAGRICULTUREW = boolEsTrabajadorDelSectorAgrario.Checked;
   //    this.EMPCOMPNIT = txtNit2.Text;
   //    this.EMPCOMPSUBNIT = txtSubNit2.Text;
   //    this.EMPCOMPNAME = txtNombreORazonSocial2.Text;
   //    this.EMPCOMPMONTHHOUR = txtHorasMes2.Text;
   //    this.EMPCOMPBASICSALARY = txtSueldoBasico2.Text;
   //    this.EMPCOMPSALECOMMISSION = txtComisionEnVentas2.Text;
   //    this.PARTNERIDTYPE = txtTipoDeIdentificacion2.Text;
   //    this.PARTNERIDNUM = txtNumeroDeIdentificacion2.Text;
   //    this.PARTNERLIVETOGETHER = boolConviven.Checked;
   //    this.PARTNERRELATIONSHIP = txtTipoDeRelacion.Text;
   //    this.PARTNERFIRSTSURNAME = txtPrimerApellido2.Text;
   //    this.PARTNERSECONDSURNAME = txtSegundoApellido2.Text;
   //    this.PARTNERFIRSTNAME = txtPrimerNombre2.Text;
   //    this.PARTNERSECONDNAME = txtSegundoNombre2.Text;
   //    this.PARTNERBIRTHDATE = pnldtFechaDeNacimiento2.Text;
   //    this.PARTNERADDRESS = txtDomicilio2.Text;
   //    this.PARTNERCITY = txtCiudad2.Text;
   //    this.PARTNERPHONENUMB = txtTelefono3.Text;
   //    this.PARTNEROCCUPATION = txtOcupacion.Text;
   //    this.PARTNEROCCUPSUBSIDY = boolRecibeSubsidio.Checked;
   //    this.PARTNEROCCUPNIT = txtNit3.Text;
   //    this.PARTNEROCCUPCOMPANYNAME = txtNombreORazonSocialDeLaEmpresaDondeTrabaja.Text;
   //    this.PARTNEROCCUPBASICSALARY = txtSueldoBasico3.Text;
   //    this.PARENTIDTYPE = txtTipoDeIdentificacion3.Text;
   //    this.PARENTIDNUM = txtNumeroDeIdentificacion3.Text;
   //    this.PARENTLIVETOGETHER = boolConviven2.Checked;
   //    this.PARENTFIRSTSURNAME = txtPrimerApellido3.Text;
   //    this.PARENTSECONDSURNAME = txtSegundoApellido3.Text;
   //    this.PARENTFIRSTNAME = txtPrimerNombre3.Text;
   //    this.PARENTSECONDNAME = txtSegundoNombre3.Text;
   //    this.PARENTBIRTHDATE = pnldtFechaDeNacimiento3.Text;
   //    this.PARENTOCCUPATION = txtOcupacion2.Text;
   //    this.PARENTADDRESS = txtDomicilio3.Text;
   //    this.PARENTCITY = txtCiudad3.Text;
   //    this.PARENTPHONENUMB = txtTelefono4.Text;
   //    this.PARENTEMPLOYEESUBSIDY = boolRecibeSubsidio2.Checked;
   //    this.PARENTEMPLOYEESONNAME = txtNombreDeLosHijosPorLosQueRecibeElSubsidio.Text;
   //    this.PARENTEMPLOYEENIT = txtNit4.Text;
   //    this.PARENTEMPLOYEECOMPNAME = txtNombreORazonSocialDeLaEmpresaDondeTrabaja2.Text;
   //    this.PARENTEMPLOYEEBASICSALARY = txtSueldoBasico4.Text;
   //    // Repeating Section Started
   //    {
   //        this.DEPENDIDTYPE = txtTipoDeIdentificacion4.Text;
   //        this.DEPENDIDNUM = txtNumeroDeIdentificacion4.Text;
   //        this.DEPENDPARENTIDTYPE = txtTipoDeIdentificacionDelPadreAsociado.Text;
   //        this.DEPENDPARENTIDNUM = txtNumeroDeIdentificacionDelPadreAsociado.Text;
   //        this.DEPENDPARENTGENDER = txtSexo2.Text;
   //        this.DEPENDBIRTHDATE = pnldtFechaDeNacimiento4.Text;
   //        this.DEPENDFIRSTSURENAME = txtPrimerApellido4.Text;
   //        this.DEPENDSECONDSURENAME = txtSegundoApellido4.Text;
   //        this.DEPENDFIRSTNAME = txtPrimerNombre4.Text;
   //        this.DEPENDSECONDNAME = txtSegundoNombre4.Text;
   //        this.DEPENDKINDSHIP = txtParentesco.Text;
   //        this.DEPENDHANDICAPP = boolDiscapacitado.Checked;
   //    }
   //}
   #endregion
}
