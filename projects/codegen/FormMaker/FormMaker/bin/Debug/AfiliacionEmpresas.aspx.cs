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
               if (this.IsPostBack())
               {
                   // Do Settings here
               }
               else
               {
                   Moisture();
               }

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

