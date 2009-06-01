using System;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using CAFAM.WebPortal.WebUI;

namespace CAFAM.WebPortal.Forms
{
    public partial class AfiliacionEmpresas : System.Web.UI.Page
    {
        private EntAfiliacionEmpresa AfiliacionEmpresa;
        
        #region Controls
        protected Panel pnlDireccion;
        protected Panel pnlTelefono_1;
        protected Panel pnlTelefono_2;
        protected TextBox txtCorreoElectronico;
        protected CheckBox chkEsEntidadDocente;
        protected RadioButtonList rdTipoDeEmpresa;
        protected RadioButtonList rdClaseDeSociedad;
        protected TextBox txtCualTitulo;
        protected Wizard wzDatosDelTrabajador;
        protected Label lblClaseDeSociedad2Titulo;
        protected Label lblCualTitulo;
        protected RequiredFieldValidator rqtxtCualTitulo;        

        protected TextBox txtNit;
        protected TextBox txtNombreORazonSocial;
        protected TextBox txtCiudad;
        protected TextBox txtCodigoCiudad;
        protected TextBox txtDireccion;
        protected TextBox txtTelefono;
        protected TextBox txtTelefono2;
        protected TextBox txtAa;
        protected TextBox txtFax;
        protected TextBox txtEsEntidadDocente;
        protected TextBox txtNombreGerenteORepresentanteLegal;
        protected TextBox txtNombreJefeDePersonal;
        protected TextBox txtNDeEscrituraConstitucion;
        protected TextBox txtNNotaria;
        protected Panel pnldtFechaConstitucion;
        protected TextBox txtTipoDeEmpresa;
        protected TextBox txtClaseDeSociedad2;
        protected TextBox txtClaseDeActividadEconomicaRegistradaParaEfectosTributariosRutCiuc;
        protected TextBox txtNombre;
        protected TextBox txtCodigo;
        protected TextBox txtSubsidioFamiliar;
        protected TextBox txtSena;
        protected TextBox txtIcbf;
        protected TextBox txtEsap;
        protected TextBox txtInstitutosTecnicos;
        protected CheckBox boolEsFilialDeOtraEmpresaYaAfiliadaALaCaja;
        protected TextBox txtCual;
        protected TextBox txtLaCasaMatrizSeEncuentraUbicadaEnLaCiudadDe;
        protected TextBox txtNit2;
        protected TextBox txtNombreORazonSocial2;
        protected CheckBox boolEstuvoOEstaLaCompaniaAfiliadaAUnaCajaDeCompensacionFamiliar;
        protected TextBox txtCual2;
        protected TextBox txtIndiqueElMotivoPorElCualSeDesafiliaDeEsaCaja;
        protected TextBox txtNumeroTotalDeTrabajadores;
        protected TextBox txtValorDeLaUltimaNomina;
        protected TextBox txtCorrespondienteAlMesDe;
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
                 //  Moisture();
               }
               DateTimeCustomControl dtCustomFcha = new DateTimeCustomControl();
               dtCustomFcha.AjaxFunctionality = true;
               dtCustomFcha.ID = "dtCustomFcha";
               dtCustomFcha.TextBoxCSSClass = "form_text";
               dtCustomFcha.Required = true;
               dtCustomFcha.ValidatorsCSSClass = "form_field_error_message";
                
               pnldtFechaConstitucion.Controls.Add(dtCustomFcha);

               // TO DO: Convert pnldtFechaConstitucion to Custom DateTimePicker

               AddressControl ucDireccion = new AddressControl();
               ucDireccion.ID = "Address";
               ucDireccion.TextBoxClass = "form_text";
               ucDireccion.ValidatorClass = "form_field_error_message";

               pnlDireccion.Controls.Add(ucDireccion);


               TelephoneControl txtTelefono = new TelephoneControl();
               txtTelefono.ID = "txtTelefono";
               txtTelefono.Required = false;
               txtTelefono.ValidationGroup = "grpUserNew";
               txtTelefono.ValidatorsCSSClass = "form_field_error_message";
               txtTelefono.TextBoxCSSClass = "form_text";
               pnlTelefono_1.Controls.Add(txtTelefono);

               TelephoneControl txtTelefono2 = new TelephoneControl();
               txtTelefono2.ID = "txtTelefono2";
               txtTelefono2.Required = false;
               txtTelefono2.ValidationGroup = "grpUserNew";
               txtTelefono2.ValidatorsCSSClass = "form_field_error_message";
               txtTelefono2.TextBoxCSSClass = "form_text";
               pnlTelefono_2.Controls.Add(txtTelefono2);
                
                
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
           AddressControl ucDireccion = (AddressControl)pnlDireccion.FindControl("Address");
           TelephoneControl ucTelefono = (TelephoneControl)pnlDireccion.FindControl("txtTelefono");
           TelephoneControl ucTelefono_2 = (TelephoneControl)pnlDireccion.FindControl("txtTelefono2");
           DateTimeCustomControl dtCustomFcha = (WebUI.DateTimeCustomControl)pnldtFechaConstitucion.FindControl("dtCustomFcha");

           string Direccion = "";//ucDireccion.Address;
           string telefono_1 = ucTelefono.Tel;
           string telefono_2 = ucTelefono_2.Tel;
           string FechaConstitucion = dtCustomFcha.Date.ToString();
           AfiliacionEmpresa= new EntAfiliacionEmpresa(txtNit.Text,txtNombreORazonSocial.Text,txtCiudad.Text, 
               txtCodigoCiudad.Text,Direccion,telefono_1, telefono_2,txtAa.Text,txtFax.Text,txtCorreoElectronico.Text,chkEsEntidadDocente.Checked,
               txtNombreGerenteORepresentanteLegal.Text,txtNombreJefeDePersonal.Text,txtNDeEscrituraConstitucion.Text,
               txtNNotaria.Text,FechaConstitucion,rdTipoDeEmpresa.SelectedItem.Text,rdClaseDeSociedad.SelectedItem.Text,txtClaseDeActividadEconomicaRegistradaParaEfectosTributariosRutCiuc.Text,
               txtCodigo.Text,txtSubsidioFamiliar.Text,txtSena.Text,txtIcbf.Text,txtEsap.Text,txtInstitutosTecnicos.Text,
               boolEsFilialDeOtraEmpresaYaAfiliadaALaCaja.Checked,txtCualTitulo.Text,txtLaCasaMatrizSeEncuentraUbicadaEnLaCiudadDe.Text,
               txtNit2.Text,txtNombreORazonSocial2.Text,boolEstuvoOEstaLaCompaniaAfiliadaAUnaCajaDeCompensacionFamiliar.Checked,
               txtCual2.Text,txtIndiqueElMotivoPorElCualSeDesafiliaDeEsaCaja.Text,txtNumeroTotalDeTrabajadores.Text,txtValorDeLaUltimaNomina.Text,
               txtCorrespondienteAlMesDe.Text);


           Session["AfiliacionEmpresa"] = AfiliacionEmpresa;
           wzDatosDelTrabajador.FinishDestinationPageUrl = "rptAfiliacionEmpresas.aspx";
       }

       protected void OnNext(object sender, WizardNavigationEventArgs e)
       {
       }

       #region bindings
       private void Moisture()
       {
       }

       #endregion
       protected void rdClaseDeSociedad_SelectedIndexChanged(object sender, EventArgs e)
       {
           if (rdClaseDeSociedad.SelectedValue == "12")
           {
               lblClaseDeSociedad2Titulo.Visible = true;
               txtClaseDeSociedad2.Visible = true;
           }
           else 
           {
               lblClaseDeSociedad2Titulo.Visible = false;
               txtClaseDeSociedad2.Visible = false;

           }
       }

       protected void boolEsFilialDeOtraEmpresaYaAfiliadaALaCaja_CheckedChanged(object sender, EventArgs e)
       {
           if (boolEsFilialDeOtraEmpresaYaAfiliadaALaCaja.Checked)
           {
               lblCualTitulo.Visible = true;
               txtCualTitulo.Visible = true;
               rqtxtCualTitulo.Enabled = true;
           }
           else
           {
               lblCualTitulo.Visible = false;
               txtCualTitulo.Visible = false;
               rqtxtCualTitulo.Enabled = false;
           }
       }
    }
}