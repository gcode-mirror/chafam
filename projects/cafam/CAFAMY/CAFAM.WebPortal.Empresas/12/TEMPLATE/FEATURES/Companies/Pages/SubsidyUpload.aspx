<%@ Assembly Name="Cafam.WebPortal.Empresas, Version=1.0.0.0, Culture=neutral, PublicKeyToken=2d81fae04977eb1a" %>
<%@ Page Language="C#" Inherits="Cafam.WebPortal.Empresas.SubsidyUpload" Title="Carga de Subsidios" MasterPageFile="~masterurl/default.master"%>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="PlaceHolderMain" runat="server" >
<link rel="Stylesheet" href="~/_layouts/StyleSheet.css" type="text/css" />
<table class="form_table" width="100%" border="0" cellpadding="12" cellspacing="0">
    <tr>
        <td width="250px" valign="top" align="left">
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td align="left">
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td valign="top" align="left">
                                    <asp:Label CssClass="form_label" ID="lblSeleccioneTipoArchivoTitulo" runat="server" Text="Seleccione el tipo de archivo a cargar"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RadioButtonList ID="rblAction" runat="server" AutoPostBack="true" CssClass="form_radios">
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
        <td>
            &nbsp;
        </td>
        <td valign="top" align="left">
            <table style="width:100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td valign="top" align="left">
                        <asp:Label CssClass="form_label" ID="lblModelosEInstructivosTitulo" runat="server" Text="Modelos e instructivos"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="pnlHelpList" runat="server">
                        </asp:Panel>
                    </td>
                </tr>
            </table>            
        </td>
    </tr>
    <tr>
        <td colspan="10" align="left">
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td valign="top" align="left" colspan="5">
                        <asp:Label CssClass="form_label" ID="lblCargaArchivoTitulo" runat="server" Text="Carga de archivos"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:FileUpload ID="flUpload" runat="server" CssClass="form_text" />
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td align="left">
                        <asp:Button runat="server" ID="btnCargar" CssClass="buttons" Text="Cargar" ValidationGroup="Group1"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RegularExpressionValidator Display="Dynamic" id="FileUpLoadValidator" runat="server" ErrorMessage="Solo puede cargar archivos de Excel" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))(.xls|.XLS|.xlsx|.XLSX)$" ControlToValidate="flUpload" CssClass="form_field_error_message"> </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator Display="Dynamic" id="RegularExpressionValidator1" runat="server" ErrorMessage="Debe especificar un archivo" ControlToValidate="flUpload" CssClass="form_field_error_message"> </asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td colspan="10">
            <asp:Label CssClass="form_field_error_message" ID="lblErrorMessage" runat="server" Text=""></asp:Label>            
        </td>
    </tr>
    <script type="text/javascipt">   
    function StartDownload(url)
    {   
        alert ('Antes de cristo');
        window.open(url,'Descargar');
        alert ('Despues de cristo');
    }   
    </script> 

</asp:Content>