<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Inicio.aspx.cs" Inherits="Inicio" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
        <table class="form_table" style="width: 750px" id="tblFormaDePago" runat="server">  
                <tr>
                    <td colspan="3" scope="row" class="title-form">
                            <asp:Label ID="lblDatosGenerales" runat="server" Text="Esto es una prueba" CssClass="title-form"></asp:Label>
                    </td>
                </tr>
        </table>
    </div>
</asp:Content>