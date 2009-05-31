<%@ Assembly Name="CAFAM.WebPortal.Forms, Version=1.0.0.0, Culture=neutral, PublicKeyToken=ae88e728e51b79b3" %>
<%@ Page Language="C#" Inherits="CAFAM.WebPortal.Forms.SuspensionTrabajadores" Title="Formulario" MasterPageFile="~masterurl/default.master"%>
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
        <!--se autocompleta-->
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
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNit" ValidationGroup="grpValidation1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revNit" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNit"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <!--se autocompleta-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSubNitTitulo" Text="Sub Nit" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSubNit" CssClass="form_text" MaxLength="2"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revSubNit" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSubNit"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <!--se autocompleta (en el sistema de subsidios tiene longitud 60)-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNombreORazonSocialTitulo" Text="Nombre O Razón Social" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNombreORazonSocial" CssClass="form_text" MaxLength="34"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvNombreORazonSocial" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNombreORazonSocial" ValidationGroup="grpValidation1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--es un check, 1= CC, 2= TI, 3=CE-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTipoDeIdentificacionTitulo" Text="Tipo De Identificación" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTipoDeIdentificacion" CssClass="form_text" MaxLength="1"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvTipoDeIdentificacion" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTipoDeIdentificacion" ValidationGroup="grpValidation1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revTipoDeIdentificacion" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTipoDeIdentificacion"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNumeroDeIdentificacionTitulo" Text="Numero De Identificación" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
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
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion" ValidationGroup="grpValidation1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="revNumeroDeIdentificacion" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpValidation1"></asp:RegularExpressionValidator>
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
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerApellido" ValidationGroup="grpValidation1"></asp:RequiredFieldValidator>
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
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerNombre" ValidationGroup="grpValidation1"></asp:RequiredFieldValidator>
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
        <!--AAAAMMDD-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblFechaDeLaSuspensionInicialTitulo" Text="Fecha De La Suspensión Inicial (dd/mm/aaaa)" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Panel ID="pnldtFechaDeLaSuspensionInicial" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvFechaDeLaSuspensionInicial" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="pnldtFechaDeLaSuspensionInicial" ValidationGroup="grpValidation1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <!--AAAAMMDD-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblFechaDeLaSuspensionFinalTitulo" Text="Fecha De La Suspensión Final (dd/mm/aaaa)" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Panel ID="pnldtFechaDeLaSuspensionFinal" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvFechaDeLaSuspensionFinal" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="pnldtFechaDeLaSuspensionFinal" ValidationGroup="grpValidation1"></asp:RequiredFieldValidator>
            </td>
        </tr>
     </table>
</asp:Content>

