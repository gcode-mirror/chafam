<%@ Assembly Name="CAFAM.WebPortal.User, Version=1.0.0.0, Culture=neutral, PublicKeyToken=a01116ae02f25a36" %>
<%@ Page Language="C#" Inherits="CAFAM.WebPortal.User._RestorePassword" Title="Hello World Page" MasterPageFile="~/_layouts/simple.master"%> 
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server" ID="MainContent">
<link rel="Stylesheet" href="StyleSheet.css" type="text/css" />
<div>
<%--    <asp:Label runat="server" ID="lblHelloWorld"></asp:Label>
--%>    <table class="ms-formbody" width="100%">
        <tr style="width:320px;">
            <td>
                <asp:Label ID="lblCorreoElectronicoRegistrado" runat="server" Text="Correo electronico registrado" CssClass="form_label"></asp:Label><span class="form_label">&nbsp;(<font color="red">*</font>)</span>
            </td>
        </tr>
        <tr>
            <td width="200px">
                <asp:TextBox id="txtEMail" runat="server" CssClass="form-text"></asp:TextBox></td>
            <%--<td><asp:ImageButton id="ibtnCheckEMail" runat="server" AlternateText="Confirmar Correo" OnClick="ibtnCheckEMail_Click" ></asp:ImageButton></td>--%>
            </tr>
            <tr><td><br /><br /><br /></td></tr>
            <tr>
            <td align="right">
                <asp:Button id="ibtnCheckEMail" runat="server" OnClick="ibtnCheckEMail_Click" Text="Enviar"></asp:Button>
            </td>
        </tr>
        <tr>
            <td colspan="10">
                <asp:panel runat="server" id="pnlSecretQuestion" visible="false">                
                    <table>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" ID="lblSecretQuestion" CssClass="form_label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox id="txtAnswer" runat="server" CssClass="form-text"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="10" align="right">
                                <%--<asp:ImageButton id="ibtnRestorePwd" runat="server" AlternateText="Restaurar Contraseña" OnClick="ibtnRestorePwd_Click" ></asp:ImageButton>--%>
                                <asp:Button id="ibtnRestorePwd" runat="server" OnClick="ibtnRestorePwd_Click" Text="Restablecer Contraseña"></asp:Button>
                            </td>
                        </tr>
                    </table>
                </asp:panel>
            </td>
        </tr>
        <tr>
            <td colspan="10">
                <asp:Label runat="server" id="lblMessage" CssClass="form_field_error_message"></asp:Label>
            </td>                
        </tr>
        <tr>
            <td colspan="10">                    
                <asp:Button id="ibtnGoHome" runat="server" OnClick="ibtnGoHome_Click" Visible="false" Text="Volver"></asp:Button>
            </td>
        </tr>
        <tr> 
            <td>
                &nbsp;
            </td>           
        </tr>
        <tr>            
            <td class="form_label">
                Para poder restablecer su contraseña, debe escribir primero su correo electrónico y contestar correctamente a la pregunta secreta que definió al momento de registrarse. Posteriormente le llegará un correo electrónico, con su nueva contraseña. Una vez haya ingresado al Portal Cafam con la nueva contraseña, le recomendamos cambiarla; recuerde que su contraseña es personal e intransferible
            </td>
        </tr>
    </table>
</div>
</asp:Content>