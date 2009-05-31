<%@ Assembly Name="CAFAM.WebPortal.User, Version=1.0.0.0, Culture=neutral, PublicKeyToken=a01116ae02f25a36" %>
<%@ Page Language="C#" Inherits="CAFAM.WebPortal.User.UserEdit" Title="Edición de Usuario Afiliado" MasterPageFile="~masterurl/default.master"%>
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
    <asp:Label ID="lblError" runat="server" Visible="false" CssClass="ms-descriptiontext" ForeColor="Red"></asp:Label><asp:HyperLink runat="server" ID="lnkGoHome" CssClass="ms-descriptiontext" NavigateUrl="~/default.aspx" Visible="false">Volver al Home.</asp:HyperLink>
    <div>
        <table class="ms-formbody" style="width:100%" id="tblPrincipal" runat="server">
            <tr>
                <td colspan="2">
                    <asp:Label CssClass="form_label" runat="server" ID="lblCamposNoEditables" Text="Los campos que no puede editar deberá hacerlo mediante su empresa."></asp:Label><br />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <br />
                    <asp:Label CssClass="form_label" runat="server" ID="lblNombres" Text="Nombres"></asp:Label>
                </td>
            </tr>
            <tr  class="ms-formdescription">
                <td colspan="4">
                    <asp:Label ID="lblNombresPrimero" runat="server" Text="Primero" CssClass="form_label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label runat="server" ID="lblFirstName" CssClass="form_label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblNombreSegundo" runat="server" Text="Segundo" CssClass="form_label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label runat="server" ID="lblSecondName" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <br />
                    <asp:Label CssClass="form_label" runat="server" ID="lblTitleApellido" Text="Apellidos"></asp:Label>
                </td>
            </tr>
            <tr class="ms-formdescription">
                <td colspan="4">
                    <asp:Label ID="lblApellidoPrimero" runat="server" Text="Primero" CssClass="form_label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label runat="server" ID="lblFirstSurname" CssClass="form_label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Segundo" CssClass="form_label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label runat="server" ID="lblSecondSurname" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <table  class="ms-formdescription">
                        <tr>
                            <td colspan="2">
                                <br />
                                <asp:Label ID="lblIdentidadTitulo" runat="server" Text="Identidad" CssClass="form_label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblTipo" runat="server" CssClass="form_label" Text="Tipo:"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label CssClass="form_label" runat="server" ID="lblIdentificationType"></asp:Label>
                            </td>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label6" runat="server" Text="Número" CssClass="form_label"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label runat="server" ID="lblIdentificationNumber"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lblOcupation" runat="server" Text="Ocupación" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td  class="ms-formdescription">
                    <asp:Label runat="server" ID="lblOccupation" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lblTitleCompensationFund" runat="server" Text="Caja de Compensación"
                        CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td  class="ms-formdescription">
                    <asp:Label runat="server" ID="lblCompensationFund" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="ms-formdescription">
                    <br />
                    <asp:Label ID="lblCompanyTitle" runat="server" Text="Empresa" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td  class="ms-formdescription">
                    <asp:Label runat="server" ID="lblCompany" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td width="50%">
                    <br />
                    <asp:Label ID="lblMailBox" runat="server" Text="Correo Electrónico Personal" CssClass="form_label"></asp:Label>
                    (<font color="red">*</font>)
                </td>
                <td width="50%">
                    <br />
                    <asp:Label ID="lblMailCompany" runat="server" Text="Correo Electrónico Empresarial" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="txtPrivateEmail" MaxLength="3600" CssClass="form_text"></asp:TextBox>
                    </td>

                <td>
                    <asp:TextBox runat="server" ID="txtCompanyEmail" MaxLength="3600" CssClass="form_text"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:RegularExpressionValidator ID="regExpPrivateEmail" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="txtPrivateEmail"
                        ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                        ValidationGroup="grpUserEdit"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="reqPrivateEmai" runat="server" CssClass="form_field_error_message"
                       Display="Dynamic"  ErrorMessage="Requerido" ControlToValidate="txtPrivateEmail" ValidationGroup="grpUserEdit"></asp:RequiredFieldValidator>
                </td>
                <td>
                        <asp:RegularExpressionValidator ID="regExpCompanyEmail" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="txtCompanyEmail"
                        ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                        ValidationGroup="grpUserEdit"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lblPhoneContact" runat="server" Text="Teléfono de Contacto" CssClass="form_label"></asp:Label>
                    (<font color="red">*</font>)
                </td>
                <td>
                    <br />
                    <asp:Label ID="lblPhoneMovil" runat="server" Text="Teléfono Móvil" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                     <asp:Panel runat="server" ID="pnlPrivateTel" ></asp:Panel>   
                </td>
                <td>
                    <asp:Panel runat="server" ID="pnlPrivateMobile" ></asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lblPhoneJob" runat="server" Text="Teléfono Laboral" CssClass="form_label"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:Label ID="lblExtentionPhone" runat="server" Text="Extensión Telefónica" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel runat="server" ID="pnlCompanyTel"></asp:Panel>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtTelExtension" MaxLength="100" CssClass="form_text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                
                </td>
                <td>
                       <asp:RegularExpressionValidator ID="regExpTelExtension" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTelExtension"
                        ValidationExpression="^[\d]*$" ValidationGroup="grpUserEdit"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="pnlAddress" runat="server"></asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                    <asp:Label ID="lblEPSTitulo" runat="server" Text="EPS al que está afiliado" CssClass="form_label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server" ID="lblEPS"></asp:Label>
                </td>
            </tr>
            <tr class="ms-formdescription">
                <td valign="top">
                    <asp:Label ID="lblTemasInteres" runat="server" Text="Temas de Interés" CssClass="form_label"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList CssClass="ms-formdescription" ID="chkListTopicOfInterest" runat="server" RepeatColumns="2">
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td align="right" colspan="2">
                    <%--<asp:Button ID="btnAnterior" CausesValidation="false" OnClientClick="javascript:history.back();" runat="server" Text="Volver Atrás" />--%>
                    <asp:Button ID="btnModify" runat="server" Text="Modificar Información" ValidationGroup="grpUserEdit" />  
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
