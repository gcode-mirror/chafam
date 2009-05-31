<%@ Assembly Name="CAFAM.WebPortal.User, Version=1.0.0.0, Culture=neutral, PublicKeyToken=a01116ae02f25a36" %>
<%@ Page Language="C#" Inherits="CAFAM.WebPortal.User._DisplayForm" Title="Hello World Page" MasterPageFile="~masterurl/default.master"%>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server" ID="MainContent">
    <div>
        <asp:Label runat="server" ID="lblHelloWorld"></asp:Label>
        Display Form Page
        <asp:FormView runat="server" ID="MyForm"></asp:FormView>
    </div>
</asp:Content>