<%@ Assembly Name="CAFAM.WebPortal.User, Version=1.0.0.0, Culture=neutral, PublicKeyToken=a01116ae02f25a36" %>
<%@ Page Language="C#" Inherits="CAFAM.WebPortal.User.UserCompanyNewAdmin" Title="Administración Alta de Usuario Empresa por Administrador" MasterPageFile="~masterurl/default.master" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages"
    Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Assembly="AjaxControlToolkit, Version=1.0.10301.0, Culture=Neutral, PublicKeyToken=28f01b0e84b6d53e"
    Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server" ID="MainContent">
    <link rel="Stylesheet" href="~/_layouts/StyleSheet.css" type="text/css" />

    <script type='text/javascript'>
        _spOriginalFormAction = document.forms[0].action;
        _spSuppressFormOnSubmitWrapper = true;
    </script>

    <asp:ScriptManager ID="scriptMng" runat="server">
    </asp:ScriptManager>
    <div>
        <asp:Label ID="lblError" runat="server" Visible="false" CssClass="form_field_error_message"
            ForeColor="Red"></asp:Label><asp:HyperLink runat="server" ID="lnkGoHome" CssClass="ms-descriptiontext"
                NavigateUrl="~/default.aspx" Visible="false">Volver al Home.</asp:HyperLink>
    </div>
    <div>
        <table id="tblPrincipal" class="ms-formbody" style="width: 700px" runat="server" >
            <tr>
                <td colspan="3" class="form_section_header">
                    <br />
                    <center>
                        <asp:Label ID="lblDatosGenerales" runat="server" Text="Alta de Usuario Empresa"
                            CssClass="form_section_header"></asp:Label></center>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lblNIT" runat="server" Text="NIT" CssClass="form_label"></asp:Label>(<font
                        color="red">*</font>)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtNit" runat="server" MaxLength="14" CssClass="form_text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RegularExpressionValidator CssClass="form_field_error_message" ID="regExNit"
                        runat="server" ErrorMessage="Este campon debe ser un numero" Display="Dynamic"
                        ControlToValidate="txtNit" ValidationExpression="^[0-9]*" ValidationGroup="grpUserNew"> </asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="regNIT" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNit" ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lblSubNIT" runat="server" Text="SubNIT" CssClass="form_label"></asp:Label>(<font
                        color="red">*</font>)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtSubNIT" runat="server" MaxLength="14" CssClass="form_text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RegularExpressionValidator ID="regExpSubNIT" runat="server" ErrorMessage="Este campon debe ser un numero"
                        Display="Dynamic" ControlToValidate="txtSubNIT" ValidationExpression="^[0-9]*"
                        ValidationGroup="grpUserNew"> </asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="reqSubNIT" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSubNIT" ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lblRazonSocial" runat="server" Text="Razón Social de la Empresa" CssClass="form_label"></asp:Label>(<font
                        color="red">*</font>)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtCompanyName" runat="server" MaxLength="100" CssClass="form_text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RequiredFieldValidator ID="reqCompanyName" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCompanyName"
                        ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <br />
                    <asp:Label CssClass="form_label" runat="server" ID="lblTitleApellido" Text="Apellidos"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="lblFirstSurName" runat="server" Text="Primero" CssClass="form_label"></asp:Label> (<font color="red">*</font>)
                    <asp:TextBox runat="server" ID="txtFirstSurname" MaxLength="100" CssClass="form_text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqFirstSurname" runat="server" CssClass="ms-descriptiontext"
                        ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtFirstSurname"
                        ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Segundo" CssClass="form_label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox runat="server" ID="txtSecondSurname" MaxLength="100" CssClass="form_text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <br />
                    <asp:Label CssClass="form_label" runat="server" ID="lblTitleNames" Text="Nombres"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="lblFirstNames" runat="server" Text="Primero" CssClass="form_label"></asp:Label>
                    (<font color="red">*</font>)&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox runat="server" ID="txtFirstName" MaxLength="100" CssClass="form_text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqFirstName" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtFirstName" ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label55" runat="server" Text="Segundo" CssClass="form_label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox runat="server" ID="txtSecondName" MaxLength="100" CssClass="form_text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <table style="width: 100%">
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lblIdentity" runat="server" Text="Identidad" CssClass="form_label"></asp:Label>(<font
                                    color="red">*</font>)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblTipo" runat="server" CssClass="form_label" Text="Tipo:"></asp:Label>
                            </td>
                            <td>
                                <asp:RadioButtonList ID="rdIdentificationType" runat="server" RepeatDirection="Horizontal"
                                    CssClass="form_radios">
                                </asp:RadioButtonList>
                            </td>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblNumber" runat="server" Text="Número" CssClass="form_label"></asp:Label>(<font
                                    color="red">*</font>)
                                <asp:TextBox ID="txtIdentificatioNumber" CssClass="form_text" runat="server" MaxLength="14"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RegularExpressionValidator ID="regExpIdentificationNumber" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtIdentificatioNumber"
                                    ValidationExpression="^[\d]*$" ValidationGroup="grpUserBeforeNew"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="reqIdentificationNumber" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="El Campo es Requerido"
                                    Display="Dynamic" ControlToValidate="txtIdentificatioNumber" ValidationGroup="grpUserBeforeNew"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="ms-formdescription">
                <td>
                <br />
                    <asp:Label ID="lblCargo" runat="server" CssClass="form_label" Text="Cargo dentro de la empresa"></asp:Label>
                    (<font color="red">*</font>)
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="txtPosition" MaxLength="100" CssClass="form_text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RequiredFieldValidator ID="reqPosition" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="Requerido" ControlToValidate="txtPosition" ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>

                    <asp:Label ID="lblMail" runat="server" CssClass="form_label" Text="Correo Electrónico"></asp:Label>
                    (<font color="red">*</font>)
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="txtCompanyEmail" MaxLength="3600" CssClass="form_text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RegularExpressionValidator ID="regExpCompanyEmail" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="txtCompanyEmail"
                        ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                        ValidationGroup="grpUserNew"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="reqCompanyEmail" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="Requerido" ControlToValidate="txtCompanyEmail" ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 15%">
                    <asp:Label ID="lblPhoneContact" runat="server" CssClass="form_label" Text="Teléfono de Contacto (fijo)"></asp:Label>
                    (<font color="red">*</font>)
                </td>
                <td style="width: 15%">
                    <asp:Label ID="lblMobilePhone" runat="server" CssClass="form_label" Text="Teléfono Móvil"></asp:Label>
                </td>
                <td style="width: 25%">
                    <asp:Label ID="lblExtentionPhone" runat="server" CssClass="form_label" Text="Extensión Telefónica"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel runat="server" ID="pnlCompanyTel">
                    </asp:Panel>
                </td>
                <td>
                    <asp:Panel runat="server" ID="pnlCompanyMobile">
                    </asp:Panel>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtTelExtension" MaxLength="100" CssClass="form_text"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regTelExtension" runat="server" CssClass="ms-descriptiontext"
                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTelExtension"
                        ValidationExpression="^[\d]*$" ValidationGroup="grpUserNew"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr class="ms-formdescription">
                <td colspan=3>
                <br />
                    <asp:Label ID="lblPersonalManager" runat="server" CssClass="form_label" Text="Nombre Jefe de Personal"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="txtPersonalManager" MaxLength="100" CssClass="form_text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="ms-formdescription">
                <br />
                    <asp:Label ID="lblAuthorizedBy" runat="server" CssClass="form_label" Text="Autorizado Por"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtAuthorizedBy" runat="server" MaxLength="100" CssClass="form_text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="ms-formdescription">
                <br />
                    <asp:Label ID="lblAuthorizationDate" runat="server" CssClass="form_label" Text="Fecha de Autorización (dd/mm/aaaa)"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="pnlAuthorizationDate" runat="server">
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="ms-formdescription">
                <br />
                    <asp:Label ID="lblbAuthorizedToGetBasicData" runat="server" CssClass="form_label"
                        Text="Permiso Consulta Datos Básicos"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="chkAuthorizedToGetBasicData" runat="server" CssClass="form_checkbox" />
                </td>
            </tr>
            <tr>
                <td class="ms-formdescription">
                <br />
                    <asp:Label ID="lblAuthorizedToGetContibutionData" runat="server" CssClass="form_label"
                        Text="Permiso Consulta de Aportes"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="chkAuthorizedToGetContibutionData" runat="server" CssClass="form_checkbox" />
                </td>
            </tr>
            <tr>
                <td class="ms-formdescription">
                <br />
                    <asp:Label ID="lblAuthorizedToGetMemberData" runat="server" CssClass="form_label" Text="Permiso Consulta de Afiliados"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="chkAuthorizedToGetMemberData" runat="server" CssClass="form_checkbox" />
                </td>
            </tr>
            <tr>
                <td class="ms-formdescription">
                <br />
                <asp:Label ID="lblUserName" runat="server"  CssClass="form_label" Text="Nombre de Usuario"></asp:Label>
                    (<font color="red">*</font>)
                </td>
                </tr>
                <tr>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server" MaxLength="100" CssClass="form_text"></asp:TextBox>
                    </td>
                    </tr>
                    <tr>
                    <td>
                    <asp:RequiredFieldValidator ID="reqUserName" runat="server" CssClass="ms-descriptiontext"
                        ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtUserName" ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regExpUserName" runat="server" CssClass="ms-descriptiontext"
                        ErrorMessage="Debe tener al menos 6 caracteres (letras o números)" Display="Dynamic"
                        ControlToValidate="txtUserName" ValidationExpression="^[\d\w][\d\w][\d\w][\d\w][\d\w][\d\w]+$"
                        ValidationGroup="grpUserNew"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="right" colspan="3">
                    <%--<asp:Button ID="btnAnterior" CausesValidation="false" OnClientClick="javascript:history.back();"
                        runat="server" Text="Volver Atrás" />--%>
                    <asp:Button ID="btnSave" runat="server" Text="Dar de Alta" ValidationGroup="grpUserNew"
                        OnClientClick="return ValidatePage();" />
                    <div id="divErrorValidation" class="form_field_error_message" style="display: none;
                        color: Red">
                        Debe diligenciar correctamente todos los campos obligatorios para el registro.</div>
                </td>
            </tr>
        </table>
    </div>

    <script type="text/javascript">
        function ValidatePage() {
            var IsValid = Page_ClientValidate("grpUserNew");

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
