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
//using CAFAM.WebPortal.WebUI;
using System.Collections.Generic;


public partial class Novedades : System.Web.UI.Page
{
    #region Controls
    private  DAO.FormNovedadesDetalle entidadNovedadTrabajador;
    protected DateTimeCustomControl dtFechaDeNacimiento;
    protected DateTimeCustomControl dtFechaDeIngresoALaEmpresa;
    protected DateTimeCustomControl dtFechaDeNacimiento2;
    protected DateTimeCustomControl dtFechaDeNacimiento3;
    protected DateTimeCustomControl dtFechaDeNacimiento4;
    protected Button btnCargarPersonaCargo;


    public List<DetalleTrabajador> lstDetalleTrabajadores
    {
        get
        {
            List<DetalleTrabajador> Lst = (List<DetalleTrabajador>)this.ViewState["lstDetalleTrabajadores"];
            if (Lst == null)
                Lst = new List<DetalleTrabajador>();

            return Lst;
        }
    }
    #endregion
   
   protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            CreateDateControls();
           

           if (this.IsPostBack)
           {
               
           }
           else
           {
                wzNovedadesTrabajador.StartNextButtonText = "Siguiente";
                wzNovedadesTrabajador.StepNextButtonText = "Siguiente";
                wzNovedadesTrabajador.StepPreviousButtonText = "Anterior";
                wzNovedadesTrabajador.FinishPreviousButtonText = "Anterior";
                wzNovedadesTrabajador.FinishCompleteButtonText = "Imprimir";
              // Moisture();
              //AutoCompleteUserData();
              BindData();
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

    private void AutoCompleteUserData()
    {
        SPWeb web = SPContext.Current.Web;
        BLL.UserBLL userBBL = new CAFAM.WebPortal.BLL.UserBLL(web);
        Entities.User Usuario = userBBL.GetUser(web.CurrentUser.LoginName);

        txtNit.Text = Usuario.NIT;
        txtSubNit.Text = Usuario.SubNIT;
        txtNombreORazonSocial.Text =
            Usuario.FirstName + " " + Usuario.SecondName + " " + 
            Usuario.FirstSurname + " " + Usuario.SecondSurname;
    }

   private void CreateDateControls()
   {
       dtFechaDeNacimiento;= new DateTimeCustomControl();
       dtFechaDeNacimiento.AjaxFunctionality = false;
       dtFechaDeNacimiento.TextBoxCSSClass = "form_text";
       dtFechaDeNacimiento.ValidatorsCSSClass = "form_field_error_message";
       dtFechaDeNacimiento.Required = true;
       pnldtFechaDeNacimiento.Controls.Add(dtFechaDeNacimiento);
       
       dtFechaDeIngresoALaEmpresa;= new DateTimeCustomControl();
       dtFechaDeIngresoALaEmpresa.AjaxFunctionality = false;
       dtFechaDeIngresoALaEmpresa.TextBoxCSSClass = "form_text";
       dtFechaDeIngresoALaEmpresa.ValidatorsCSSClass = "form_field_error_message";
       dtFechaDeIngresoALaEmpresa.Required = true;
       pnldtFechaDeIngresoALaEmpresa.Controls.Add(dtFechaDeIngresoALaEmpresa);

       dtFechaDeNacimiento2;= new DateTimeCustomControl();
       dtFechaDeNacimiento2.AjaxFunctionality = false;
       dtFechaDeNacimiento2.TextBoxCSSClass = "form_text";
       dtFechaDeNacimiento2.ValidatorsCSSClass = "form_field_error_message";
       dtFechaDeNacimiento2.Required = true;
       pnldtFechaDeNacimiento2.Controls.Add(dtFechaDeNacimiento2);

       dtFechaDeNacimiento3;= new DateTimeCustomControl();
       dtFechaDeNacimiento3.AjaxFunctionality = false;
       dtFechaDeNacimiento3.TextBoxCSSClass = "form_text";
       dtFechaDeNacimiento3.ValidatorsCSSClass = "form_field_error_message";
       dtFechaDeNacimiento3.Required = true;
       pnldtFechaDeNacimiento3.Controls.Add(dtFechaDeNacimiento3);

       dtFechaDeNacimiento4;= new DateTimeCustomControl();
       dtFechaDeNacimiento4.AjaxFunctionality = false;
       dtFechaDeNacimiento4.TextBoxCSSClass = "form_text";
       dtFechaDeNacimiento4.ValidatorsCSSClass = "form_field_error_message";
       dtFechaDeNacimiento4.Required = true;
       pnldtFechaDeNacimiento4.Controls.Add(dtFechaDeNacimiento4);

   }
   protected void OnActiveStepChanged(object sender, EventArgs e)
   {
   }

   protected void OnFinish(object sender, WizardNavigationEventArgs e)
   {
       try
        {
            if (this.lstDetalleTrabajadores.Count == 0)
            {
                FinalMsg.Text = "Debe cargar al menos una Novedad de Trabajador";
                return;
            }

            // Form to Entity
            Moisture();

            // Commit Form to DB or Sharepoint
            CommitForm();
        }
        catch (Exception Ex)
        {
            lblMessage.Text = "Error: " + Ex.Message;
        }

        FinalMsg.Text = "La Operaci�n ha sido completada exitosamente y falta la impresion";
   }
   protected void OnNext(object sender, WizardNavigationEventArgs e)
   {
   }

     private void BindData()
        {
            try
            {
                SPWeb web = SPContext.Current.Web;

                BLL.IdentificationTypeBLL identificationTypeBLL = new CAFAM.WebPortal.BLL.IdentificationTypeBLL(web);

                DataSet dsIdentificationType = identificationTypeBLL.GetIdentificationTypeList();

                rdTipoDeIdentificacion.DataSource = dsIdentificationType;
                rdTipoDeIdentificacion.DataTextField = "Title";
                rdTipoDeIdentificacion.DataValueField = "Value";
                rdTipoDeIdentificacion.DataBind();
                rdTipoDeIdentificacion.Items[0].Selected = true;

                rdlIdentificacionPariente.DataSource = dsIdentificationType;
                rdlIdentificacionPariente.DataTextField = "Title";
                rdlIdentificacionPariente.DataValueField = "Value";
                rdlIdentificacionPariente.DataBind();
                rdlIdentificacionPariente.Items[0].Selected = true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }

    protected void btnCargarPersonaCargo_Click(object sender, EventArgs e)
    {
        if (this.lstTrabajadores.Count < 14)
        { 
            DetalleTrabajador myDetalleTrabajador = new DetalleTrabajador
            {
                Dependidtype =  rdlIdentificacionTrabajador.SelectedValue,
                Dependidnum = txtNumeroDeIdentificacion4.Text,
                Dependparentidtype = rdlIdentificacionPariente.SelectedValue,
                Dependparentidnum = txtTipoDeIdentificacionDelPadreAsociado.Text,
                Dependparentgender = rdlSexoACargo.SelectedValue,
                Dependbirthdate = dtFechaDeNacimiento4.Date,
                Dependfirstsurename = txtPrimerApellido4.Text,
                Dependsecondsurename = txtSegundoApellido4.Text,
                Dependfirstname = txtPrimerNombre4.Text,
                Dependsecondname = txtSegundoNombre4.Text,
                Dependkindship = txtParentesco.Text,
                Dependhandicapp = boolDiscapacitado.SelectedValue
            };

            List<DetalleTrabajador> Lst = lstDetalleTrabajadores;
            Lst.Add(myDetalleTrabajador);
            this.gvDetalleTrabajadores.DataSource = Lst;
            this.ViewState["lstDetalleTrabajadores"] = Lst;
            this.gvDetalleTrabajadores.DataBind();
        }
    }
   #region bindings
   private void Moisture()
   {
        try
        {
            entidadNovedadTrabajador = new DAO.FormNovedadesDetalle();

            entidadNovedadTrabajador.COMPNIT = txtNit.Text;
            entidadNovedadTrabajador.COMPSUBNIT = txtSubNit.Text;
            entidadNovedadTrabajador.COMPNAME = txtNombreORazonSocial.Text;
            entidadNovedadTrabajador.EMPIDTYPE = txtTipoDeIdentificacion.Text;
            entidadNovedadTrabajador.EMPIDNUM = txtNumeroDeIdentificacion.Text;
            entidadNovedadTrabajador.EMPBRANCH = txtSucursal.Text;
            entidadNovedadTrabajador.EMPFIRSTSURNAME = txtPrimerApellido.Text;
            entidadNovedadTrabajador.EMPSECONDSURNAME = txtSegundoApellido.Text;
            entidadNovedadTrabajador.EMPFIRSTNAME = txtPrimerNombre.Text;
            entidadNovedadTrabajador.EMPSECONDNAME = txtSegundoNombre.Text;
            entidadNovedadTrabajador.EMPMARITALSTATE = txtEstadoCivil.Text;
            entidadNovedadTrabajador.EMPBIRTHDATE = pnldtFechaDeNacimiento.Text;
            entidadNovedadTrabajador.EMPGENDER = txtSexo.Text;
            entidadNovedadTrabajador.EMPJOININGDATE = pnldtFechaDeIngresoALaEmpresa.Text;
            entidadNovedadTrabajador.EMPPOSITION = txtCargo.Text;
            entidadNovedadTrabajador.EMPMONTHHOUR = txtHorasMes.Text;
            entidadNovedadTrabajador.EMPBASICSALARY = txtSueldoBasico.Text;
            entidadNovedadTrabajador.EMPSALECOMMISSION = txtComisionEnVentas.Text;
            entidadNovedadTrabajador.EMPCITY = txtCiudad.Text;
            entidadNovedadTrabajador.EMPADDRESS = txtDomicilio.Text;
            entidadNovedadTrabajador.EMPEMAIL = txtEmail.Text;
            entidadNovedadTrabajador.EMPPHONENUMB1 = txtTelefono.Text;
            entidadNovedadTrabajador.EMPPHONENUMB2 = txtTelefono2.Text;
            entidadNovedadTrabajador.EMPOWNER = boolEsSocioOPropietarioDeLaEmpresa.Checked;
            entidadNovedadTrabajador.EMPAGRICULTUREW = boolEsTrabajadorDelSectorAgrario.Checked;
            entidadNovedadTrabajador.EMPCOMPNIT = txtNit2.Text;
            entidadNovedadTrabajador.EMPCOMPSUBNIT = txtSubNit2.Text;
            entidadNovedadTrabajador.EMPCOMPNAME = txtNombreORazonSocial2.Text;
            entidadNovedadTrabajador.EMPCOMPMONTHHOUR = txtHorasMes2.Text;
            entidadNovedadTrabajador.EMPCOMPBASICSALARY = txtSueldoBasico2.Text;
            entidadNovedadTrabajador.EMPCOMPSALECOMMISSION = txtComisionEnVentas2.Text;
            entidadNovedadTrabajador.PARTNERIDTYPE = txtTipoDeIdentificacion2.Text;
            entidadNovedadTrabajador.PARTNERIDNUM = txtNumeroDeIdentificacion2.Text;
            entidadNovedadTrabajador.PARTNERLIVETOGETHER = boolConviven.Checked;
            entidadNovedadTrabajador.PARTNERRELATIONSHIP = txtTipoDeRelacion.Text;
            entidadNovedadTrabajador.PARTNERFIRSTSURNAME = txtPrimerApellido2.Text;
            entidadNovedadTrabajador.PARTNERSECONDSURNAME = txtSegundoApellido2.Text;
            entidadNovedadTrabajador.PARTNERFIRSTNAME = txtPrimerNombre2.Text;
            entidadNovedadTrabajador.PARTNERSECONDNAME = txtSegundoNombre2.Text;
            entidadNovedadTrabajador.PARTNERBIRTHDATE = pnldtFechaDeNacimiento2.Text;
            entidadNovedadTrabajador.PARTNERADDRESS = txtDomicilio2.Text;
            entidadNovedadTrabajador.PARTNERCITY = txtCiudad2.Text;
            entidadNovedadTrabajador.PARTNERPHONENUMB = txtTelefono3.Text;
            entidadNovedadTrabajador.PARTNEROCCUPATION = txtOcupacion.Text;
            entidadNovedadTrabajador.PARTNEROCCUPSUBSIDY = boolRecibeSubsidio.Checked;
            entidadNovedadTrabajador.PARTNEROCCUPNIT = txtNit3.Text;
            entidadNovedadTrabajador.PARTNEROCCUPCOMPANYNAME = txtNombreORazonSocialDeLaEmpresaDondeTrabaja.Text;
            entidadNovedadTrabajador.PARTNEROCCUPBASICSALARY = txtSueldoBasico3.Text;
            entidadNovedadTrabajador.PARENTIDTYPE = txtTipoDeIdentificacion3.Text;
            entidadNovedadTrabajador.PARENTIDNUM = txtNumeroDeIdentificacion3.Text;
            entidadNovedadTrabajador.PARENTLIVETOGETHER = boolConviven2.Checked;
            entidadNovedadTrabajador.PARENTFIRSTSURNAME = txtPrimerApellido3.Text;
            entidadNovedadTrabajador.PARENTSECONDSURNAME = txtSegundoApellido3.Text;
            entidadNovedadTrabajador.PARENTFIRSTNAME = txtPrimerNombre3.Text;
            entidadNovedadTrabajador.PARENTSECONDNAME = txtSegundoNombre3.Text;
            entidadNovedadTrabajador.PARENTBIRTHDATE = pnldtFechaDeNacimiento3.Text;
            entidadNovedadTrabajador.PARENTOCCUPATION = txtOcupacion2.Text;
            entidadNovedadTrabajador.PARENTADDRESS = txtDomicilio3.Text;
            entidadNovedadTrabajador.PARENTCITY = txtCiudad3.Text;
            entidadNovedadTrabajador.PARENTPHONENUMB = txtTelefono4.Text;
            entidadNovedadTrabajador.PARENTEMPLOYEESUBSIDY = boolRecibeSubsidio2.Checked;
            entidadNovedadTrabajador.PARENTEMPLOYEESONNAME = txtNombreDeLosHijosPorLosQueRecibeElSubsidio.Text;
            entidadNovedadTrabajador.PARENTEMPLOYEENIT = txtNit4.Text;
            entidadNovedadTrabajador.PARENTEMPLOYEECOMPNAME = txtNombreORazonSocialDeLaEmpresaDondeTrabaja2.Text;
            entidadNovedadTrabajador.PARENTEMPLOYEEBASICSALARY = txtSueldoBasico4.Text;

            foreach (DetalleTrabajador Tr in lstDetalleTrabajadores)
            {
               // FormNovedadesDetalle entNovedadesDetalle = new FormNovedadesDetalle();
               //entNovedadesDetalle.DEPENDIDTYPE = Tr.DEPENDIDTYPE  rdlIdentificacionTrabajador.SelectedValue,
               //entNovedadesDetalle.DEPENDIDNUM = txtNumeroDeIdentificacion4.Text;
               //entNovedadesDetalle.DEPENDPARENTIDTYPE = rdlIdentificacionPariente.SelectedValue,
               //entNovedadesDetalle.DEPENDPARENTIDNUM = txtTipoDeIdentificacionDelPadreAsociado.Text,
               //entNovedadesDetalle.DEPENDPARENTGENDER = rdlSexoACargo.SelectedValue,
               //entNovedadesDetalle.DEPENDBIRTHDATE = pnldtFechaDeNacimiento4.Text;
               //entNovedadesDetalle.DEPENDFIRSTSURENAME = txtPrimerApellido4.Text;
               //entNovedadesDetalle.DEPENDSECONDSURENAME = txtSegundoApellido4.Text;
               //entNovedadesDetalle.DEPENDFIRSTNAME = txtPrimerNombre4.Text;
               //entNovedadesDetalle.DEPENDSECONDNAME = txtSegundoNombre4.Text;
               //entNovedadesDetalle.DEPENDKINDSHIP = txtParentesco.Text;
               //entNovedadesDetalle.DEPENDHANDICAPP = boolDiscapacitado.Checked;
               // Dependidtype =  rdlIdentificacionTrabajador.SelectedValue,
               // Dependidnum = txtNumeroDeIdentificacion4.Text,
               // Dependparentidtype = rdlIdentificacionPariente.SelectedValue,
               // Dependparentidnum = txtTipoDeIdentificacionDelPadreAsociado.Text,
               // Dependparentgender = rdlSexoACargo.SelectedValue,
               // Dependbirthdate = dtFechaDeNacimiento4.Date,
               // Dependfirstsurename = txtPrimerApellido4.Text,
               // Dependsecondsurename = txtSegundoApellido4.Text,
               // Dependfirstname = txtPrimerNombre4.Text,
               // Dependsecondname = txtSegundoNombre4.Text,
               // Dependkindship = txtParentesco.Text,
               // Dependhandicapp = boolDiscapacitado.SelectedValue


               FormNovedadesTrabajador.NovedadesDetalle.Add(Tr);
            }                
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
   }

    private void CommitForm()
    {
        try
        {
            entidadNovedadTrabajador.Insert();
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
    }
   #endregion

    [Serializable]
    public class DetalleTrabajador
    {
        public string Dependidtype { get; set; }
        public string Dependidnum{ get; set; }
        public string Dependparentidtype{ get; set; }
        public string Dependparentidnum{ get; set; }
        public string Dependparentgender{ get; set; }
        public DateTime? Dependbirthdate{ get; set; }
        public string Dependfirstsurename{ get; set; }
        public string Dependsecondsurename{ get; set; }
        public string Dependfirstname{ get; set; }
        public string Dependsecondname{ get; set; }
        public string Dependkindship{ get; set; }
        public string Dependhandicapp{ get; set; }

        public DetalleTrabajador()
        {
        }
    }
}