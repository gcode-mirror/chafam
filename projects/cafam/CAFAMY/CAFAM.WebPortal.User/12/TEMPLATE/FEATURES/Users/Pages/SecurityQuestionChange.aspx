<%@ Assembly Name="CAFAM.WebPortal.User, Version=1.0.0.0, Culture=neutral, PublicKeyToken=a01116ae02f25a36" %>
<%@ Page Language="C#" Inherits="CAFAM.WebPortal.User._SecurityQuestionChange" Title="Hello World Page" MasterPageFile="~masterurl/default.master"%>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server" ID="MainContent">
<link rel="Stylesheet" href="~/_layouts/StyleSheet.css" type="text/css" />
    <div>
        <table class="ms-formbody">
            <tr>
                <td class="ms-formdescription">
                    <asp:Label ID="lblContraseñaActual" runat="server" Text="Contraseña Actual" CssClass="form_label"></asp:Label><span class="form_label">&nbsp;(<font color="red">*</font>)</span>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="txtPwd" TextMode="Password" CssClass="form_password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqPWD" runat="server" CssClass="form_field_error_message" ErrorMessage="<br />Requerido" Display="Dynamic" ControlToValidate="txtPwd" ValidationGroup="grpSecurityQuestionChange"></asp:RequiredFieldValidator> 
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="ms-formdescription">
                    <asp:Label ID="Label1" runat="server" Text="Seleccione una nueva pregunta de seguridad" CssClass="form_label"></asp:Label><span class="form_label">&nbsp;(<font color="red">*</font>)</span>
                </td>
            </tr>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td>
                                <asp:DropDownList ID="ddlSecurityQuestion" runat="server" onChange="ShowHideOtherSecurityQuestion();"></asp:DropDownList>                           
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtOtherSecurityQuestion" runat="server" style="display:none" CssClass="form-text"></asp:TextBox>
                            </td>
                            <td>
                                 <asp:CustomValidator ID="cvalOtherSecurityQuestion" runat="server" CssClass="form_field_error_message" ErrorMessage="<br />Requerido" ValidationGroup="grpSecurityQuestionChange" Display="Dynamic" ClientValidationFunction="ValidateOtherSecurityQuestion" ControlToValidate="ddlSecurityQuestion" ValidateEmptyText="true"></asp:CustomValidator>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="ms-formdescription">
                    <asp:Label ID="lblNuevaRtaSeguridad" runat="server" Text="Nueva respuesta de seguridad" CssClass="form_label"></asp:Label><span class="form_label">&nbsp;(<font color="red">*</font>)</span>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="txtAnswer" CssClass="form_password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqSecurityAnswer" runat="server" CssClass="ms-descriptiontext" ErrorMessage="<br />Requerido" Display="Dynamic" ControlToValidate="txtAnswer" ValidationGroup="grpSecurityQuestionChange"></asp:RequiredFieldValidator> 
                </td>                    
            </tr>                
            <tr>
                <td colspan="10">
                    <asp:Label runat="server" ID="lblMessage"  CssClass="form_field_error_message"></asp:Label>
                </td>
            </tr>                
            <tr>
                <td colspan="10">
                    <%--<asp:ImageButton ID="ibtnSubmit" runat="server" AlternateText="Enviar" OnClick="ibtnSubmit_Click" ValidationGroup="grpSecurityQuestionChange" ></asp:ImageButton>--%>
                    <asp:Button ID="ibtnSubmit" runat="server" Text="Enviar" OnClick="ibtnSubmit_Click" ValidationGroup="grpSecurityQuestionChange" ></asp:Button>
                </td>
            </tr>                
        </table>        
    </div>
    <script type="text/javascript" language="javascript">
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
        </script>
</asp:Content>