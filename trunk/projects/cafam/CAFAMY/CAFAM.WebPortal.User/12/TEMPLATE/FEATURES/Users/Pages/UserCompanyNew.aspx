<%@ Assembly Name="CAFAM.WebPortal.User, Version=1.0.0.0, Culture=neutral, PublicKeyToken=a01116ae02f25a36" %>
<%@ Page Language="C#" Inherits="CAFAM.WebPortal.User.UserCompanyNew" Title="Alta de Usuario Empresa" MasterPageFile="~masterurl/default.master"%>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Assembly="AjaxControlToolkit, Version=1.0.10301.0, Culture=Neutral, PublicKeyToken=28f01b0e84b6d53e" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server" ID="MainContent">
    <link rel="Stylesheet" href="~/_layouts/StyleSheet.css" type="text/css" />
    <script type='text/javascript'>
        _spOriginalFormAction = document.forms[0].action;
        _spSuppressFormOnSubmitWrapper = true;
    </script>
    <asp:ScriptManager ID=scrpMng runat=server />
    <div>
        <asp:Label ID="lblError" runat="server" Visible="false" CssClass="form_field_error_message" ForeColor="Red"></asp:Label><asp:HyperLink runat="server" ID="lnkCommon" CssClass="ms-descriptiontext" Visible="false"></asp:HyperLink>
    </div>   
    <table style="width:100%" id="tblContact" runat="server" visible="false">
        <tr>
            <td>
                <asp:TextBox ID="txtContact" runat="server" MaxLength="400" TextMode="MultiLine" Width="100%" Rows="4" CssClass="form_text"></asp:TextBox>    
                <asp:RequiredFieldValidator ID="reqContact" runat="server" ErrorMessage="<br />Requerido" CssClass="form_field_error_message" ValidationGroup="grpContact" ControlToValidate="txtContact"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Button ID="btnSend" runat="server" Text="Enviar Mensaje" ValidationGroup="grpContact"/>
            </td>
        </tr>
    </table> 
    <div>
        <table id="tblNIT" style="width:100%" runat="server" visible="true">
            <tr >
                <td>
                    <br />
                    <asp:Label runat="server" ID="lblNITTitulo1" Text="Nit" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtNit" runat="server" MaxLength="14" CssClass="form_text"></asp:TextBox> 
                    <asp:RegularExpressionValidator ID="regExNit" runat="server" ErrorMessage="<br />Este campo debe ser un numero" Display="Dynamic" ControlToValidate="txtNit" ValidationExpression="^[0-9]*" ValidationGroup="grpNIT" CssClass="form_field_error_message"> </asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="reqNit" runat="server" CssClass="form_field_error_message" ErrorMessage="<br />Requerido" Display="Dynamic" ControlToValidate="txtNit" ValidationGroup="grpNIT"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label runat="server" ID="lblSubNitTitulo1" Text="SubNit" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtSubNit" runat="server" MaxLength="2" CssClass="form_text">0</asp:TextBox>
                    <asp:RegularExpressionValidator ID="regExpSubNit" runat="server" ErrorMessage="<br />Este campon debe ser un numero"  Display="Dynamic" ControlToValidate="txtSubNit" ValidationGroup="grpNIT" ValidationExpression="^[0-9]*" CssClass="form_field_error_message"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="reqSubNit" runat="server" CssClass="form_field_error_message" ErrorMessage="<br />Requerido" Display="Dynamic" ControlToValidate="txtSubNit" ValidationGroup="grpNIT"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr >
                <td colspan="4" align="right">
                <asp:Button ID="Back_4" CausesValidation="false" OnClientClick="javascript:history.back();" runat="server" Text="Volver Atrás" />
                    <asp:Button ID="btnCompanyVerification" runat="server" Text="Enviar" ValidationGroup="grpNIT"/>
                </td>
            </tr>
        </table>        
        <table id="tblIdentification" style="width:100%" runat="server" visible="false">
            <tr>
                <td colspan="3">
                                                    <table style="width:100%">
                                
                                <tr>
                                    <td colspan="2">
                                    <br />
                                        <asp:Label ID="lblIdentity" runat="server" Text="Identidad" CssClass="form_label"></asp:Label>(<font
                                            color="red">*</font>)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblTipo" runat="server" CssClass="form_label" Text="Tipo:"></asp:Label>
                                    </td>
                                    <td>
                                           <asp:RadioButtonList ID="rdIdentificationType" runat="server" repeatdirection="Horizontal" CssClass="form_radios">
                                        </asp:RadioButtonList>                                 
                                    </td>
                                    </tr>
                                    <tr>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="lblNumber" runat="server" Text="Número" CssClass="form_label"></asp:Label>(<font
                                            color="red">*</font>)
                                        <asp:TextBox ID="txtIdNum" CssClass=form_text runat="server" MaxLength="14"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="regExpIdentificationNumber" runat="server" CssClass="form_field_error_message" ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtIdNum" ValidationExpression="^[\d]*$" ValidationGroup="grpUserBeforeNew"></asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="reqIdentificationNumber" runat="server" CssClass="form_field_error_message"
                                         ErrorMessage="El Campo es Requerido" Display="Dynamic" ControlToValidate="txtIdNum" ValidationGroup="grpUserBeforeNew"></asp:RequiredFieldValidator> 
                                    </td>
                                    </tr>
                                    
                                
                                </table>
                </td>
            </tr>
            <tr >
                <td colspan="4" align="right">
                <asp:Button ID="btnBack_3" CausesValidation="false" OnClientClick="javascript:history.back();" runat="server" Text="Volver Atrás" />
                    <asp:Button ID="btnIdentificationVerification" runat="server" Text="Enviar" Visible="true" ValidationGroup="grpId" />
                </td>
            </tr>
        </table>
        <table id="tblQuestions"  style="width:100%" runat="server" visible="false">
            <tr>                
                <td colspan="2" >
                    <br />
                    <asp:Label ID="lblContesteLasPreguntas" runat="server" Text="Por favor conteste las preguntas" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td >                    
                    <br />
                    <asp:Label ID="lblNombreJefePersonalTitulo1" runat="server" Text="¿Cuál es el nombre del Jefe de Personal?" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="txtQuestion1" MaxLength="100" CssClass="form_text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqQ1" runat="server" CssClass="form_field_error_message" ErrorMessage="<br />Requerido" Display="Dynamic" ControlToValidate="txtQuestion1" ValidationGroup="grpQ"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>                    
                    <br />
                    <asp:Label ID="lblNITEmpresa" runat="server" Text="¿Cuál es el Nit de la empresa?" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="txtQuestion2" MaxLength="14" CssClass="form_text"></asp:TextBox> 
                    <asp:RegularExpressionValidator ID="regExpQ2" runat="server" ErrorMessage="<br />Este campon debe ser un numero" Display="Dynamic" ControlToValidate="txtQuestion2" ValidationGroup="grpQ" ValidationExpression="^[0-9]*" CssClass="form_field_error_message"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="reqQ2" runat="server" CssClass="form_field_error_message" ErrorMessage="<br />Requerido" Display="Dynamic" ControlToValidate="txtQuestion2" ValidationGroup="grpQ"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lblTelefonoEmpresa" runat="server" Text="¿Cuál es el teléfono de la empresa?" CssClass="form_label"></asp:Label>                    
                </td>
            </tr>
            <tr>                
                <td>
                    <asp:TextBox runat="server" ID="txtQuestion3" MaxLength="14" ReadOnly="true" CssClass="form_text"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regExpQ3" runat="server" Enabled="false" ErrorMessage="<br />Este campon debe ser un numero" Display="Dynamic" ControlToValidate="txtQuestion3" ValidationGroup="grpQ" ValidationExpression="^[0-9]*" CssClass="form_field_error_message"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="reqQ3" runat="server" Enabled="false" CssClass="form_field_error_message" ErrorMessage="<br />Requerido" Display="Dynamic" ControlToValidate="txtQuestion3" ValidationGroup="grpQ"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lblActividadEconomicaEmpresa" runat="server" Text="¿Cuál es la actividad económica de la empresa?" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="txtQuestion4" MaxLength="100" ReadOnly="true" CssClass="form_text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reQ4" runat="server" Enabled="false" CssClass="form_field_error_message" ErrorMessage="<br />Requerido" Display="Dynamic" ControlToValidate="txtQuestion4" ValidationGroup="grpQ"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                <br />
                    <asp:Label ID="lblMesAfiliacion" runat="server" Text="¿Cuál es el mes de afiliación de la empresa?" CssClass="form_label"></asp:Label>                    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="txtQuestion5" MaxLength="2" ReadOnly="true" CssClass="form_text"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regExpQ5" runat="server" Enabled="false" ErrorMessage="<br />Este campon debe ser un numero" Display="Dynamic" ControlToValidate="txtQuestion5" ValidationGroup="grpQ" ValidationExpression="^[0-9]*" CssClass="form_field_error_message"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="reqQ5" runat="server" Enabled="false" CssClass="form_field_error_message" ErrorMessage="<br />Requerido" Display="Dynamic" ControlToValidate="txtQuestion5" ValidationGroup="grpQ"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="right">
                <asp:Button ID="btnBack_2" CausesValidation="false" OnClientClick="javascript:history.back();" runat="server" Text="Volver Atrás" />
                    <asp:Button ID="btnValidateQuestions" runat="server" Text="Enviar" Visible="true" ValidationGroup="grpQ" />
                </td>
            </tr>
        </table>
        <table id="tblPrincipal" style="width:100%" runat="server" visible="false">
            <tr>
                <td>
                    <asp:Label ID="lblNITTitulo" runat="server" Text="NIT" CssClass="form_label"></asp:Label>                    
                </td>
                <td>
                    <asp:Label ID="lblNit" runat="server" CssClass="form_label"></asp:Label>
                </td>              
                <td>
                    <asp:Label ID="lblSubNITTitulo" runat="server" Text="SubNIT" CssClass="form_label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblSubNIT" runat="server" CssClass="form_label"></asp:Label>
                </td>
            </tr>     
            <tr>
                <td>
                    <asp:Label ID="lblRazonSocialEmpresa" runat="server" Text="Razón Social de la Empresa" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCompanyName" runat="server" CssClass="form_label"></asp:Label>
                </td>
            </tr>   
            <tr> 
                <td>
                    <asp:Label ID="lblNombresTitulo" runat="server" Text="Nombres" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPrimerNombreTitulo" runat="server" Text="Primero" CssClass="form_label"></asp:Label>&nbsp;(<font color="red">*</font>)
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtFirstName" MaxLength="100" CssClass="form_text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqFirstName" runat="server" CssClass="form_field_error_message" ErrorMessage="<br />Requerido" Display="Dynamic" ControlToValidate="txtFirstName" ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <asp:Label ID="lblSegundoNombreTitulo" runat="server" Text="Segundo" CssClass="form_label"></asp:Label>&nbsp;
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtSecondName" MaxLength="100" CssClass="form_text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblApellidosTitulo" runat="server" Text="Apellidos" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPrimerApellidoTitulo" runat="server" Text="Primero" CssClass="form_label"></asp:Label>&nbsp;(<font color="red">*</font>)
                </td>                
                <td>
                    <asp:TextBox runat="server" ID="txtFirstSurname" MaxLength="100" CssClass="form_text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqFirstSurname" runat="server" CssClass="form_field_error_message" ErrorMessage="<br />Requerido" Display="Dynamic" ControlToValidate="txtFirstSurname" ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <asp:Label ID="lblSegundoApellidoTitulo" runat="server" Text="Segundo" CssClass="form_label"></asp:Label>&nbsp;
                </td>                
                <td>
                    <asp:TextBox runat="server" ID="txtSecondSurname" MaxLength="100" CssClass="form_text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTipoIdentificacion" runat="server" Text="Identificación" CssClass="form_label"></asp:Label>&nbsp;
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <asp:Label ID="lblTipoTitulo" Text="Tipo" runat="server" CssClass="form_label"></asp:Label>&nbsp;
                </td>
                <td>
                    <asp:Label ID="lblIdentificationType" runat="server" CssClass="form_label"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <asp:Label ID="lblNumeroIdentificacion" runat="server" Text="Número" CssClass="form_label"></asp:Label>&nbsp;
                </td>
                <td>
                    <asp:Label ID="lblIdentificatioNumber" runat="server" CssClass="form_label"></asp:Label>
                </td>
            </tr>           
            <tr >
                <td>
                <br />
                    <asp:Label ID="lblCargo" runat="server" Text="Cargo dentro de la empresa" CssClass="form_label"></asp:Label><span class="form_label">&nbsp;(<font color="red">*</font>)</span>
                </td>
                </tr>
                <tr>
                                <td>
                    <asp:TextBox runat="server" ID="txtPosition" MaxLength="100" CssClass="form_text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqPosition" runat="server" CssClass="form_field_error_message" ErrorMessage="<br />Requerido" ControlToValidate="txtPosition" ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td >
                    <asp:Label ID="lblCorreoElectronico" runat="server" Text="Correo Electrónico" CssClass="form_label"></asp:Label><span class="form_label">&nbsp;(<font color="red">*</font>)</span>
                </td>                
            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="txtCompanyEmail" MaxLength="3600" CssClass="form_text"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regExpCompanyEmail" runat="server" CssClass="form_field_error_message" ErrorMessage="<br />El mail no es válido" Display="Dynamic" ControlToValidate="txtCompanyEmail" ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$" ValidationGroup="grpUserNew"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="reqCompanyEmail" runat="server" CssClass="form_field_error_message" ErrorMessage="<br />Requerido" ControlToValidate="txtCompanyEmail" ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 15%">
                <br />
                    <asp:Label ID="lblContactPhone" runat="server" Text="Teléfono de Contacto (fijo)" CssClass="form_label"></asp:Label><span class="form_label">&nbsp;(<font color="red">*</font>)</span>                    
                </td>
                <td style="width: 15%"> 
                <br />                   
                    <asp:Label ID="lblExtensionTelefonica" runat="server" Text="Extensión Telefónica" CssClass="form_label"></asp:Label>
                </td>
                                <td style="width: 15%">
                                <br />
                    <asp:Label ID="lblTelefonoMovil" runat="server" Text="Teléfono Móvil" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel runat="server" ID="pnlCompanyTel"></asp:Panel>                
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtTelExtension" MaxLength="100" CssClass="form_text"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regTelExtension" runat="server" CssClass="form_field_error_message" ErrorMessage="<br />Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTelExtension" ValidationExpression="^[\d]*$" ValidationGroup="grpUserNew"></asp:RegularExpressionValidator>
                </td>
                                <td>
                    <asp:Panel runat="server" ID="pnlCompanyMobile" ></asp:Panel>
                </td>
            </tr>
            <tr>

                <td>     
                <br />               
                    <asp:Label ID="lblNombreJefePersonalTitulo2" runat="server" Text="Nombre Jefe de Personal" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>

                <td>
                    <asp:TextBox runat="server" ID="txtPersonalManager" MaxLength="100" CssClass="form_text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Panel ID="pnlCaptcha" runat="server"></asp:Panel>
                </td>
            </tr>
            <tr>
                <td align=right colspan="3">
                <asp:Button ID="btnAnterior" CausesValidation="false" OnClientClick="javascript:history.go(-1);" runat="server" Text="Volver Atrás" />
                    <asp:Button ID="btnSave" runat="server" Text="Dar de Alta" ValidationGroup="grpUserNew" OnClientClick="return ValidatePage();"/>
                    <div id="divErrorValidation" class="form_field_error_message" style="display: none; color: Red">
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
