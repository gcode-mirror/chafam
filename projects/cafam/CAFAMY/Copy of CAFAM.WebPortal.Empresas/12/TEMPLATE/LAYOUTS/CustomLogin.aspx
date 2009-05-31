<%@ Assembly Name="CAFAM.WebPortal.User, Version=1.0.0.0, Culture=neutral, PublicKeyToken=a01116ae02f25a36" %>
<%@ Page Language="C#" Inherits="CAFAM.WebPortal.User._CustomLogin" Title="Hello World Page" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<div>
    <form runat="server">        
        <asp:Label runat="server" ID="lblHelloWorld"></asp:Label>
        <table>                
            <tr style="width:120px;">
                <td>Usuario</td>
                <td><asp:TextBox id="txtUSR" runat="server"></asp:TextBox></td>
            </tr>
            <tr style="width:120px;">
                <td>Contraseña</td>
                <td><asp:TextBox id="txtPWD" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr style="width:120px;">
                <td colspan="10" align="right">
                    <asp:ImageButton id="ibtnSignIn" runat="server" AlternateText="Ingresar" OnClick="ibtnSignIn_Click" ></asp:ImageButton>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="http://www.google.com">Para registrarse haga click aquí</a>
                </td>
                <td align="right">
                    <a href="http://www.google.com">Restablecer contraseña</a>
                </td>
            </tr>
            <tr>
                <td colspan="10">
                    <asp:Label runat="server" id="lblMessage"></asp:Label>
                </td>                
            </tr>
        </table>
    </form>
</div>