<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/rptAfiliacionEmpresa.aspx.cs"
 Inherits="CAFAM.WebPortal.Forms.rptAfiliacinEmpresa" MasterPageFile="~/MasterPage.master" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>


<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server" ID="MainContent">
    <rsweb:ReportViewer ID="rptVisualizadorReport" runat="server" Font-Names="Verdana" 
            Font-Size="8pt" Height="400px" Width="800px" ShowPageNavigationControls=false ShowBackButton=false
             ShowDocumentMapButton=false ShowExportControls="false" 
             ShowFindControls="false" ShowPrintButton=true ShowRefreshButton=false
              ShowZoomControl=false>
        <LocalReport ReportPath="../CAFAM.WebPortal.Forms/Reports/rptAfiliacionEmpresas.rdlc">
        </LocalReport>
    </rsweb:ReportViewer>
    
    </asp:Content>
    


