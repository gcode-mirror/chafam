<%@ Assembly Name="CAFAM.WebPortal.UserLogin, Version=1.0.0.0, Culture=neutral, PublicKeyToken=ae24bbc799bd704f" %>
<%@ Assembly Name="Microsoft.SharePoint.ApplicationPages, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%> 
<%@ Page Language="C#" Inherits="CAFAM.WebPortal.UserLogin.LoginCafamPage" MasterPageFile="~/_layouts/simple.master"      %> 
<%@ Import Namespace="Microsoft.SharePoint.ApplicationPages" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
    <SharePoint:EncodedLiteral runat="server" text="Ingresar" EncodeMethod='HtmlEncode'/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleBreadcrumb" runat="server">
&nbsp;
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
    <SharePoint:EncodedLiteral runat="server" text="Ingresar" EncodeMethod='HtmlEncode'/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderSiteName" runat="server"/>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
 <asp:login id="login" FailureText="<%$Resources:wss,login_pageFailureText%>" runat=server width="100%" >
 
    <layouttemplate>
        <asp:label id=FailureText class="ms-error" runat=server/>
        <table class="ms-input">
          <COLGROUP>
          <COL width=25%>
          <COL WIDTH=75%>
        <tr>
            <td noWrap><SharePoint:EncodedLiteral runat="server" text="Nombre de Usuario" EncodeMethod='HtmlEncode'/></td>
            <td><asp:textbox id="UserName" autocomplete="on" runat="server" class="ms-long" Width="200px"/></td>
        </tr>
        <tr>
            <td noWrap><SharePoint:EncodedLiteral runat="server" text="Contrase&ntilde;a" EncodeMethod='HtmlEncode'/></td>
            <td><asp:textbox id="password" TextMode="Password" autocomplete="on" runat="server" class="ms-long" Width="200px"/>
            </td>
        </tr>
        <tr>
            <td colSpan=2 align="left"><asp:button id="login" commandname="Login" text="Ingresar" runat="server" /></td>
        </tr>
        <tr>
            <td colSpan=2>
                <asp:CheckBox id="RememberMe" Visible="false" text="Recordarme runat="server" />
                <asp:CheckBox id="Remember" text="Recordar mis datos" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="left">
            <br />
                Para registrarse haga click <a href="/CafamPages/userBeforeNew.aspx">aqui</a>.
            </td>
        </tr>
        <tr>
            <td align="left">
                <a href="/_layouts/RestorePassword.aspx">Restablecer contrase&ntilde;a</a>
            </td>
        </tr>
        </table>
    </layouttemplate>
 </asp:login>
</asp:Content>
