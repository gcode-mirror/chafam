<%@ Assembly Name="CAFAM.WebPortal.Forms, Version=1.0.0.0, Culture=neutral, PublicKeyToken=ae88e728e51b79b3" %>
<%@ Page Language="C#" Inherits="CAFAM.WebPortal.Forms.AfiliacionEmpresas" Title="Formulario" MasterPageFile="~masterurl/default.master"%>
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
                <asp:Label runat="server" ID="lblNitTitulo" Text="Nit " CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
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
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNit" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revNit" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNit"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation2"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNombreORazonSocialTitulo" Text="Nombre O Razón Social" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNombreORazonSocial" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvNombreORazonSocial" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNombreORazonSocial" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
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
                <asp:Label runat="server" ID="lblCodigoCiudadTitulo" Text="Código Ciudad" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtCodigoCiudad" CssClass="form_text" MaxLength="3"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvCodigoCiudad" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCodigoCiudad" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revCodigoCiudad" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtCodigoCiudad"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation2"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <!--Formato de direcciones-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblDireccionTitulo" Text="Dirección" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtDireccion" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvDireccion" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtDireccion" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
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
        <tr>
            <td>
                <asp:Label runat="server" ID="lblAaTitulo" Text="Aa" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtAa" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblFaxTitulo" Text="Fax" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtFax" CssClass="form_text" MaxLength="10"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revFax" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtFax"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation2"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <!--Formato de correo electrónico-->
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvCorreoElectronico" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="Dummy11" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="revCorreoElectronico" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy11"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grpValidation2"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <!--Si/No-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblEsEntidadDocenteTitulo" Text="¿es Entidad Docente?" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtEsEntidadDocente" CssClass="form_text" MaxLength="1"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvEsEntidadDocente" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtEsEntidadDocente" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNombreGerenteORepresentanteLegalTitulo" Text="Nombre Gerente O Representante Legal" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNombreGerenteORepresentanteLegal" CssClass="form_text" MaxLength="30"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvNombreGerenteORepresentanteLegal" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNombreGerenteORepresentanteLegal" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNombreJefeDePersonalTitulo" Text="Nombre Jefe De Personal" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNombreJefeDePersonal" CssClass="form_text" MaxLength="30"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvNombreJefeDePersonal" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNombreJefeDePersonal" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNDeEscrituraConstitucionTitulo" Text="N° De Escritura Constitución" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNDeEscrituraConstitucion" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvNDeEscrituraConstitucion" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNDeEscrituraConstitucion" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revNDeEscrituraConstitucion" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNDeEscrituraConstitucion"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation2"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNNotariaTitulo" Text="N° Notaria" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNNotaria" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvNNotaria" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNNotaria" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revNNotaria" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNNotaria"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation2"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <!--AAAAMMDD-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblFechaConstitucionTitulo" Text="Fecha Constitución (dd/mm/aaaa)" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Panel ID="pnldtFechaConstitucion" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvFechaConstitucion" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="pnldtFechaConstitucion" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </TABLE>
</asp:WizardStep>
<asp:WizardStep ID="wzDatosEspecificosStep" runat="server" StepType="auto" Title="">
    <TABLE>
        <!--1 Oficial, 2 Privada-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTipoDeEmpresaTitulo" Text="Tipo De Empresa " CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTipoDeEmpresa" CssClass="form_text" MaxLength="1"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvTipoDeEmpresa" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTipoDeEmpresa" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revTipoDeEmpresa" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTipoDeEmpresa"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <!--01 Responsabilidad Ltda., 02 Colectiva, 03 Anónima, 04 En comandita Simple, 05 En comandita por acciones, 06 De hecho, 07 De Economía Mixta, 08 Extranjera, 09 Persona Natural, 10 Unipersonal, 11 MYPIME, 12 Otra-->
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvClaseDeSociedad" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="Dummy20" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--obligatorio si selecciono 12-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblClaseDeSociedad2Titulo" Text="Clase De Sociedad " CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtClaseDeSociedad2" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblClaseDeActividadEconomicaRegistradaParaEfectosTributariosRutCiucTitulo" Text="Clase De Actividad Económica Registrada Para Efectos Tributarios Rut (ciuc)" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtClaseDeActividadEconomicaRegistradaParaEfectosTributariosRutCiuc" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvClaseDeActividadEconomicaRegistradaParaEfectosTributariosRutCiuc" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtClaseDeActividadEconomicaRegistradaParaEfectosTributariosRutCiuc" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNombreTitulo" Text="Nombre " CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNombre" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvNombre" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNombre" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblCodigoTitulo" Text="Código" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtCodigo" CssClass="form_text" MaxLength="4"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvCodigo" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCodigo" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revCodigo" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtCodigo"
                    ValidationExpression="^[0-9{4}]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Label CssClass="form_label" ID="lblIndiqueQuePorcentajeDeAportesDebeRealizarLosPorSiguientesConceptos" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSubsidioFamiliarTitulo" Text="Subsidio Familiar" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSubsidioFamiliar" CssClass="form_text" MaxLength="3"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvSubsidioFamiliar" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSubsidioFamiliar" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSenaTitulo" Text="Sena" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSena" CssClass="form_text" MaxLength="3"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvSena" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSena" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblIcbfTitulo" Text="Icbf" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtIcbf" CssClass="form_text" MaxLength="3"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvIcbf" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtIcbf" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblEsapTitulo" Text="Esap" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtEsap" CssClass="form_text" MaxLength="3"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvEsap" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtEsap" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblInstitutosTecnicosTitulo" Text="Institutos Técnicos" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtInstitutosTecnicos" CssClass="form_text" MaxLength="3"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvInstitutosTecnicos" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtInstitutosTecnicos" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblEsFilialDeOtraEmpresaYaAfiliadaALaCajaTitulo" Text="¿es Filial De Otra Empresa Ya Afiliada A La Caja?" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
               <asp:CheckBox CssClass="form_checkbox" ID="boolEsFilialDeOtraEmpresaYaAfiliadaALaCaja" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvEsFilialDeOtraEmpresaYaAfiliadaALaCaja" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="boolEsFilialDeOtraEmpresaYaAfiliadaALaCaja" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--obligatorio si contesto si en la anterior-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblCualTitulo" Text="¿cuál? " CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtCual" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblLaCasaMatrizSeEncuentraUbicadaEnLaCiudadDeTitulo" Text="¿la Casa Matriz Se Encuentra Ubicada En La Ciudad De?" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtLaCasaMatrizSeEncuentraUbicadaEnLaCiudadDe" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvLaCasaMatrizSeEncuentraUbicadaEnLaCiudadDe" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtLaCasaMatrizSeEncuentraUbicadaEnLaCiudadDe" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Label CssClass="form_label" ID="lblSiEsSustitucionPatronalConUnaEmpresaAfiliadaACafamIndiqueLosSiguientesDatosDeLaEntidadASustituir" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNit2Titulo" Text="Nit" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNit2" CssClass="form_text" MaxLength="13"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revNit2" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNit2"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNombreORazonSocial2Titulo" Text="Nombre O Razón Social" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNombreORazonSocial2" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblEstuvoOEstaLaCompaniaAfiliadaAUnaCajaDeCompensacionFamiliarTitulo" Text="¿estuvo O Está La Compañía Afiliada A Una Caja De Compensación Familiar? " CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
               <asp:CheckBox CssClass="form_checkbox" ID="boolEstuvoOEstaLaCompaniaAfiliadaAUnaCajaDeCompensacionFamiliar" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvEstuvoOEstaLaCompaniaAfiliadaAUnaCajaDeCompensacionFamiliar" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="boolEstuvoOEstaLaCompaniaAfiliadaAUnaCajaDeCompensacionFamiliar" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblCual2Titulo" Text="¿cuál?" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtCual2" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblIndiqueElMotivoPorElCualSeDesafiliaDeEsaCajaTitulo" Text="Indique El Motivo Por El Cual Se Desafilia De Esa Caja" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtIndiqueElMotivoPorElCualSeDesafiliaDeEsaCaja" CssClass="form_text" MaxLength="40"/>
            </td>
        </tr>
    </TABLE>
</asp:WizardStep>
<asp:WizardStep ID="wzOtrosDatosStep" runat="server" StepType="auto" Title="">
    <TABLE>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNumeroTotalDeTrabajadoresTitulo" Text="Número Total De Trabajadores" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNumeroTotalDeTrabajadores" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvNumeroTotalDeTrabajadores" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNumeroTotalDeTrabajadores" ValidationGroup="grpValidation4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revNumeroTotalDeTrabajadores" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNumeroTotalDeTrabajadores"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation4"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblValorDeLaUltimaNominaTitulo" Text="Valor De La Última Nómina $" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtValorDeLaUltimaNomina" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvValorDeLaUltimaNomina" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtValorDeLaUltimaNomina" ValidationGroup="grpValidation4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revValorDeLaUltimaNomina" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtValorDeLaUltimaNomina"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation4"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblCorrespondienteAlMesDeTitulo" Text="Correspondiente Al Mes De " CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtCorrespondienteAlMesDe" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvCorrespondienteAlMesDe" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCorrespondienteAlMesDe" ValidationGroup="grpValidation4"></asp:RequiredFieldValidator>
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

