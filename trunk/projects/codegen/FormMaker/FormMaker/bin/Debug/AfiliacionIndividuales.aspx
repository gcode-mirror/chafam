<%@ Assembly Name="CAFAM.WebPortal.Forms, Version=1.0.0.0, Culture=neutral, PublicKeyToken=ae88e728e51b79b3" %>
<%@ Page Language="C#" Inherits="CAFAM.WebPortal.Forms.AfiliacionIndividuales" Title="Formulario" MasterPageFile="~masterurl/default.master"%>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server" ID="MainContent">
<link rel="Stylesheet" href="~/_layouts/StyleSheet.css" type="text/css" />
<script type='text/javascript'>
    _spOriginalFormAction = document.forms[0].action;
    _spSuppressFormOnSubmitWrapper = true;
</script>
    <asp:ScriptManager ID="scriptMng" runat="server">
    </asp:ScriptManager>
     <table class="ms-formbody" style="width:100%" id="tblMain" runat="server">
        <tr>
            <td>
<asp:Wizard runat="server" ID="wzDatosDelTrabajador" Font-Names="verdana" CssClass="content-more"
   ForeColor="navy" Style="border: outset 1px black" OnNextButtonClick="OnNext"
   OnActiveStepChanged="OnActiveStepChanged" OnFinishButtonClick="OnFinish" ActiveStepIndex="0"
   DisplaySideBar="false">
<WizardSteps>
<asp:WizardStep ID="wzDatosDelTrabajadorStep" runat="server" StepType="auto" Title="">
    <TABLE>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNitEntidadAsociadoraTitulo" Text="Nit Entidad Asociadora" CssClass="form_label"/>
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
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNitEntidadAsociadora"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation2"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNombreDeLaEntidadAsociadoraTitulo" Text="Nombre De La Entidad Asociadora" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNombreDeLaEntidadAsociadora" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblEpsTitulo" Text="Eps" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
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
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtEps" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblFondoDePensionesTitulo" Text="Fondo De Pensiones" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
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
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtFondoDePensiones" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--TI, CC, CE-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTipoDeIdentificacionTitulo" Text="Tipo De Identificación" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTipoDeIdentificacion" CssClass="form_text" MaxLength="2"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvTipoDeIdentificacion" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTipoDeIdentificacion" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNumeroDeIdentificacionTitulo" Text="Número De Identificación" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNumeroDeIdentificacion" CssClass="form_text" MaxLength="11"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvNumeroDeIdentificacion" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revNumeroDeIdentificacion" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation2"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblPrimerApellidoTitulo" Text="Primer Apellido" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtPrimerApellido" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvPrimerApellido" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerApellido" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSegundoApellidoTitulo" Text="Segundo Apellido" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSegundoApellido" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblPrimerNombreTitulo" Text="Primer Nombre" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtPrimerNombre" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvPrimerNombre" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerNombre" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSegundoNombreTitulo" Text="Segundo Nombre" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSegundoNombre" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblIngresosMensualesTitulo" Text="Ingresos Mensuales" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
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
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtIngresosMensuales" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--AAAAMMDD-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblFechaDeNacimientoTitulo" Text="Fecha De Nacimiento (dd/mm/aaaa)" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Panel ID="pnldtFechaDeNacimiento" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvFechaDeNacimiento" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="pnldtFechaDeNacimiento" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--M/F-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSexoTitulo" Text="Sexo" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSexo" CssClass="form_text" MaxLength="1"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvSexo" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSexo" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--1 Soltero, 2 Casado, 3 Viudo, 4 Separado, 5 Unión Libre-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblEstadoCivilTitulo" Text="Estado Civil " CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtEstadoCivil" CssClass="form_text" MaxLength="1"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvEstadoCivil" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtEstadoCivil" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revEstadoCivil" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtEstadoCivil"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation2"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <!--formato de direcciones-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblDireccionActualTitulo" Text="Dirección Actual" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtDireccionActual" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvDireccionActual" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtDireccionActual" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblEstratoTitulo" Text="Estrato" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtEstrato" CssClass="form_text" MaxLength="10"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvEstrato" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtEstrato" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblBarrioTitulo" Text="Barrio" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtBarrio" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvBarrio" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtBarrio" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblCiudadTitulo" Text="Ciudad" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtCiudad" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvCiudad" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCiudad" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTelefonoTitulo" Text="Teléfono 1" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTelefono" CssClass="form_text" MaxLength="10"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvTelefono" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTelefono" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revTelefono" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTelefono"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation2"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTelefono2Titulo" Text="Teléfono 2" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTelefono2" CssClass="form_text" MaxLength="10"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revTelefono2" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTelefono2"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation2"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <!--formato de correo electrónico-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblCorreoElectronicoTitulo" Text="Correo Electrónico" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
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
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCorreoElectronico" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!-- 1=Primarios, 2=Secundarios, 3=Profesionales, 4=Post Grado, 5=ninguno, 6=Otros-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblEstudiosRealizadosTitulo" Text="Estudios Realizados" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtEstudiosRealizados" CssClass="form_text" MaxLength="1"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvEstudiosRealizados" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtEstudiosRealizados" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revEstudiosRealizados" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtEstudiosRealizados"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation2"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTituloOtorgadoTitulo" Text="Título Otorgado" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTituloOtorgado" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
    </TABLE>
</asp:WizardStep>
<asp:WizardStep ID="wzDatosDelConyugeOCompaneroSiVaAIngresarConyugeLosDatosSonObligatoriosStep" runat="server" StepType="auto" Title="">
    <TABLE>
        <!--TI, CC, CE-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTipoDeIdentificacion2Titulo" Text="Tipo De Identificación" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTipoDeIdentificacion2" CssClass="form_text" MaxLength="2"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvTipoDeIdentificacion2" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTipoDeIdentificacion2" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNumeroDeIdentificacion2Titulo" Text="Número De Identificación" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNumeroDeIdentificacion2" CssClass="form_text" MaxLength="11"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvNumeroDeIdentificacion2" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion2" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revNumeroDeIdentificacion2" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion2"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblPrimerApellido2Titulo" Text="Primer Apellido" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtPrimerApellido2" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvPrimerApellido2" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerApellido2" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSegundoApellido2Titulo" Text="Segundo Apellido" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSegundoApellido2" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblPrimerNombre2Titulo" Text="Primer Nombre" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtPrimerNombre2" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvPrimerNombre2" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerNombre2" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSegundoNombre2Titulo" Text="Segundo Nombre" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSegundoNombre2" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <!--si/no-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblConvivenTitulo" Text="Conviven" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtConviven" CssClass="form_text" MaxLength="1"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvConviven" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtConviven" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--AAAAMMDD-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblFechaDeNacimiento2Titulo" Text="Fecha De Nacimiento (dd/mm/aaaa)" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Panel ID="pnldtFechaDeNacimiento2" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvFechaDeNacimiento2" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="pnldtFechaDeNacimiento2" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--M/F-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSexo2Titulo" Text="Sexo" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSexo2" CssClass="form_text" MaxLength="1"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvSexo2" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSexo2" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--formato de direcciones, autocompletar si conviven = si-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblDireccionActual2Titulo" Text="Dirección Actual" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtDireccionActual2" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvDireccionActual2" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtDireccionActual2" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--autocompletar si conviven = si-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblEstrato2Titulo" Text="Estrato" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtEstrato2" CssClass="form_text" MaxLength="10"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvEstrato2" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtEstrato2" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--autocompletar si conviven = si-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblBarrio2Titulo" Text="Barrio" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtBarrio2" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvBarrio2" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtBarrio2" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--autocompletar si conviven = si-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblCiudad2Titulo" Text="Ciudad" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtCiudad2" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvCiudad2" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCiudad2" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--autocompletar si conviven = si-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTelefono3Titulo" Text="Teléfono" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTelefono3" CssClass="form_text" MaxLength="10"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvTelefono3" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTelefono3" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revTelefono3" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTelefono3"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <!-- 1= Hogar, 2=Empleado, 3=Independiente, 4= Pensión-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblOcupacionActualTitulo" Text="Ocupación Actual" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtOcupacionActual" CssClass="form_text" MaxLength="1"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvOcupacionActual" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtOcupacionActual" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revOcupacionActual" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtOcupacionActual"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <!--obligatorio si Ocupación Actual = 2-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNombreDeLaEmpresaDondeLaboraTitulo" Text="Nombre De La Empresa Donde Labora" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
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
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNombreDeLaEmpresaDondeLabora" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--obligatorio si Ocupación Actual = 2-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNitTitulo" Text="Nit" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
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
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNit" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revNit" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNit"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <!--obligatorio si Ocupación Actual = 2 -->
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
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvRecibeSubsidio" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="boolRecibeSubsidio" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--obligatorio si Ocupación Actual = 2 -->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSueldoMensualTitulo" Text="Sueldo Mensual" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
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
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSueldoMensual" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--obligatorio si Ocupación Actual = 2 -->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTelefono4Titulo" Text="Teléfono" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
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
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTelefono4" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revTelefono4" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTelefono4"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <!--obligatorio si Ocupación Actual = 2 -->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTipoDeContratoTitulo" Text="Tipo De Contrato" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
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
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTipoDeContrato" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--1= Cónyuge, 2= Compañero-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTipoDeVinculacionTitulo" Text="Tipo De Vinculación " CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
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
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTipoDeVinculacion" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revTipoDeVinculacion" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTipoDeVinculacion"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
            </td>
        </tr>
    </TABLE>
</asp:WizardStep>
<asp:WizardStep ID="wzDatosDeLasPersonasACargoStep" runat="server" StepType="auto" Title="">
    <TABLE>
        <!--habilita la cantidad de campos necesarios para cargar las personas a cargo-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblCantidadDePersonasACargoTitulo" Text="Cantidad De Personas A Cargo" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
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
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtCantidadDePersonasACargo"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation4"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNIdentificacionTitulo" Text="N° Identificación" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
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
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNIdentificacion"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation4"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblPrimerApellido3Titulo" Text="Primer Apellido" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
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
                <asp:Label runat="server" ID="lblPrimerNombre3Titulo" Text="Primer Nombre" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
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
                <asp:Label runat="server" ID="lblSexo3Titulo" Text="Sexo" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSexo3" CssClass="form_text" MaxLength="1"/>
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
                <asp:Label runat="server" ID="lblFechaDeNacimiento3Titulo" Text="Fecha De Nacimiento (dd/mm/aaaa)" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Panel ID="pnldtFechaDeNacimiento3" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvFechaDeNacimiento3" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="pnldtFechaDeNacimiento3" ValidationGroup="grpValidation4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--1 Hijo, 3 Hijastro, 4 Hermano, 5 Padre, 9 Adoptivo-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblParentescoTitulo" Text="Parentesco " CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
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
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtParentesco"
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
    </TABLE>
</asp:WizardStep>
</WizardSteps>
</asp:Wizard>
            </td>
        </tr>
     </table>
</asp:Content>

