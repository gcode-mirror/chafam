<%@ Assembly Name="CAFAM.WebPortal.User, Version=1.0.0.0, Culture=neutral, PublicKeyToken=a01116ae02f25a36" %>
<%@ Page Language="C#" Inherits="CAFAM.WebPortal.User.UserCompanyEdit" Title="Edición de Usuario Empresa" MasterPageFile="~masterurl/default.master"%>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Assembly="AjaxControlToolkit, Version=1.0.10301.0, Culture=Neutral, PublicKeyToken=28f01b0e84b6d53e" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server" ID="MainContent">
     <link rel="Stylesheet" href="~/_layouts/StyleSheet.css" type="text/css" />
    <script type='text/javascript'>
        _spOriginalFormAction = document.forms[0].action;
        _spSuppressFormOnSubmitWrapper = true;
    </script>
    <asp:ScriptManager ID="scriptMng" runat="server">
    </asp:ScriptManager>
    <asp:Label ID="lblError" runat="server" Visible="false" CssClass="ms-descriptiontext" ForeColor="Red"></asp:Label><asp:HyperLink runat="server" ID="lnkGoHome" CssClass="ms-descriptiontext" NavigateUrl="~/default.aspx" Visible="false">Volver al Home.</asp:HyperLink>
    <div>
        <table class="ms-formbody" style="width:100%" id="tblPrincipal" runat="server">
            <tr>
                <td colspan="3" class="form_section_header">
                    <br />
                    <center>
                        <asp:Label ID="lblTitulo" runat="server" Text="Edición de Usuario Empresa" CssClass="form_section_header"></asp:Label>
                     </center>
                </td>
            </tr>
           <tr>
                <td colspan="3">
                    <br />
                    <asp:Label CssClass="form_label" runat="server" ID="lblTituloApellido" Text="Apellidos"></asp:Label>
                </td>
            </tr>
           <tr>
                <td colspan="4">
                    <asp:Label ID="lblTituloPrimerApellido" runat="server" Text="Primero" CssClass="form_label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label runat="server" ID="lblFirstSurname" CssClass="form_label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblTituloSegundoApellido" runat="server" Text="Segundo" CssClass="form_label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label runat="server" ID="lblSecondSurname" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <br />
                    <asp:Label CssClass="form_label" runat="server" ID="lblTituloNombre" Text="Nombres"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="lblTituloPrimerNombre" runat="server" Text="Primero" CssClass="form_label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label runat="server" ID="lblFirstName" CssClass="form_label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblTituloSegundoNombre" runat="server" Text="Segundo" CssClass="form_label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label runat="server" ID="lblSecondName" CssClass="form_label"></asp:Label>
                 </td>
            </tr>
            <tr>
                <td class="ms-formdescription">
                <br />
                     <asp:Label ID="lblTituloCargo" runat="server" Text="Cargo dentro de la empresa" CssClass="form_label"></asp:Label>
                </td>
                <td>
                <br />
                    <asp:Label ID="lblTituloCorreoElectronico" runat="server" Text="Correo Electrónico" CssClass="form_label"></asp:Label> (<font color="red">*</font>)
                </td>
            </tr>
            <tr>
                <td>
                        <asp:Label runat="server" ID="lblPosition" CssClass="form_label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtCompanyEmail" MaxLength="3600" CssClass="form_text"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regExpCompanyEmail" runat="server" CssClass="form_field_error_message" ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="txtCompanyEmail" ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$" ValidationGroup="grpUserEdit"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="reqCompanyEmail" runat="server" CssClass="form_field_error_message" ErrorMessage="Requerido" ControlToValidate="txtCompanyEmail" ValidationGroup="grpUserEdit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                <br />
                    <asp:Label ID="lblTituloTelefonoContactoFijo" runat="server" Text="Teléfono de Contacto Fijo  (fijo)" CssClass="form_label"></asp:Label> (<font color="red">*</font>)
                </td>
                <td>
                <br />
                    <asp:Label ID="lblTituloExtensionTelefonica" runat="server" Text="Extensión Telefónica" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel runat="server" ID="pnlCompanyTel"></asp:Panel>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtTelExtension" MaxLength="100" CssClass="form_text"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regExpTelExtension" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTelExtension"
                        ValidationExpression="^[\d]*$" ValidationGroup="grpUserEdit"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                <br />
                    <asp:Label ID="lblTituloTelefonoMovil" runat="server" Text="Teléfono Móvil" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel runat="server" ID="pnlCompanyMobile" ></asp:Panel>
                </td>
            </tr>
             <tr id="trAuthorizedBy" runat="server">    
                <td>
                <br />
                    <asp:Label ID="lblTituloAutorizadoPor" runat="server" Text="Autorizado Por" CssClass="form_label"></asp:Label>
                </td>
                <td>
                <br />
                    <asp:Label ID="lblTituloFechaDeAutorizacion" runat="server" Text=" Fecha de Autorización (dd/mm/aaaa)" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtAuthorizedBy" runat="server" MaxLength="100" CssClass="form_text"></asp:TextBox>
                </td>
                <td>
                    <asp:Panel ID="pnlAuthorizationDate" runat="server"></asp:Panel>
                </td>
            </tr>
            <tr id="trAuthorizedToGetBasicData" runat="server">    
                <td>
                <br />
                    <asp:Label ID="lblTituloPermisoConsultaDatosBasicos" runat="server" Text="Permiso Consulta Datos Básicos " CssClass="form_label"></asp:Label>
                </td>

                </tr>
            <tr>
                <td>
                <asp:CheckBox ID="chkAuthorizedToGetBasicData" runat="server" CssClass="form_checkbox" />
                </td>

            </tr>                    
                <tr>     
                           <td>
                <br />
                    <asp:Label ID="lblTituloPemisoConsultaAportes" runat="server" Text="Permiso Consulta de Aportes" CssClass="form_label"></asp:Label>
                </td>
                </tr>
                <tr>
                                <td>
                <asp:CheckBox ID="chkAuthorizedToGetContibutionData" runat=server CssClass="form_checkbox" />
                </td>
            </tr>
                 
            <tr id="trAuthorizedToGetMemberData" runat="server">    
                <td>
                <br />
                    <asp:Label ID="lblTituloPermisoConsultaAfiliados" runat="server" Text="Permiso Consulta de Afiliados  " CssClass="form_label"></asp:Label>
                 </td>
            </tr>
            <tr>
                <td>
                <asp:CheckBox ID="chkAuthorizedToGetMemberData" runat=server CssClass="form_checkbox" />
                </td>
            </tr>        
             <tr>
                <td align="right" colspan="2">
                    <%--<asp:Button ID="btnAnterior" CausesValidation="false" OnClientClick="javascript:history.back();" runat="server" Text="Volver Atrás" />--%>
                    <asp:Button ID="btnModify" runat="server" Text="Modificar Información" ValidationGroup="grpUserEdit" OnClientClick="return ValidatePage();"/>       
                    <div id="divErrorValidation" class="form_field_error_message" style="display: none; color: Red">
                        Debe diligenciar correctamente todos los campos obligatorios para el registro.</div>
                </td>
            </tr>        
        </table>
    </div> 
    
        <script type="text/javascript">
            function ValidatePage() {
                var IsValid = Page_ClientValidate("grpUserEdit");

                if (IsValid) {
                    return true;
                }
                else {
                    document.getElementById("divErrorValidation").style.display = "block";
                    return false;
                }
            }  
    </script>   
</asp:Content>
