<%@ Assembly Name="CAFAM.WebPortal.User, Version=1.0.0.0, Culture=neutral, PublicKeyToken=a01116ae02f25a36" %>
<%@ Page Language="C#" Inherits="CAFAM.WebPortal.User._PasswordChange" Title="Hello World Page" MasterPageFile="~masterurl/default.master"%>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server" ID="MainContent">
<link rel="Stylesheet" href="~/_layouts/StyleSheet.css" type="text/css" />
    <div>
        <asp:Label runat="server" ID="lblHelloWorld"></asp:Label>
        <table class="ms-formbody" width="100%">
<%--            <tr>
                <td colspan="10">
                    Cambio de Contraseña
                </td>
            </tr>--%>
            <tr>
                <td class="ms-formdescription">                                        
                    <asp:Label ID="lblContrasenaActual" runat="server" Text="Contraseña Actual" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="txtPwd" TextMode="Password" CssClass="form_password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="ms-formdescription">                    
                    <asp:Label ID="lblNuevaContrasena" runat="server" Text="Nueva Contraseña" CssClass="form_label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="txtPwdNew1" TextMode="Password" CssClass="form_password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="ms-formdescription">
                    <asp:Label ID="lblConfirmacionContrasena" runat="server" Text="Confirmación de la Nueva Contraseña" CssClass="form_label"></asp:Label>                    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="txtPwdNew2" TextMode="Password" CssClass="form_password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="10">
                    <asp:Label runat="server" ID="lblMessage" CssClass="form_field_error_message"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="10">
                    <%--<asp:ImageButton ID="ibtnSubmit" runat="server" AlternateText="Enviar" OnClick="ibtnSubmit_Click" ></asp:ImageButton>--%>
                    <asp:Button ID="ibtnSubmit" runat="server" Text="Enviar" OnClick="ibtnSubmit_Click" ></asp:Button>
                </td>
            </tr>   
        </table>        
    </div>
</asp:Content>