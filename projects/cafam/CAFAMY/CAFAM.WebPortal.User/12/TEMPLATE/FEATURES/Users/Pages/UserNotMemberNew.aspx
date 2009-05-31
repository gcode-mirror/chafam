﻿<%@ Assembly Name="CAFAM.WebPortal.User, Version=1.0.0.0, Culture=neutral, PublicKeyToken=a01116ae02f25a36" %>
<%@ Page Language="C#" Inherits="CAFAM.WebPortal.User.UserNotMemberNew" Title="Alta de Usuario No Afiliado" MasterPageFile="~masterurl/default.master"%>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages"
    Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls"
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
    <asp:Label ID="lblError" runat="server" Visible="false" CssClass="form_field_error_message"
        ForeColor="Red"></asp:Label><asp:HyperLink runat="server" ID="lnkGoHome" CssClass="ms-descriptiontext"
            NavigateUrl="~/default.aspx" Visible="false">Volver al Home.</asp:HyperLink><asp:HyperLink
                runat="server" ID="lnkCommon" CssClass="ms-descriptiontext" Visible="false"></asp:HyperLink>
    <div>
        <table class="ms-formbody" style="width: 700px" id="tblPrincipal" runat="server">
                                <tr>
                        <td colspan="3" class="form_section_header">
                            <br />
                            <center>
                                <asp:Label ID="lblDatosGenerales" runat="server" Text="Alta de Usuario no Afiliado"
                                    CssClass="form_section_header"></asp:Label></center>
                        </td>
                    </tr>
            <tr>
                <td colspan="3">
                    <br />
                    <asp:Label CssClass="form_label" runat="server" ID="lblTitleApellido" Text="Apellidos"></asp:Label>
                </td>
            </tr>
            <tr >
                <td colspan="4">                
                    <asp:Label ID="lblApellidoPrimero" runat="server" Text="Primero" CssClass="form_label"></asp:Label>
                    <span class="form_label">(<font color="red">*</font>)</span>                    
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox runat="server" CssClass="form_text" ID="txtFirstSurname" MaxLength="100"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqFirstSurname" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="<br />El Campo es Requerido" Display="Dynamic" ControlToValidate="txtFirstSurname"
                        ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
                    <%--<ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="valFirstSurname" TargetControlID="reqFirstSurname"
                        HighlightCssClass="validatorCalloutHighlight" />--%>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Segundo" CssClass="form_label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox CssClass="form_text" runat="server" ID="txtSecondSurname" MaxLength="100"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <br />
                    <asp:Label CssClass="form_label" runat="server" ID="lblNombres" Text="Nombres"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="lblNombresPrimero" runat="server" Text="Primero" CssClass="form_label"></asp:Label>
                    <span class="form_label">(<font color="red">*</font>)</span><%--(<font color="red">*</font>)--%>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox CssClass="form_text" runat="server" ID="txtFirstName" MaxLength="100"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqFirstName" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="<br />El Campo es Requerido" Display="Dynamic" ControlToValidate="txtFirstName"
                        ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
<%--                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender2"
                        TargetControlID="reqFirstName" HighlightCssClass="validatorCalloutHighlight" />
--%>                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblNombreSegundo" runat="server" Text="Segundo" CssClass="form_label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox CssClass="form_text" runat="server" ID="txtSecondName" MaxLength="100"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <table>
                        <tr>
                            <td colspan="2">
                            <br />
                                <asp:Label ID="lblIdentidad" runat="server" Text="Identidad" CssClass="form_label"></asp:Label>
                                <%--(<font color="red">*</font>)--%>
                                <%--<span class="form_label">(<font color="red">*</font>)</span>--%>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                                <asp:Label ID="lblNumero" runat="server" Text="Número" CssClass="form_label"></asp:Label>
<%--                                
                                <span class="form_label">(<font color="red">*</font>)</span>
--%>                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label runat="server" ID="lblIdentificationNumber" CssClass="form_label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                    <td>
                    <br />
                        <asp:Label ID="lblBirthDate" runat="server" Text="Fecha de Nacimiento (dd/mm/aaaa)" CssClass="form_label"></asp:Label>
                    </td>
              </tr>
               <tr>
                        <td colspan="2">
                            <asp:Panel ID="pnlBirthDate" runat="server"></asp:Panel>
                        </td>
                </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lblMaritalState" runat="server" Text="Estado Civil" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButtonList ID="rdlMaritalState" runat="server" RepeatDirection="Horizontal" CssClass="form_radios">
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                <br />
                    <asp:Label ID="lblOcupation" runat="server" Text="Ocupación" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList runat="server" ID="ddlOccupation" CssClass="form_select">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                <br />
                    <asp:Label ID="lblCompensationFund" runat="server" Text="Caja de Compensación" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList runat="server" ID="ddlCompensationFund" CssClass="form_select">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td >
                <br />
                    <asp:Label ID="lblCompany" runat="server" Text="Empresa" CssClass="form_label"></asp:Label>
                    <%--(<font color="red">*</font>)--%>
                    <span class="form_label">(<font color="red">*</font>)</span>
                </td>
                <td>
                <br />
                    <asp:Label ID="lblCargo" runat="server" Text="Cargo" CssClass="form_label"></asp:Label>
                    <%--(<font color="red">*</font>)--%>
                    <span class="form_label">(<font color="red">*</font>)</span>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="txtCompany" CssClass="form_text" MaxLength="100"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqCompany" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="<br />El Campo es Requerido" Display="Dynamic" ControlToValidate="txtCompany" ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
<%--                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValreqCompany" TargetControlID="reqCompany"
                        HighlightCssClass="validatorCalloutHighlight" />
--%>                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtPosition" MaxLength="100" CssClass="form_text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqPosition" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="<br />El Campo es Requerido" Display="Dynamic" ControlToValidate="txtPosition" ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
<%--                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValreqPosition" TargetControlID="reqPosition"
                        HighlightCssClass="validatorCalloutHighlight" />
--%>                </td>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
                <td>
                <br />
                    <asp:Label ID="lblMailBox" runat="server" Text="Correo Electrónico Personal" CssClass="form_label"></asp:Label>
                    <%--(<font color="red">*</font>)--%>
                    <span class="form_label">(<font color="red">*</font>)</span>
                </td>
                <td>
                <br />
                    <asp:Label ID="lblMailCompany" runat="server" Text="Correo Electrónico Empresarial"
                        CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="txtPrivateEmail" MaxLength="3600" CssClass="form_text"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regExPrivateEmail" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="<br />El mail no es válido" Display="Dynamic" ControlToValidate="txtPrivateEmail"
                        ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                        ValidationGroup="grpUserNew"></asp:RegularExpressionValidator>
<%--                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="valregExPrivateEmail" TargetControlID="regExPrivateEmail"
                        HighlightCssClass="validatorCalloutHighlight" />
--%>                    <asp:RequiredFieldValidator ID="reqPrivateEmail" runat="server" CssClass="form_field_error_message" Display="Dynamic"
                        ErrorMessage="<br />El Campo es Requerido" ControlToValidate="txtPrivateEmail" ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
<%--                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValreqPrivateEmail" TargetControlID="reqPrivateEmail"
                        HighlightCssClass="validatorCalloutHighlight" />
--%>                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtCompanyEmail" MaxLength="3600" CssClass="form_text"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regExpCompanyEmail" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="<br />El mail no es válido" Display="Dynamic" ControlToValidate="txtCompanyEmail"
                        ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                        ValidationGroup="grpUserNew"></asp:RegularExpressionValidator>
<%--                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValregExpCompanyEmail" TargetControlID="regExpCompanyEmail"
                        HighlightCssClass="validatorCalloutHighlight" />
--%>                </td>
            </tr>
             <tr>
                <td>
                <br />
                    <asp:Label ID="lblPhoneContact" runat="server" Text="Teléfono de Contacto" CssClass="form_label"></asp:Label>
                    <%--(<font color="red">*</font>)--%>
                    <span class="form_label">(<font color="red">*</font>)</span>
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
                    <asp:RegularExpressionValidator ID="regExpTelExtension" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="<br />Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTelExtension"
                        ValidationExpression="^[\d]*$" ValidationGroup="grpUserNew"></asp:RegularExpressionValidator>
<%--                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValregExpTelExtension" TargetControlID="regExpTelExtension"
                        HighlightCssClass="validatorCalloutHighlight" />
--%>           </td>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Panel ID="pnlAddress" runat="server"></asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                <br />
                    <asp:Label ID="lblEPS" runat="server" Text="EPS al que está afiliado" CssClass="form_label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList runat="server" ID="ddlEPS" MaxLength="100" CssClass="form_select">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                <br />
                    <asp:Label ID="lblChildNumber" runat="server" Text="Número de Hijos" CssClass="form_label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="txtChildrenQuantity" MaxLength="14" CssClass="form_text"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regExpChildrenQuantity" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="<br />Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtChildrenQuantity"
                        ValidationExpression="^[\d]*$" ValidationGroup="grpUserNew"></asp:RegularExpressionValidator>
<%--                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValregExpChildrenQuantity"
                        TargetControlID="regExpChildrenQuantity" HighlightCssClass="validatorCalloutHighlight" />
--%>           </td>
            </tr>
            <tr>
                <td colspan="2">
                <br />
                    <asp:Label ID="lblNivelIngreso" runat="server" Text="Nivel de Ingresos" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan=2>
                    <asp:DropDownList CssClass="form_select" ID="ddlIncomeLevel" runat="server">
                    </asp:DropDownList>
                    <br />
                    <b>SMMLV = Salario Mínimo Mensual Legal Vigente.</b>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                <br />
                    <asp:Label ID="lblUserName" runat="server" Text="Nombre de Usuario" CssClass="form_label"></asp:Label>
                    <%--(<font color="red">*</font>)--%>
                    <span class="form_label">(<font color="red">*</font>)</span>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server" MaxLength="100" CssClass="form_text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqUserName" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="<br />El Campo es Requerido" Display="Dynamic" ControlToValidate="txtUserName" ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regExpUserName" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="<br />Debe tener al menos 6 caracteres (letras o números)" Display="Dynamic"
                        ControlToValidate="txtUserName" ValidationExpression="^[\d\w][\d\w][\d\w][\d\w][\d\w][\d\w]+$"
                        ValidationGroup="grpUserNew"></asp:RegularExpressionValidator>
<%--                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="valregExpUserName" TargetControlID="regExpUserName"
                        HighlightCssClass="validatorCalloutHighlight" />
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="valreqUserName" TargetControlID="reqUserName"
                        HighlightCssClass="validatorCalloutHighlight" />--%>
                </td>
            </tr>
            <tr>
                <td>
                <br />
                    <asp:Label ID="lblContrasena" runat="server" Text="Contraseña" CssClass="form_label"></asp:Label>
                    <%--(<font color="red">*</font>)--%>
                    <span class="form_label">(<font color="red">*</font>)</span>
                </td>
                <td colspan="3">
                <br />
                    <asp:Label ID="lblPassConfirm" runat="server" Text="Confirmación de Contraseña" CssClass="form_label"></asp:Label>
                    <%--(<font color="red">*</font>)--%>
                    <span class="form_label">(<font color="red">*</font>)</span>
                </td>
            </tr>
            <tr>
                <td style="width:40%">
                    <asp:TextBox ID="txtPass" CssClass="form_password" runat="server" MaxLength="100" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqPass" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="<br />El Campo es Requerido" Display="Dynamic" ControlToValidate="txtPass" ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator  ID="regExpPass" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="<br />Debe tener al menos 6 caracteres (letras o números)" Display="Dynamic"
                        ControlToValidate="txtPass" ValidationExpression="^[\d\w][\d\w][\d\w][\d\w][\d\w][\d\w]+$"
                        ValidationGroup="grpUserNew"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="regExpPass2" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="<br />Debe ingresar al menos un caracter numérico" Display="Dynamic" ControlToValidate="txtPass"
                        ValidationExpression="^[\d\w\W]*[\d]+[\d\w\W]*$" ValidationGroup="grpUserNew"></asp:RegularExpressionValidator>
<%--                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="valregExpPass" TargetControlID="regExpPass"
                        HighlightCssClass="validatorCalloutHighlight" />                        
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="valreqPass" TargetControlID="reqPass"
                        HighlightCssClass="validatorCalloutHighlight" />
--%>                </td>
                <td colspan="3">
                    <asp:TextBox ID="txtPassConfirmation" CssClass="form_password" runat="server" MaxLength="100" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqPassConfirmation" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="<br />El Campo es Requerido" Display="Dynamic" ControlToValidate="txtPassConfirmation"
                        ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regExpPassConfirmation" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="<br />Debe tener al menos 6 caracteres (letras o números)" Display="Dynamic"
                        ControlToValidate="txtPassConfirmation" ValidationExpression="^[\d\w][\d\w][\d\w][\d\w][\d\w][\d\w]+$"
                        ValidationGroup="grpUserNew"></asp:RegularExpressionValidator>
                    <asp:CustomValidator ID="cvalPassConfirmation" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="<br />No ingresó la misma contraseña" Display="Dynamic" ValidationGroup="grpUserNew"
                        ClientValidationFunction="ValidatePasswords" ControlToValidate="txtPassConfirmation"></asp:CustomValidator>
<%--                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="valregExpPassConfirmation"
                        TargetControlID="regExpPassConfirmation" HighlightCssClass="validatorCalloutHighlight" />                                                
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="valcvalPassConfirmation"
                        TargetControlID="cvalPassConfirmation" HighlightCssClass="validatorCalloutHighlight" />                        
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="valreqPassConfirmation"
                        TargetControlID="reqPassConfirmation" HighlightCssClass="validatorCalloutHighlight" />
--%>                </td>
            </tr>
            <tr>
                <td colspan="2">
                <br />
                    <asp:Label ID="lblQuestion" runat="server" Text="Pregunta de Seguridad" CssClass="form_label"></asp:Label>
                    <%--(<font color="red">*</font>)--%>
                    <span class="form_label">(<font color="red">*</font>)</span>
                </td>
            </tr>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td>
                                <asp:DropDownList CssClass="form_select" ID="ddlSecurityQuestion" runat="server"
                                    onChange="ShowHideOtherSecurityQuestion();">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox CssClass="form_text" ID="txtOtherSecurityQuestion" runat="server" Style="display: none"></asp:TextBox>
                            </td>
                            <td>
                                <asp:CustomValidator ID="cvalOtherSecurityQuestion" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="<br />El Campo es Requerido" ValidationGroup="grpUserNew" Display="Dynamic" ClientValidationFunction="ValidateOtherSecurityQuestion"
                                    ControlToValidate="ddlSecurityQuestion" ValidateEmptyText="true"></asp:CustomValidator>
<%--                                <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="valcvalOtherSecurityQuestion"
                                    TargetControlID="cvalOtherSecurityQuestion" HighlightCssClass="validatorCalloutHighlight" />
--%>                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                <br />
                    <asp:Label ID="lblSecurityQuestion" runat="server" Text="Respuesta a la pregunta de Seguridad"
                        CssClass="form_label"></asp:Label>
                        <%--(<font color="red">*</font>)--%>
                        <span class="form_label">(<font color="red">*</font>)</span>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtSecurityAnswer" runat="server" MaxLength="100" CssClass="form_text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqSecurityAnswer" runat="server" CssClass="form_field_error_message"
                        ErrorMessage="<br />El Campo es Requerido" Display="Dynamic" ControlToValidate="txtSecurityAnswer"
                        ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
<%--                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="valreqSecurityAnswer" TargetControlID="reqSecurityAnswer"
                        HighlightCssClass="validatorCalloutHighlight" />
--%>                </td>
            </tr>
            <tr>
                <td colspan="2">
                <br />
                    <asp:Label ID="lblTemasInteres" runat="server" Text="Temas de Interés" CssClass="form_label"></asp:Label>
                    <%--(<font color="red">*</font>)--%>
                    <span class="form_label">(<font color="red">*</font>)</span>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBoxList CssClass="form_checkboxes" ID="chkListTopicOfInterest" runat="server"
                        RepeatColumns="2">
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div id="clickTermsAndConditions" class="ms-formdescription" style="color: Blue;
                        text-decoration: underline; cursor: hand" onclick="ShowHideTermsAndConditions();">
                        Términos y Condiciones</div>
                    <div id="TermsAndConditionesText" class="ms-formdescription" style="display: none">
                        “Al acceder al Portal Cafam y a cualquiera de sus páginas, el USUARIO autorizado
                        conviene en obligarse según los términos y condiciones que aparecen a continuación.
                        Si no está de acuerdo con los términos y condiciones a continuación presentados,
                        NO debe continuar y debe SALIR del portal.
                        <br />
                        <br />
                        Lea los siguientes términos y condiciones cuidadosamente. El acceso al Portal Cafam
                        o la utilización de la clave autorizada de registro, implican la aceptación del
                        usuario a todas las estipulaciones de este acuerdo y las condiciones y reglamentos
                        aplicables.<br />
                        <br />
                        El usuario deberá aceptar los presentes términos como paso previo para registrarse
                        en Cafam.<br />
                        <br />
                        De cambios y actualizaciones. El Usuario acepta que Cafam podrá cuando lo considere
                        conveniente alterar en cualquier momento y sin aviso previo, el diseño, presentación
                        y/o configuración del Portal, así como añadir nuevos Servicios, realizar correcciones,
                        mejoras o modificaciones en la Información y modificar las Condiciones Generales
                        requeridas para utilizar los servicios, sin que ello de lugar, ni derecho a ninguna
                        reclamación o indemnización, ni implique reconocimiento de responsabilidad alguna.<br />
                        <br />
                        Del Registro.- Para el uso de determinados servicios de Cafam, el usuario deberá
                        registrarse previamente, digitando su identificador (ID o login) y la contraseña
                        que el usuario se compromete a conservar y a usar con la diligencia debida. Para
                        el identificador, el usuario utilizará su número de identificación. El usuario,
                        no registrará marcas, rótulos de establecimientos, nombres comerciales, de personajes
                        públicos o de terceros conocidos sin su autorización.
                        <br />
                        <br />
                        El uso de la contraseña es personal e intransferible, no estando permitido la cesión,
                        ni siquiera temporal, a terceros. En tal sentido, el usuario deberá adoptar las
                        medidas necesarias para la custodia de la contraseña por él seleccionada, evitando
                        el uso de la misma por terceros. En consecuencia, el usuario es el único responsable
                        de la utilización que, de su contraseña se realice, sin responsabilidad por parte
                        de Cafam.<br />
                        <br />
                        En el supuesto que el usuario conozca o sospeche del uso de su contraseña por terceros
                        deberá poner tal circunstancia en conocimiento de Cafam a la mayor brevedad.<br />
                        <br />
                        Del Uso del Portal y de los Servicios.- El usuario se compromete a hacer un uso
                        diligente del portal y de los servicios accesibles desde el mismo, con total sujeción
                        a la Ley, a las buenas costumbres y a las presentes condiciones, así como guardando
                        el respeto debido a los demás usuarios.<br />
                        <br />
                        De la interrupción del servicio.- Cafam podrá interrumpir el acceso al Portal así
                        como la prestación de cualquiera o de todos los servicios que se prestan a través
                        del mismo en cualquier momento y sin previo aviso, ya sea por motivos técnicos,
                        de seguridad, de control, de mantenimiento, por fallos de suministro eléctrico o
                        por cualquier otra causa. Dicha interrupción podrá ser temporal o definitiva, en
                        cuyo caso se comunicará tal circunstancia a los usuarios.<br />
                        <br />
                        En consecuencia, la utilización por parte del usuario, de los servicios ofrecidos
                        en el portal Cafam, se lleva a cabo por su propia cuenta y riesgo, sin que, en ningún
                        caso, pueda exigirse responsabilidades de ningún tipo a Cafam basada en las expectativas
                        o en la utilidad de los servicios generadas por el usuario. Cafam no otorga garantía
                        alguna sobre la exactitud, adecuación o integridad de la información y los materiales,
                        y expresamente no responde por errores u omisiones en esta información y materiales.<br />
                        <br />
                        COPYRIGHT © Cafam se reserva todos los derechos. Cafam y sus logotipos, son marcas
                        comerciales registradas. Los otros emblemas o logotipos contenidos en estas páginas
                        son también considerados como marcas comerciales o de servicios debidamente registradas.
                        Los derechos de autor sobre las páginas, las imágenes, así como sobre el contenido
                        informativo alojado en las mismas, es propiedad de Cafam. Por tanto, si el usuario
                        accede al Portal Cafam, acepta y se obliga a no distribuir, reproducir, vender,
                        retransmitir, publicar, o comercializar la información aquí contenida, de manera
                        total o parcial”<br />
                        <br />
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                <br />
                    <asp:Label ID="lblAgree" runat="server" Text="Acepto los Términos y Condiciones"
                        CssClass="form_label"></asp:Label>
                        <%--(<font color="red">*</font>)--%>
                        <span class="form_label">(<font color="red">*</font>)</span>
                </td>
            </tr>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td>
                                <asp:CheckBox CssClass="form_checkbox" ID="chkAgreeTermsAndConditiones" runat="server"
                                    onclick="HidedivChkTermsAndConditions();" />
                            </td>
                            <td>
                                <div id="divChkTermsAndConditions" class="form_field_error_message" style="display: none;
                                    color: Red">
                                    &nbsp;Debe aceptar los Términos y condiciones</div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Panel ID="pnlCaptcha" runat="server">
                    </asp:Panel>
                </td>
            </tr>
<tr><td><br /></td></tr>
<tr><td><br /></td></tr>
<tr><td><br /></td></tr>
<tr><td><br /></td></tr>
<tr><td><br /></td></tr>
<tr><td><br /></td></tr>
            <tr>
                <td colspan="2" align="right">
                    <asp:Button ID="btnAnterior" CausesValidation="false" OnClientClick="javascript:history.go(-1);" runat="server" Text="Volver Atrás" />
                    <asp:Button ID="btnSave" runat="server" Text="Dar de Alta" ValidationGroup="grpUserNew"  OnClientClick="return ValidatePage();"/>
                    <div id="divErrorValidation" class="form_field_error_message" style="display: none; color: Red">
                     Debe diligenciar correctamente todos los campos obligatorios para el registro.</div>
                </td>
            </tr>
        </table>
    </div>

    <script type="text/javascript">
        function ValidateAddress(AddressComboId) {
            var AddressTxtWithValue = 0;

            for (i = 1; i <= 5; i++) {
                if (document.getElementById(AddressComboId + i).value.length > 0) {
                    AddressTxtWithValue++;
                }
            }

            if (AddressTxtWithValue < 2) {
                document.getElementById("addressMsg").style.display = "block";
            }
            else {
                document.getElementById("addressMsg").style.display = "none"
            }
        }

        function ValidatePasswords(events, args) {
            var pass1 = document.getElementById('<%= txtPass.ClientID %>').value;
            var pass2 = document.getElementById('<%= txtPassConfirmation.ClientID %>').value;

            args.IsValid = (pass1 == pass2);
        }

        function ShowHideOtherSecurityQuestion() {
            var secQuestions = document.getElementById('<%= ddlSecurityQuestion.ClientID %>').value;
            var otherSecQuestion = document.getElementById('<%= txtOtherSecurityQuestion.ClientID %>');

            if (secQuestions.length == 0) {
                otherSecQuestion.style.display = 'block';
            }
            else {
                otherSecQuestion.style.display = 'none';
            }
        }

        function ValidateOtherSecurityQuestion(events, args) {
            var secQuestions = document.getElementById('<%= ddlSecurityQuestion.ClientID %>').value;
            var otherSecQuestion = document.getElementById('<%= txtOtherSecurityQuestion.ClientID %>').value;

            if (secQuestions.length == 0) {
                if (otherSecQuestion.length > 0) {
                    args.IsValid = true;
                }
                else {
                    args.IsValid = false;
                }
            }
            else {
                args.IsValid = true;
            }
        }

        function ShowHideTermsAndConditions() {
            var text = document.getElementById("TermsAndConditionesText");

            if (text.style.display != "none") {
                text.style.display = "none";
            }
            else {
                text.style.display = "block";
            }
        }

        function HidedivChkTermsAndConditions() {
            document.getElementById("divChkTermsAndConditions").style.display = "none";
        }

        function ValidatePage() {
            var IsValid = Page_ClientValidate("grpUserNew");

            if (document.getElementById('<%= chkAgreeTermsAndConditiones.ClientID %>').checked) 
            {
                return true;
            }
            else {
                document.getElementById("divErrorValidation").style.display = "block";
                document.getElementById('divChkTermsAndConditions').style.display = "block";
                return false;
            }
        }                
    </script>

</asp:Content>

