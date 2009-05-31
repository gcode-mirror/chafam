<%@ Assembly Name="CAFAM.WebPortal.User, Version=1.0.0.0, Culture=neutral, PublicKeyToken=a01116ae02f25a36" %>
<%@ Page Language="C#" Inherits="CAFAM.WebPortal.User.UserBeforeNew" Title="Validación de Datos de para Alta de Usuario" MasterPageFile="~masterurl/default.master"%>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Assembly="AjaxControlToolkit, Version=1.0.10301.0, Culture=Neutral, PublicKeyToken=28f01b0e84b6d53e"
    Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server" ID="MainContent">
    <link rel="Stylesheet" href="~/_layouts/StyleSheet.css" type="text/css" />
    <script type='text/javascript'>
        _spOriginalFormAction = document.forms[0].action;
        _spSuppressFormOnSubmitWrapper = true;
    </script>

    <asp:ScriptManager ID=scrpMng runat=server />
    <asp:Label ID="lblError" runat="server" Visible="false" CssClass="form_field_error_message" ForeColor="Red"></asp:Label><asp:HyperLink runat="server" ID="lnkCommon" CssClass="ms-descriptiontext" Visible="false"></asp:HyperLink>
    
    <table class="ms-formbody" style="width:100%" id="tblContact" runat="server" visible="false" >
        <tr>
            <td>
                <asp:TextBox CssClass="form_text" ID="txtContact" runat="server" MaxLength="400" TextMode="MultiLine" Width="100%" Rows="4" Height="200"></asp:TextBox>    
                <asp:RequiredFieldValidator Display="Dynamic" ID="reqContact" runat="server" ErrorMessage="El Campo es Requerido" CssClass="form_field_error_message" ValidationGroup="grpContact" ControlToValidate="txtContact"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="btnSend" runat="server" Text="Enviar Mensaje" ValidationGroup="grpContact"/>
            </td>
        </tr>
    </table>
    <table style="width:100%" id="tblIdentification" runat="server"  class="form_table">
                                <tr>
                                <td class="title-form">
                                <center>
                                    <asp:Label ID=lblSectionHeader runat=server CssClass="title-form" Text="Validación de Datos para Alta de Usuario"></asp:Label>
                                    </center>
                                    </td>
                                </tr>
                                <tr>
                                <td colspan=4>
                                <table style="width:100%">
                                
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
                                           <asp:RadioButtonList ID="rdIdentificationType" runat="server" repeatdirection="Horizontal" CssClass="form_radios">
                                        </asp:RadioButtonList>                                 
                                    </td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="lblNumber" runat="server" Text="Número" CssClass="form_label"></asp:Label>(<font
                                            color="red">*</font>)
                                        <asp:TextBox ID="txtIdentificationNumber" CssClass=form_text runat="server" MaxLength="14"></asp:TextBox><br />
                                    <asp:RegularExpressionValidator ID="regExpIdentificationNumber" runat="server" CssClass="form_field_error_message" ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtIdentificationNumber" ValidationExpression="^[\d]*$" ValidationGroup="grpUserBeforeNew"></asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="reqIdentificationNumber" runat="server" CssClass="form_field_error_message"
                                         ErrorMessage="El Campo es Requerido" Display="Dynamic" ControlToValidate="txtIdentificationNumber" ValidationGroup="grpUserBeforeNew"></asp:RequiredFieldValidator> 
                                    </td>
                                </tr>
                                </table>
                                </td>
                                </tr>
                                
        
        <tr>
            <td>
            </td>
            <td>

            </td>
        </tr>
<tr><td><br /></td></tr>
<tr><td><br /></td></tr>
<tr><td><br /></td></tr>
<tr><td><br /></td></tr>
<tr><td><br /></td></tr>
<tr><td><br /></td></tr>

        <tr>

            <td colspan=2 align=right>
                <asp:Button CssClass="btn" ID="btnVerify" runat="server" ValidationGroup="grpUserBeforeNew" Text="Verificar" runat="server" />
            </td>
            <td></td>
        </tr>
    </table>
    <table class="ms-formbody" style="width:100%" id="tblQuestions" runat="server" visible="false">
        <tr>
            <td colspan="2">
                <asp:Label CssClass=form_label ID=lblQuestion runat=server Text="Por favor conteste las preguntas:"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblQuestion1" runat="server" CssClass="form_label"></asp:Label>
            </td>
            </tr>
            <tr>
            <td>
                <asp:Panel ID="pnlAnswer1" runat="server"></asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
            <br />
                <asp:Label ID="lblQuestion2" runat="server" CssClass="form_label"></asp:Label>
            </td>
            </tr><tr>
            <td>
                <asp:Panel ID="pnlAnswer2" runat="server"></asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
            <br />
                <asp:Label ID="lblQuestion3" runat="server" CssClass="form_label"></asp:Label>
            </td>
            </tr>
            <tr>
            <td>
                <asp:Panel ID="pnlAnswer3" runat="server"></asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
            <br />
                <asp:Label ID="lblQuestion4" runat="server" CssClass="form_label"></asp:Label>
            </td>
            </tr>
            <tr>
            <td>
                 <asp:Panel ID="pnlAnswer4" runat="server"></asp:Panel>
            </td>
        </tr>
        <tr r id="trQuestion5" runat="server" visible="true">
        
            <td>
            <br />
                <asp:Label ID="lblQuestion5" runat="server" CssClass="form_label"></asp:Label>
            </td>
            </tr>
            <tr>
            <td>
                <asp:Panel ID="pnlAnswer5" runat="server"></asp:Panel>
            </td>
        </tr>
        <tr id="trQuestion6" runat="server" visible="false">
            <td>
            <br />
                <asp:Label ID="lblQuestion6" runat="server" CssClass="form_label"></asp:Label>
            </td>
            </tr>
            <tr>
            <td>
                <asp:Panel ID="pnlAnswer6" runat="server"></asp:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="2" align=right>
                <asp:Button ID="btnVerifyQuestions" runat="server" ValidationGroup="grpUserBeforeNewQuestions" Text="Verificar" />
            </td>
        </tr>
    </table>
</asp:Content>
