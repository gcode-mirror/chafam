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
        this.nit entidad asociadora = txtNitEntidadAsociadora.Value;
        this.nombre de la entidad asociadora = txtNombreDeLaEntidadAsociadora.Value;
        this.eps = txtEps.Value;
        this.fondo de pensiones = txtFondoDePensiones.Value;
        this.tipo de identificación = txtTipoDeIdentificacion.Value;
        this.número de identificación = txtNumeroDeIdentificacion.Value;
        this.primer apellido = txtPrimerApellido.Value;
        this.segundo apellido = txtSegundoApellido.Value;
        this.primer nombre = txtPrimerNombre.Value;
        this.segundo nombre = txtSegundoNombre.Value;
        this.fecha de nacimiento = pnldtFechaDeNacimiento.Value;
        this.sexo = txtSexo.Value;
        this.estado civil  = txtEstadoCivil.Value;
        this.dirección actual = txtDireccionActual.Value;
        this.estrato = txtEstrato.Value;
        this.barrio = txtBarrio.Value;
        this.ciudad = txtCiudad.Value;
        this.teléfono 1 = txtTelefono.Value;
        this.teléfono 2 = txtTelefono2.Value;
        this.correo electrónico = txtCorreoElectronico.Value;
        this.estudios realizados = txtEstudiosRealizados.Value;
        this.título otorgado = txtTituloOtorgado.Value;
        this.tipo de identificación = txtTipoDeIdentificacion2.Value;
        this.número de identificación = txtNumeroDeIdentificacion2.Value;
        this.primer apellido = txtPrimerApellido2.Value;
        this.segundo apellido = txtSegundoApellido2.Value;
        this.primer nombre = txtPrimerNombre2.Value;
        this.segundo nombre = txtSegundoNombre2.Value;
        this.conviven = txtConviven.Value;
        this.fecha de nacimiento = pnldtFechaDeNacimiento2.Value;
        this.sexo = txtSexo2.Value;
        this.dirección actual = txtDireccionActual2.Value;
        this.estrato = txtEstrato2.Value;
        this.barrio = txtBarrio2.Value;
        this.ciudad = txtCiudad2.Value;
        this.teléfono = txtTelefono3.Value;
        this.ocupación actual = txtOcupacionActual.Value;
        this.nombre de la empresa donde labora = txtNombreDeLaEmpresaDondeLabora.Value;
        this.nit = txtNit.Value;
        this.recibe subsidio?  = boolRecibeSubsidio.Checked;
        this.teléfono = txtTelefono4.Value;
        this.tipo de contrato = txtTipoDeContrato.Value;
        this.tipo de vinculación  = txtTipoDeVinculacion.Value;
        this.cantidad de personas a cargo = txtCantidadDePersonasACargo.Value;
        this.n° identificación = txtNIdentificacion.Value;
        this.primer apellido = txtPrimerApellido3.Value;
        this.segundo apellido = txtSegundoApellido3.Value;
        this.primer nombre = txtPrimerNombre3.Value;
        this.segundo nombre = txtSegundoNombre3.Value;
        this.sexo = txtSexo3.Value;
        this.fecha de nacimiento = pnldtFechaDeNacimiento3.Value;
        this.parentesco  = txtParentesco.Value;
        this.observaciones = txtObservaciones.Value;
       }

       #endregion
    }
}

