<%@ Assembly Name="CAFAM.WebPortal.Forms, Version=1.0.0.0, Culture=neutral, PublicKeyToken=ae88e728e51b79b3" %>
<%@ Page Language="C#" Inherits="CAFAM.WebPortal.Forms.SuspensionTrabajadores" Title="Formulario" MasterPageFile="~masterurl/default.master"%>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Assembly="AjaxControlToolkit, Version=1.0.10301.0, Culture=Neutral, PublicKeyToken=28f01b0e84b6d53e"
    Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server" ID="MainContent">
<link rel="Stylesheet" href="~/_layouts/StyleSheet.css" type="text/css" />
<script type='text/javascript'>
    _spOriginalFormAction = document.forms[0].action;
    _spSuppressFormOnSubmitWrapper = true;
</script>
    <asp:ScriptManager ID="scriptMng" runat="server">
    </asp:ScriptManager>
    <table class="ms-formbody" style="width:700px" id="tblMain" runat="server">
        <!--se autocompleta-->
        <tr>
            <td align="center" class="form_section_header">
                <asp:Label runat="server" ID="TituloPrincipal" Text="Suspensión de trabajadores" />
            </td>
        </tr>
        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblNitTitulo" Text="Nit" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblSubNitTitulo" Text="Sub Nit" CssClass="form_label"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox runat="server" ID="txtNit" CssClass="form_text" MaxLength="13" Enabled="false" />
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtSubNit" Width="50px" CssClass="form_text" MaxLength="2" Enabled="false"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="rqvNit" runat="server" CssClass="form_field_error_message"
                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNit" ValidationGroup="grpValidation1"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revNit" runat="server" CssClass="form_field_error_message"
                                ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNit"
                                ValidationExpression="^[\d]*$" ValidationGroup="grpValidation1"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="revSubNit" runat="server" CssClass="form_field_error_message"
                                ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSubNit"
                                ValidationExpression="^[\d]*$" ValidationGroup="grpValidation1"></asp:RegularExpressionValidator>
                        </td>                        
                    </tr>
                </table>
            </td>
        </tr>
        <!--se autocompleta (en el sistema de subsidios tiene longitud 60)-->
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNombreORazonSocialTitulo" Text="Nombre o Razón Social" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNombreORazonSocial" Width="400px" CssClass="form_text" MaxLength="34" Enabled="false" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rqvNombreORazonSocial" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNombreORazonSocial" ValidationGroup="grpValidation1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" class="form_section_header">
                <asp:Label runat="server" ID="lblCargaTrabajadoresTitulo" Text="Carga de trabajadores" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:UpdatePanel ID="updentidades" runat="server">
                    <ContentTemplate>
                        <asp:GridView AllowPaging="true" PageSize="14" ID="gvTrabajadores" runat="server"
                            AutoGenerateColumns="False" CssClass="gird-view" CellPadding="0" CellSpacing="0"
                            GridLines="None" Visible="true" AutoGenerateDeleteButton="true">
                            <PagerStyle CssClass="pager" />
                            <HeaderStyle CssClass="gird-header" />
                            <RowStyle CssClass="row" />
                            <AlternatingRowStyle CssClass="alternating-row" />
                            <EditRowStyle BorderWidth="0" />
                            <EmptyDataRowStyle BorderWidth="0" />
                            <SelectedRowStyle BorderWidth="0" />
                            <Columns>
                                <asp:BoundField HeaderText="Tipo de Documento" DataField="TipoId" ShowHeader="true" ReadOnly="true" />
                                <asp:BoundField HeaderText="Número de Documento" DataField="NumeroId" ShowHeader="true" ReadOnly="true" />
                                <asp:BoundField HeaderText="Primer Apellido" DataField="PrimerApellido" ShowHeader="true" ReadOnly="true" />
                                <asp:BoundField HeaderText="Segundo Apellido" DataField="SegundoApellido" ShowHeader="true" ReadOnly="true" />
                                <asp:BoundField HeaderText="Primer Nombre" DataField="PrimerNombre" ShowHeader="true" ReadOnly="true" />
                                <asp:BoundField HeaderText="Segundo Nombre" DataField="SegundoNombre" ShowHeader="true" ReadOnly="true" />
                                <asp:BoundField HeaderText="Inicio Suspensión" DataField="InicioSuspension" ShowHeader="true" ReadOnly="true" />
                                <asp:BoundField HeaderText="Fin Suspensión" DataField="FinSuspension" ShowHeader="true" ReadOnly="true" />
                            </Columns>
                        </asp:GridView>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnCargar" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>        
            <td>
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td colspan="10">
                            <asp:Label runat="server" ID="lblIdentificacionTitulo" Text="Identificación" CssClass="form_label"/><span class="form_label"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblTipoDeIdentificacionTitulo" Text="Tipo" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                        </td>
                        <td>
                            <%--<asp:TextBox runat="server" ID="txtTipoDeIdentificacion" CssClass="form_text" MaxLength="1"/>--%>
                            <asp:RadioButtonList ID="rdTipoDeIdentificacion" runat="server" repeatdirection="Horizontal" CssClass="form_radios" />
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblNumeroDeIdentificacionTitulo" Text="Numero De Identificación" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtNumeroDeIdentificacion" CssClass="form_text" MaxLength="11"/>
                        </td>                        
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                            <%--<asp:RequiredFieldValidator ID="rqvTipoDeIdentificacion" runat="server" CssClass="form_field_error_message"
                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTipoDeIdentificacion" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>--%>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rqvNumeroDeIdentificacion" runat="server" CssClass="form_field_error_message"
                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                            <%--<asp:RegularExpressionValidator ID="revTipoDeIdentificacion" runat="server" CssClass="form_field_error_message"
                                ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTipoDeIdentificacion"
                                ValidationExpression="^[\d]*$" ValidationGroup="grpValidation2"></asp:RegularExpressionValidator>--%>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="revNumeroDeIdentificacion" runat="server" CssClass="form_field_error_message"
                                ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion"
                                ValidationExpression="^[\d]*$" ValidationGroup="grpValidation2"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblApellidoTitulo" Text="Apellidos" CssClass="form_label"/><span class="form_label"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblPrimerApellidoTitulo" Text="Primero" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtPrimerApellido" CssClass="form_text" MaxLength="20"/>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblSegundoApellidoTitulo" Text="Segundo" CssClass="form_label"/><span class="form_label">&nbsp;
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtSegundoApellido" CssClass="form_text" MaxLength="20"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rqvPrimerApellido" runat="server" CssClass="form_field_error_message"
                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerApellido" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
                        </td>
                    </tr>                    
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblNombreTitulo" Text="Nombres" CssClass="form_label"/><span class="form_label"></span>
                        </td>
                    </tr>                
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblPrimerNombreTitulo" Text="Primero" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtPrimerNombre" CssClass="form_text" MaxLength="20"/>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblSegundoNombreTitulo" Text="Segundo" CssClass="form_label"/>&nbsp;
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtSegundoNombre" CssClass="form_text" MaxLength="20"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rqvPrimerNombre" runat="server" CssClass="form_field_error_message"
                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerNombre" ValidationGroup="grpValidation2"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>                
            </td>
        </tr>
        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblFechaDeLaSuspensionInicialTitulo" Text="Inicio (dd/mm/aaaa)" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label runat="server" ID="lblFechaDeLaSuspensionFinalTitulo" Text="Fin (dd/mm/aaaa)" CssClass="form_label"/><span class="form_label">&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           <asp:Panel ID="pnldtFechaDeLaSuspensionInicial" runat="server"/>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                           <asp:Panel ID="pnldtFechaDeLaSuspensionFinal" runat="server"/>
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
                <asp:Label runat="server" ID="lblMessage" Text="" CssClass="form_field_error_message"/>
            </td>                    
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <table class="ms-formbody" style="width:100%" id="Table1" runat="server">
                    <tr>
                        <td>
                            <asp:Button ID="btnCargar" CssClass="form_button_submit" runat="server" Text="Agregar Trabajador"
                                OnClick="btnCargar_Click" ValidationGroup="grpValidation2" />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:Button ID="bntGuardarEImprimir" CssClass="form_button_submit" runat="server" Text="Guardar e Imprimir"
                                OnClick="bntGuardarEImprimir_Click" ValidationGroup="grpValidation1" />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>