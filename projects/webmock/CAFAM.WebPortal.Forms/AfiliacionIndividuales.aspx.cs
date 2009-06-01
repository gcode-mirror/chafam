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


namespace CAFAM.WebPortal.Forms
{
    public class AfiliacionIndividuales : System.Web.UI.Page
    {
        #region Controls
        protected TextBox txtNitEntidadAsociadora;
        protected TextBox txtNombreDeLaEntidadAsociadora;
        protected TextBox txtEps;
        protected TextBox txtFondoDePensiones;
	  protected RadioButtonList rdTipoDeIdentificacion;
	  protected RadioButtonList rdTipoDeIdentificacion2;
        protected TextBox txtNumeroDeIdentificacion;
        protected TextBox txtPrimerApellido;
        protected TextBox txtSegundoApellido;
        protected TextBox txtPrimerNombre;
        protected TextBox txtSegundoNombre;
        protected TextBox txtIngresosMensuales;
        protected Panel pnldtFechaDeNacimiento;
	  protected DateTimeCustomControl ctrlFechaDeNacimiento;

	  protected RadioButtonList txtSexo;
	  protected RadioButtonList rdEstadoCivil;

        //protected TextBox txtDireccionActual;
        //protected TextBox txtEstrato;
        //protected TextBox txtBarrio;
        //protected TextBox txtCiudad;

	  protected AddressControl ctrlDireccionActual;

	  protected Panel pnlDireccionActual;
	  protected Panel pnlDireccionActual2;

        protected TextBox txtTelefono;
        protected TextBox txtTelefono2;
	  protected Panel pnlTelefono;
	  protected Panel pnlTelefono2;


	  protected TelephoneControl crtlTelefono;
	  protected TelephoneControl crtlTelefono2;

        protected TextBox txtCorreoElectronico;
        protected RadioButtonList rdEstudiosRealizados;
        protected TextBox txtTituloOtorgado;
        protected TextBox txtTipoDeIdentificacion2;
        protected TextBox txtNumeroDeIdentificacion2;
        protected TextBox txtPrimerApellido2;
        protected TextBox txtSegundoApellido2;
        protected TextBox txtPrimerNombre2;
        protected TextBox txtSegundoNombre2;
        protected CheckBox chkConviven;
        protected Panel pnldtFechaDeNacimiento2;
	  protected DateTimeCustomControl ctrlFechaDeNacimiento2;

	  protected RadioButtonList txtSexo2;


        //protected TextBox txtDireccionActual2;
        //protected TextBox txtEstrato2;
        //protected TextBox txtBarrio2;
        //protected TextBox txtCiudad2;
	  protected Panel pnlDireccionActual2; 

        protected Panel pnlTelefono3;
        protected RadioButtonList rbOcupacionActual;
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
	  protected RadioButtonList txtSexo3;
        protected Panel pnldtFechaDeNacimiento3;
	  protected DateTimeCustomControl ctrlFechaDeNacimiento3;

        protected TextBox txtParentesco;
        protected TextBox txtObservaciones;



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
			  Moisture();

			  FillDefaults();
               }

               // TO DO: Convert pnldtFechaDeNacimiento to Custom DateTimePicker
               // TO DO: Convert pnldtFechaDeNacimiento2 to Custom DateTimePicker
               // TO DO: Convert pnldtFechaDeNacimiento3 to Custom DateTimePicker
            }
            catch (Exception Ex)
            {
		    //TODO - ask martin about log in tos event viewer
		    
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

	 private void FillDefaults()
	 {

	   ListBinder.BindIdentificationType(this.rdTipoDeIdentificacion, "Title", "Value");

	   ListBinder.BindMaritaStatus(this.rdEstadoCivil, "Title", "ID");

	   ctrlDireccionActual = ListBinder.BindPanel(pnlDireccionActual, "DireccionActual", "Direcci&oacute;n actual");

	   ctrlFechaDeNacimiento = ListBinder.BindDate(pnldtFechaDeNacimiento);

	   ctrlFechaDeNacimiento2 = ListBinder.BindDate(pnldtFechaDeNacimiento2);

	   ctrlFechaDeNacimiento3 = ListBinder.BindDate(pnldtFechaDeNacimiento3);

	   crtlTelefono = ListBinder.BindTelephone(pnlTelefono, "txtTelefono", true, null, "form_field_error_message", "form_text");

	   crtlTelefono2 = ListBinder.BindTelephone(pnlTelefono2, "txtTelefono2", false, null, "form_field_error_message", "form_text");

	 }

       #endregion
    }
}

