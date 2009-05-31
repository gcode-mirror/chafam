<%@ Assembly Name="Cafam.WebPortal.Empresas, Version=1.0.0.0, Culture=neutral, PublicKeyToken=2d81fae04977eb1a" %>
<%@ Page Language="C#" Inherits="Cafam.WebPortal.Empresas.HelloWorld" Title="Hello World Page" MasterPageFile="~masterurl/default.master"%>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="PlaceHolderMain" runat="server" >
Hello Fucking World
<asp:Label ID="lblHelloWorld" runat="server"></asp:Label>
<%--<script type='text/javascript'>
    _spOriginalFormAction = document.forms[0].action;
    _spSuppressFormOnSubmitWrapper = true;
</script>

<asp:ScriptManager runat="Server" EnableScriptGlobalization="true" EnableScriptLocalization="true" ID="ScriptManager1" />

    <div class="demoarea">
        <div class="demoheading">
            Calendar Demonstration   ---- HOLA  MUNDO</div>
        <br />
        <b>Default calendar: </b>
        <br />
        <asp:TextBox runat="server" ID="Date1" autocomplete="off" /><br />
        <ajaxToolkit:CalendarExtender ID="defaultCalendarExtender" runat="server" TargetControlID="Date1" />
        <div style="font-size: 90%">
            <em>(Set the focus to the textbox to show the calendar)</em></div>
        <br />
    </div>

    <Table align="center" width="600">
	  <tr>
		<td>
		    <div style="font-size:medium; font-weight:bold" class="ms-formdescription">Envio de archivos de retiro</div> 
		</td>
	  </tr>
    </Table>

    <div>
        <asp:Label runat="server" ID="lblHelloWorld"></asp:Label>
	  <br>
	  <asp:DropDownList ID="ddlTiposUsr" runat="server"></asp:DropDownList>
	  <br>  
	  <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" />
  
    </div>--%>
</asp:Content>
