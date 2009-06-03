<%@ Assembly Name="CAFAM.WebPortal.Forms, Version=1.0.0.0, Culture=neutral, PublicKeyToken=ae88e728e51b79b3" %>
<%@ Page Language="C#" Inherits="CAFAM.WebPortal.Forms.AfiliacionIndividuales" Title="Formulario" MasterPageFile="~masterurl/default.master" EnableSessionState="True" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Assembly="AjaxControlToolkit, Version=1.0.10301.0, Culture=Neutral, PublicKeyToken=28f01b0e84b6d53e"
    Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%--<%@ Assembly Name="CAFAM.WebPortal.Forms, Version=1.0.0.0, Culture=neutral, PublicKeyToken=ae88e728e51b79b3" %>--%>

<%--<%@ Page Language="C#" Inherits="CAFAM.WebPortal.Forms.AfiliacionIndividuales" CodeFile="~/AfiliacionIndividuales.aspx.cs" Title="Formulario" MasterPageFile="~/MasterPage2.master" %>--%>

<%--<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>--%>
<%--<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>--%>

<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server" ID="MainContent">
    <link rel="Stylesheet" href="~/_layouts/StyleSheet.css" type="text/css" />
<script type='text/javascript'>
    _spOriginalFormAction = document.forms[0].action;
    _spSuppressFormOnSubmitWrapper = true;
</script>
 <asp:ScriptManager ID="scriptMng" runat="server"></asp:ScriptManager>

<table id="MSO_ContentTable" class="ms-propertysheet" height="100%" cellspacing="0" cellpadding="0" border="0" width="100%">
<tbody>
<tr>
<td class="ms-bodyareaframe" height="100%" valign="top">

<asp:Wizard runat="server" ID="wzDatosDelTrabajador" Font-Names="verdana" CssClass="content-more"
   ForeColor="navy" Style="border: outset 1px black" OnNextButtonClick="OnNext"
   OnActiveStepChanged="OnActiveStepChanged" OnFinishButtonClick="OnFinish" ActiveStepIndex="0"
   DisplaySideBar="false">
<WizardSteps>
<asp:WizardStep ID="wzDatosDelTrabajadorStep" runat="server" StepType="auto" Title="">
	  <table id="ctl00_PlaceHolderMain_tblMain" class="ms-formbody" style="width: 700px;">
        <tr>
            <td align="center" class="form_section_header">
                <asp:Label runat="server" ID="TituloPrincipal" Text="Afiliaci&oacute;n de Trabajadores Independientes" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNitEntidadAsociadoraTitulo" Text="Nit entidad asociadora" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNitEntidadAsociadora" CssClass="form_text" MaxLength="13"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revNitEntidadAsociadora" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtNitEntidadAsociadora"
                    ValidationExpression="^[\d]*$" ></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label runat="server" ID="lblNombreDeLaEntidadAsociadoraTitulo" Text="Nombre de la entidad asociadora" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNombreDeLaEntidadAsociadora" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblEpsTitulo" Text="Eps" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtEps" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvEps" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtEps" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblFondoDePensionesTitulo" Text="Fondo de pensiones" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtFondoDePensiones" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvFondoDePensiones" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtFondoDePensiones" ></asp:RequiredFieldValidator>
            </td>
        </tr>


        <!--TI, CC, CE-->
        <tr>        
            <td>
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td colspan="10">
                            <asp:Label runat="server" ID="lblIdentificacionTitulo" Text="Identificaci&oacute;n" CssClass="form_label"/><span class="form_label"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblTipoDeIdentificacionTitulo" Text="Tipo" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                        </td>
                        <td>
                            <%--<asp:TextBox runat="server" ID="txtTipoDeIdentificacion" CssClass="form_text" MaxLength="1"/>--%>
                            <asp:RadioButtonList ID="rdTipoDeIdentificacion" runat="server" repeatdirection="Horizontal" CssClass="form_radios" />
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblNumeroDeIdentificacionTitulo" Text="Numero De Identificaci&oacute;n" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtNumeroDeIdentificacion" CssClass="form_text" MaxLength="11"/>
                        </td>                        
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rqvTipoDeIdentificacion" runat="server" CssClass="form_field_error_message"
                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="rdTipoDeIdentificacion" ></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rqvNumeroDeIdentificacion" runat="server" CssClass="form_field_error_message"
                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion" ></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="revNumeroDeIdentificacion" runat="server" CssClass="form_field_error_message"
                                ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion"
                                ValidationExpression="^[\d]*$" ></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>



    <!-- Bloque Appellido -->
      <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblApellidoTitulo" Text="Apellidos" CssClass="form_label"/><span class="form_label"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="Label1" Text="Primero" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtPrimerApellido" CssClass="form_text" MaxLength="20"/>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label runat="server" ID="Label2" Text="Segundo" CssClass="form_label"/><span class="form_label">&nbsp;
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="lblSegundoApellidoTitulo" CssClass="form_text" MaxLength="20"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="form_field_error_message"
                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerApellido" ></asp:RequiredFieldValidator>
                        </td>
                    </tr>                    
                </table>
            </td>
        </tr>








	  <!-- Bloque Nombre -->
        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblNombreTitulo" Text="Nombres" CssClass="form_label"/><span class="form_label"></span>
                        </td>
                    </tr>                
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="Label3" Text="Primero" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtPrimerNombre" CssClass="form_text" MaxLength="20"/>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label runat="server" ID="Label4" Text="Segundo" CssClass="form_label"/>&nbsp;
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtSegundoNombre" CssClass="form_text" MaxLength="20"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="form_field_error_message"
                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerNombre" ></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>                
            </td>
        </tr>



        <tr>
            <td>
                <asp:Label runat="server" ID="lblIngresosMensualesTitulo" Text="Ingresos Mensuales" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtIngresosMensuales" CssClass="form_text" MaxLength="9"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvIngresosMensuales" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtIngresosMensuales" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--AAAAMMDD-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblFechaDeNacimientoTitulo" Text="Fecha De Nacimiento (dd/mm/aaaa)" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Panel ID="pnldtFechaDeNacimiento" runat="server"/>
            </td>
        </tr>

        <!--M/F-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSexoTitulo" Text="Sexo" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
		    <asp:RadioButtonList ID="txtSexo" runat="server" repeatdirection="Horizontal" CssClass="form_radios">
			  <asp:ListItem Value="F" Text="Femenino&nbsp;&nbsp;" />
			  <asp:ListItem Value="M" Text="Masculino&nbsp;&nbsp;" />
		    </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvSexo" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSexo" ></asp:RequiredFieldValidator>
            </td>
        </tr>

        <!-- Estado Civil - 1 Soltero, 2 Casado, 3 Viudo, 4 Separado, 5 Uni&oacute;n Libre-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblEstadoCivilTitulo" Text="Estado Civil " CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
		    <asp:RadioButtonList ID="rdEstadoCivil" runat="server" repeatdirection="Horizontal" CssClass="form_radios" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvEstadoCivil" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="rdEstadoCivil" ></asp:RequiredFieldValidator>
            </td>
        </tr>



        <!--formato de direcciones-->
       <tr>
            <td>
                <asp:Label runat="server" ID="lblDireccionActualTitulo" Text="Direcci&oacute;n Actual" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr> 
        <tr>
            <td>
                <asp:Panel runat="server" ID="pnlDireccionActual" ></asp:Panel>
            </td>
        </tr>


	  <!--formato de telefono -->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTelefonoTitulo" Text="Tel&eacute;fono 1" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel runat="server" ID="pnlTelefono" />
            </td>
        </tr>

	  <!--formato de telefono -->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTelefono2Titulo" Text="Tel&eacute;fono 2" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel runat="server" ID="pnlTelefono2" />
            </td>
        </tr>


        <!--formato de correo electr&oacute;nico-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblCorreoElectronicoTitulo" Text="Correo Electr&oacute;nico" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtCorreoElectronico" CssClass="form_text" MaxLength="60"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvCorreoElectronico" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCorreoElectronico" ></asp:RequiredFieldValidator>
            </td>
        </tr>


        <!-- Estudios 1=Primarios, 2=Secundarios, 3=Profesionales, 4=Post Grado, 5=ninguno, 6=Otros-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblEstudiosRealizadosTitulo" Text="Estudios Realizados" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
		    <asp:RadioButtonList ID="rdEstudiosRealizados" runat="server" repeatdirection="Horizontal" CssClass="form_radios">
			  <asp:ListItem Value="1" Text="Primarios&nbsp;" />
			  <asp:ListItem Value="2" Text="Secundarios&nbsp;" />
			  <asp:ListItem Value="3" Text="Profesionales&nbsp;" />
			  <asp:ListItem Value="4" Text="Post Grado&nbsp;" />
			  <asp:ListItem Value="5" Text="Ninguno&nbsp;" />
			  <asp:ListItem Value="6" Text="Otros&nbsp;" />
		    </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvEstudiosRealizados" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="rdEstudiosRealizados" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revEstudiosRealizados" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="rdEstudiosRealizados"
                    ValidationExpression="^[\d]*$" ></asp:RegularExpressionValidator>
            </td>
        </tr>


        <tr>
            <td>
                <asp:Label runat="server" ID="lblTituloOtorgadoTitulo" Text="T&iacute;tulo Otorgado" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTituloOtorgado" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>


    </table>
</asp:WizardStep>
<asp:WizardStep ID="wzDatosDelConyugeOCompaneroSiVaAIngresarConyugeLosDatosSonObligatoriosStep" runat="server" StepType="auto" Title="">
    <table id="Table1" class="ms-formbody" style="width: 700px;">

        <tr>
            <td align="center" class="form_section_header">
                <asp:Label runat="server" ID="Label5" Text="Datos del c&oacute;nyuge o compa&ntilde;ero. Si va a ingresar c&oacute;nyuge los datos son obligatorios" />
            </td>
        </tr>



      <!--TI, CC, CE-->
        <tr>        
            <td>
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td colspan="10">
                            <asp:Label runat="server" ID="lblTipoDeIdentificacion2Titulo" Text="Identificaci&oacute;n" CssClass="form_label"/><span class="form_label"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="Label7" Text="Tipo" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                        </td>
                        <td>
                            <%--<asp:TextBox runat="server" ID="txtTipoDeIdentificacion" CssClass="form_text" MaxLength="1"/>--%>
                            <asp:RadioButtonList ID="rbTipoDeIdentificacion2" runat="server" repeatdirection="Horizontal" CssClass="form_radios" />
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label runat="server" ID="Label8" Text="Numero De Identificaci&oacute;n" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtNumeroDeIdentificacion2" CssClass="form_text" MaxLength="11"/>
                        </td>                        
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="form_field_error_message"
                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="rbTipoDeIdentificacion2" ></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="form_field_error_message"
                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion2" ></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                           &nbsp;
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" CssClass="form_field_error_message"
                                ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion2"
                                ValidationExpression="^[\d]*$" ></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>








    <!-- Bloque Appellido -->
      <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblApellido2Titulo" Text="Apellidos" CssClass="form_label"/><span class="form_label"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="Label6" Text="Primero" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtPrimerApellido2" CssClass="form_text" MaxLength="20"/>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label runat="server" ID="Label9" Text="Segundo" CssClass="form_label"/><span class="form_label">&nbsp;
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="lblSegundoApellido2Titulo" CssClass="form_text" MaxLength="20"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="form_field_error_message"
                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerApellido2" ></asp:RequiredFieldValidator>
                        </td>
                    </tr>                    
                </table>
            </td>
        </tr>










	  <!-- Bloque Nombre -->
        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblNombre2Titulo" Text="Nombres" CssClass="form_label"/><span class="form_label"></span>
                        </td>
                    </tr>                
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="Label10" Text="Primero" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtPrimerNombre2" CssClass="form_text" MaxLength="20"/>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label runat="server" ID="Label11" Text="Segundo" CssClass="form_label"/>&nbsp;
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtSegundoNombre2" CssClass="form_text" MaxLength="20"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" CssClass="form_field_error_message"
                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerNombre2" ></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>                
            </td>
        </tr>









 







        <!--si/no-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblConvivenTitulo" Text="Conviven" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox runat="server" ID="chkConviven" CssClass="form_text" />
            </td>
        </tr>





        <!--Fecha -->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblFechaDeNacimiento2Titulo" Text="Fecha De Nacimiento (dd/mm/aaaa)" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Panel ID="pnldtFechaDeNacimiento2" runat="server"/>
            </td>
        </tr>



        <!-- Sexo -->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSexo2Titulo" Text="Sexo" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
		    <asp:RadioButtonList ID="txtSexo2" runat="server" repeatdirection="Horizontal" CssClass="form_radios">
			  <asp:ListItem Value="F" Text="Femenino&nbsp;&nbsp;" />
			  <asp:ListItem Value="M" Text="Masculino&nbsp;&nbsp;" />
		    </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvSexo2" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSexo2" ></asp:RequiredFieldValidator>
            </td>
        </tr>




        <!--formato de direcciones-->
       <tr>
            <td>
                <asp:Label runat="server" ID="Label12" Text="Direcci&oacute;n Actual" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr> 
        <tr>
            <td>
                <asp:Panel runat="server" ID="pnlDireccionActual2" ></asp:Panel>
            </td>
        </tr>








	  <!--formato de telefono -->
        <tr>
            <td>
                <asp:Label runat="server" ID="Label13" Text="Tel&eacute;fono" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel runat="server" ID="pnlTelefono3" />
            </td>
        </tr>









        <!-- Ocupacion   1= Hogar, 2=Empleado, 3=Independiente, 4= Pensi&oacute;n-->
        <tr>
            <td>
                <asp:Label runat="server" ID="Label14" Text="Ocupaci&oacute;n Actual" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
		    <asp:RadioButtonList ID="rbOcupacionActual" runat="server" repeatdirection="Horizontal" CssClass="form_radios">
			  <asp:ListItem Value="1" Text="Hogar" />
			  <asp:ListItem Value="2" Text="Empleado" />
			  <asp:ListItem Value="3" Text="Independiente" />
			  <asp:ListItem Value="4" Text="Pensi&oacute;n" />			  
		    </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="rbOcupacionActual" ></asp:RequiredFieldValidator>
            </td>
        </tr>






        <!--   obligatorio si Ocupaci&oacute;n Actual = 2-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNombreDeLaEmpresaDondeLaboraTitulo" Text="Nombre De La Empresa Donde Labora" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNombreDeLaEmpresaDondeLabora" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvNombreDeLaEmpresaDondeLabora" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNombreDeLaEmpresaDondeLabora" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--obligatorio si Ocupaci&oacute;n Actual = 2-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNitTitulo" Text="Nit" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNit" CssClass="form_text" MaxLength="13"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvNit" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNit" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revNit" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtNit"
                    ValidationExpression="^[\d]*$" ></asp:RegularExpressionValidator>
            </td>
        </tr>
        <!--obligatorio si Ocupaci&oacute;n Actual = 2 -->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblRecibeSubsidioTitulo" Text="Recibe Subsidio? " CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
               <asp:CheckBox CssClass="form_checkbox" ID="boolRecibeSubsidio" runat="server"/>
            </td>
        </tr>
        <!--obligatorio si Ocupaci&oacute;n Actual = 2 -->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSueldoMensualTitulo" Text="Sueldo Mensual" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSueldoMensual" CssClass="form_text" MaxLength="9"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvSueldoMensual" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSueldoMensual" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--obligatorio si Ocupaci&oacute;n Actual = 2 -->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTelefono4Titulo" Text="Tel&eacute;fono" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTelefono4" CssClass="form_text" MaxLength="10"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvTelefono4" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTelefono4" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revTelefono4" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtTelefono4"
                    ValidationExpression="^[\d]*$" ></asp:RegularExpressionValidator>
            </td>
        </tr>
        <!--obligatorio si Ocupaci&oacute;n Actual = 2 -->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTipoDeContratoTitulo" Text="Tipo De Contrato" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTipoDeContrato" CssClass="form_text" MaxLength="15"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvTipoDeContrato" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTipoDeContrato" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--1= C&oacute;nyuge, 2= Compañero-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTipoDeVinculacionTitulo" Text="Tipo De Vinculaci&oacute;n " CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTipoDeVinculacion" CssClass="form_text" MaxLength="1"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvTipoDeVinculacion" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTipoDeVinculacion" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revTipoDeVinculacion" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtTipoDeVinculacion"
                    ValidationExpression="^[\d]*$" ></asp:RegularExpressionValidator>
            </td>
        </tr>
    </table>
</asp:WizardStep>
<asp:WizardStep ID="wzDatosDeLasPersonasACargoStep" runat="server" StepType="auto" Title="">
    <table id="Table2" class="ms-formbody" style="width: 700px;">
        <!--habilita la cantidad de campos necesarios para cargar las personas a cargo-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblCantidadDePersonasACargoTitulo" Text="Cantidad De Personas A Cargo" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtCantidadDePersonasACargo" CssClass="form_text" MaxLength="2"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvCantidadDePersonasACargo" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCantidadDePersonasACargo" ValidationGroup="grpValidation4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revCantidadDePersonasACargo" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtCantidadDePersonasACargo"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation4"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNIdentificacionTitulo" Text="N° Identificaci&oacute;n" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNIdentificacion" CssClass="form_text" MaxLength="11"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvNIdentificacion" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNIdentificacion" ValidationGroup="grpValidation4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revNIdentificacion" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtNIdentificacion"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation4"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblPrimerApellido3Titulo" Text="Primer Apellido" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtPrimerApellido3" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvPrimerApellido3" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerApellido3" ValidationGroup="grpValidation4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSegundoApellido3Titulo" Text="Segundo Apellido" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSegundoApellido3" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblPrimerNombre3Titulo" Text="Primer Nombre" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtPrimerNombre3" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvPrimerNombre3" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerNombre3" ValidationGroup="grpValidation4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSegundoNombre3Titulo" Text="Segundo Nombre" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSegundoNombre3" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <!--M/F-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSexo3Titulo" Text="Sexo" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
		    <asp:RadioButtonList ID="txtSexo3" runat="server" repeatdirection="Horizontal" CssClass="form_radios">
			  <asp:ListItem Value="F" Text="Femenino&nbsp;&nbsp;" />
			  <asp:ListItem Value="M" Text="Masculino&nbsp;&nbsp;" />
		    </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvSexo3" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSexo3" ValidationGroup="grpValidation4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--AAAAMMDD-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblFechaDeNacimiento3Titulo" Text="Fecha De Nacimiento (dd/mm/aaaa)" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Panel ID="pnldtFechaDeNacimiento3" runat="server"/>
            </td>
        </tr>
        <!--1 Hijo, 3 Hijastro, 4 Hermano, 5 Padre, 9 Adoptivo-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblParentescoTitulo" Text="Parentesco " CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtParentesco" CssClass="form_text" MaxLength="1"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvParentesco" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtParentesco" ValidationGroup="grpValidation4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revParentesco" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtParentesco"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation4"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblObservacionesTitulo" Text="Observaciones" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtObservaciones" CssClass="form_text" MaxLength="40"/>
            </td>
        </tr>
	  </table>
</asp:WizardStep>
</WizardSteps>
</asp:Wizard>

</td>
</tr>
</table>
</asp:Content>

