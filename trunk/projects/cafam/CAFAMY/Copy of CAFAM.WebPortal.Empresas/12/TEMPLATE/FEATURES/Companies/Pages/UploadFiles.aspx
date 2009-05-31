<%@ Assembly Name="Cafam.WebPortal.Empresas, Version=1.0.0.0, Culture=neutral, PublicKeyToken=2d81fae04977eb1a" %>
<%@ Page Language="C#" Inherits="Cafam.WebPortal.Empresas.UploadFiles" Title="Upload archivos" MasterPageFile="~masterurl/default.master"%>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server" ID="MainContent">
    
<Table align="center" width="600">
    <tr>
	  <td>
		<div style="font-size:medium; font-weight:bold" class="ms-formdescription">Envio de archivos de retiro <asp:ImageButton ID="imgAbrir" ImageUrl="flecha_abajo.gif" runat="server" /></div>
		
	  </td>
    </tr>
    <tr>
	  <td>

		<asp:GridView ID="grdTemplates" Runat="server" 
		    DataSourceID="employeeDataSource" AutoGenerateColumns="False"
		    BorderWidth="1px" BackColor="White" GridLines="Vertical" 
		    CellPadding="4" BorderStyle="None"
		    BorderColor="#DEDFDE" ForeColor="Black">
		    <FooterStyle BackColor="#CCCC99"></FooterStyle>
		    <PagerStyle ForeColor="Black" HorizontalAlign="Right" BackColor="#F7F7DE"></PagerStyle>
		    <HeaderStyle ForeColor="White" Font-Bold="True" BackColor="#6B696B"></HeaderStyle>
		    <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
		    <Columns>
			  <asp:BoundField HeaderText="Last" DataField="Title"></asp:BoundField>
			  <asp:BoundField HeaderText="Last" DataField="Name"></asp:BoundField>
		    </Columns>
		    <SelectedRowStyle ForeColor="White" Font-Bold="True" BackColor="#CE5D5A"></SelectedRowStyle>
    		    <RowStyle BackColor="#F7F7DE"></RowStyle>
		</asp:GridView>
	  </td>	
    </tr>
</Table>
<table align="center" width="600">
    <tr>
	  <td>
		<br /><br />	  		
		<div style="font-size:medium; font-weight:bold" class="ms-formdescription">Selecione un archivo para realizar el upload:</div>	
   		<asp:FileUpload ID="fileUpArchivo" runat="server" />
		<br /><br />
	  </td>
    </tr>		    
    <tr>
	  <td>
		<asp:Button id="btnUploadArchivo" Text="Subir" runat="server"></asp:Button> 
   		<br /><br />
	  </td>
    </tr>
    <tr>
	  <td>
		<asp:Label id="UploadStatusLabel" runat="server"></asp:Label>
		<br /><br />
	  </td>
    </tr>
</table>	
</asp:Content>
