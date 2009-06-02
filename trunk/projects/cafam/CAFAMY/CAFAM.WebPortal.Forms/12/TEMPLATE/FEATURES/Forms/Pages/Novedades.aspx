<%--<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Novedades.aspx.cs" Inherits="Novedades" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
--%>
<%@ Assembly Name="CAFAM.WebPortal.Forms, Version=1.0.0.0, Culture=neutral, PublicKeyToken=ae88e728e51b79b3" %>
<%@ Page Language="C#" Inherits="CAFAM.WebPortal.Forms.Novedades" Title="Formulario" MasterPageFile="~masterurl/default.master" EnableSessionState="True" %>
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
<asp:ScriptManager ID="scriptMng" runat="server"></asp:ScriptManager>
<table class="ms-formbody" style="width:100%" id="tblMain" runat="server">
    <tr>
        <td>
            <asp:Wizard runat="server" ID="wzNovedadesTrabajador"  Font-Names="verdana" CssClass="content-more" ForeColor="navy" Style="border: outset 1px black" OnNextButtonClick="OnNext" OnActiveStepChanged="OnActiveStepChanged" OnFinishButtonClick="OnFinish" ActiveStepIndex="0" DisplaySideBar="false"  >
                <WizardSteps>
                 
                
                    <asp:WizardStep ID="wzDatosDeLaEmpresaStep" runat="server" StepType="auto" Title="">
                         <table class="ms-formbody" style="width: 700px" runat="server" border="0">  
                            <tr>
                                <td class="form_section_header" colspan="3">
                                    <asp:Label ID="lblDatosGenerales" runat="server" Text="Datos de la empresa" class="form_section_header"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblNitTitulo" Text="Nit" CssClass="form_label@/><span class="form_label"> &nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                                 <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                 <td>
                                    <asp:Label runat="server" ID="lblSubNitTitulo" Text="Sub Nit" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox  runat="server" ID="txtNit" CssClass="form_text" MaxLength="13"/>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <asp:TextBox runat="server" ID="txtSubNit" Width="50" CssClass="form_text" MaxLength="2"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvNit" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNit"  ></asp:RequiredFieldValidator>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                 <td>
                                    <asp:RequiredFieldValidator ID="rqvSubNit" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSubNit"  ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revNit" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtNit"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <asp:RegularExpressionValidator ID="revSubNit" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtSubNit"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                           
                            <tr>
                                <td colspan="3">
                                    <asp:Label runat="server" ID="lblNombreORazonSocialTitulo" Text="Nombre O Raz&oacute;n Social" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:TextBox runat="server" Width="400px" ID="txtNombreORazonSocial" CssClass="form_text" MaxLength="34"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:RequiredFieldValidator ID="rqvNombreORazonSocial" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNombreORazonSocial"  ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </TABLE>
                    </asp:WizardStep>
                    
                    
                    <asp:WizardStep ID="wzDatosDelTrabajadorStep" runat="server" StepType="auto" Title="">
                        <table id="Table1" style="width: 750px" runat="server">  
                            <tr>
                                <td class="form_section_header">
                                        <asp:Label ID="lblTituloSeccionDatpoTrabajador" runat="server" Text="Datos del trabajador " class="form_section_header"></asp:Label>
                                </td>
                            </tr>
                            
                               <tr>        
                                <td>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td colspan="10">
                                                <asp:Label runat="server" ID="lblTipoDeIdentificacionT" Text="Identificación" CssClass="form_label"/><span class="form_label"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" ID="lblTipoDeIdentificacionTitulo" Text="Tipo" CssClass="form_label"/><span class="form_label">&nbsp;&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                                            </td>
                                            <td>
                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" repeatdirection="Horizontal" CssClass="form_radios" />
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <asp:Label runat="server" ID="lblNumeroDeIdentificacionTitulo" Text="Numero De Identificación" CssClass="form_label"/><span class="form_label">&nbsp;&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
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
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="rqvTipoDeIdentificacion" runat="server" CssClass="form_field_error_message"
                                                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="rdTipoDeIdentificacion"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
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
                                                    ValidationExpression="^[\d]*$"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                                    
                            
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblSucursalTitulo" Text="Sucursal" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtSucursal" CssClass="form_text" MaxLength="5"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvSucursal" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSucursal"  ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revSucursal" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtSucursal"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            
                               <tr>
                                <td>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" ID="lblPrimerApellidoTitulo0" Text="Apellidos" CssClass="form_label"/><span class="form_label"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" ID="lblPrimerApellidoTitulo" Text="Primero" CssClass="form_label"/><span class="form_label">&nbsp;&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
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
                                                <asp:RequiredFieldValidator ID="rqvPrimerApellido0" runat="server" CssClass="form_field_error_message"
                                                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerApellido"></asp:RequiredFieldValidator>
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
                                                <asp:Label runat="server" ID="lblPrimerNombreTitulo0" Text="Nombres" CssClass="form_label"/><span class="form_label"></span>
                                            </td>
                                        </tr>                
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" ID="lblPrimerNombreTitulo" Text="Primero" CssClass="form_label"/><span class="form_label">&nbsp;&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
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
                                                <asp:RequiredFieldValidator ID="rqvPrimerNombre0" runat="server" CssClass="form_field_error_message"
                                                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerNombre"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                    </table>                
                                </td>
                            </tr>
                            <!--es un check, soltero, casado, viudo, separado, uni&oacute;n libre-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblEstadoCivilTitulo" Text="Estado Civil" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtEstadoCivil" CssClass="form_text" MaxLength="1"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvEstadoCivil" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtEstadoCivil"  ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revEstadoCivil" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtEstadoCivil"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <!--AAAAMMDD-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblFechaDeNacimientoTitulo" Text="Fecha De Nacimiento (dd/mm/aaaa)" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:Panel ID="pnldtFechaDeNacimiento" runat="server"/>
                                </td>
                            </tr>
                          
                            <!--es un check, masculino, femenino-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblSexoTitulo" Text="Sexo" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtSexo" CssClass="form_text" MaxLength="1"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvSexo" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSexo"  ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revSexo" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtSexo"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <!--AAAAMMDD-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblFechaDeIngresoALaEmpresaTitulo" Text="Fecha De Ingreso A La Empresa (dd/mm/aaaa)" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:Panel ID="pnldtFechaDeIngresoALaEmpresa" runat="server"/>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblCargoTitulo" Text="Cargo" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtCargo" CssClass="form_text" MaxLength="11"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvCargo" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCargo"  ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblHorasMesTitulo" Text="Horas Mes" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtHorasMes" CssClass="form_text" MaxLength="3"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvHorasMes" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtHorasMes"  ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revHorasMes" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtHorasMes"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblSueldoBasicoTitulo" Text="Sueldo B&aacute;sico" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtSueldoBasico" CssClass="form_text" MaxLength="9"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvSueldoBasico" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSueldoBasico"  ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revSueldoBasico" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtSueldoBasico"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblComisionEnVentasTitulo" Text="Comisi&oacute;n En Ventas" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtComisionEnVentas" CssClass="form_text" MaxLength="9"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvComisionEnVentas" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtComisionEnVentas"  ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revComisionEnVentas" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtComisionEnVentas"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblCiudadTitulo" Text="Ciudad" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtCiudad" CssClass="form_text" MaxLength="11"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvCiudad" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCiudad"  ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <!--Formato de direcciones-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblDomicilioTitulo" Text="Domicilio" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtDomicilio" CssClass="form_text" MaxLength="24"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvDomicilio" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtDomicilio"  ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <!--Formato de Correo Electr&oacute;nico-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblEmailTitulo" Text="E-mail" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtEmail" CssClass="form_text" MaxLength="23"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvEmail" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtEmail"  ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblTelefonoTitulo" Text="Tel&eacute;fono 1" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtTelefono" CssClass="form_text" MaxLength="14"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvTelefono" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTelefono"  ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revTelefono" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtTelefono"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblTelefono2Titulo" Text="Tel&eacute;fono 2" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtTelefono2" CssClass="form_text" MaxLength="14"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvTelefono2" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTelefono2"  ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revTelefono2" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtTelefono2"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblEsSocioOPropietarioDeLaEmpresaTitulo" Text="&iquest;Es socio o propietario de la empresa?" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:CheckBox CssClass="form_checkbox" ID="boolEsSocioOPropietarioDeLaEmpresa" runat="server"/>
                                </td>
                            </tr>
                            <tr>
                                <%--<td>
                                    <asp:RequiredFieldValidator ID="rqvEsSocioOPropietarioDeLaEmpresa" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="boolEsSocioOPropietarioDeLaEmpresa"  ></asp:RequiredFieldValidator>
                                </td>--%>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblEsTrabajadorDelSectorAgrarioTitulo" Text="&iquest;Es trabajador del sector agrario?" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:CheckBox CssClass="form_checkbox" ID="boolEsTrabajadorDelSectorAgrario" runat="server"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblLaboraEnOtraEmpresaTitulo" Text="&iquest;Labora en otra empresa?" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:CheckBox CssClass="form_checkbox" ID="boolLaboraEnOtraEmpresa" runat="server"/>
                                </td>
                            </tr>
                            <!--se debe completar si la pregunta anterior es verdadera-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblNit2Titulo" Text="Nit" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtNit2" CssClass="form_text" MaxLength="13"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revNit2" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtNit2"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <!--se debe completar si la pregunta anterior es verdadera-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblSubNit2Titulo" Text="Sub Nit" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtSubNit2" CssClass="form_text" MaxLength="2"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revSubNit2" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtSubNit2"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <!--se debe completar si la pregunta anterior es verdadera-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblNombreORazonSocial2Titulo" Text="Nombre O Raz&oacute;n Social" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtNombreORazonSocial2" CssClass="form_text" MaxLength="29"/>
                                </td>
                            </tr>
                            <!--se debe completar si la pregunta anterior es verdadera-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblHorasMes2Titulo" Text="Horas Mes" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtHorasMes2" CssClass="form_text" MaxLength="3"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revHorasMes2" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtHorasMes2"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <!--se debe completar si la pregunta anterior es verdadera-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblSueldoBasico2Titulo" Text="Sueldo B&aacute;sico" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtSueldoBasico2" CssClass="form_text" MaxLength="9"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revSueldoBasico2" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtSueldoBasico2"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <!--se debe completar si la pregunta anterior es verdadera-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblComisionEnVentas2Titulo" Text="Comisi&oacute;n En Ventas" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtComisionEnVentas2" CssClass="form_text" MaxLength="9"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revComisionEnVentas2" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtComisionEnVentas2"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                        </TABLE>
                    </asp:WizardStep>
                    
                    
                    
                    
                    
                    <asp:WizardStep ID="wzDatosDelConyugeOCompaneraoStep" runat="server" StepType="auto" Title=""><br /><br />
                          <table id="Table2" style="width: 750px" runat="server">  
                            <tr>
                                <td scope="row" class="form_section_header">
                                        <asp:Label ID="Label2" runat="server" Text="Datos del conyugue o companiero" CssClass="title-form"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblDeseaIngresarUnConyugeTitulo" Text="Desea Ingresar Un C&oacute;nyuge" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:CheckBox CssClass="form_checkbox" ID="boolDeseaIngresarUnConyuge" runat="server"/>
                                </td>
                            </tr>
                           
                            <!--es un check, 1= CC, 2= TI, 3=CE-->
                            
                              <tr>        
                                <td>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td colspan="10">
                                                <asp:Label runat="server" ID="lblTipoDeIdentificacionT2" Text="Identificación" CssClass="form_label"/><span class="form_label"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" ID="lblTipoDeIdentificacion2Titulo" Text="Tipo" CssClass="form_label"/><span class="form_label">&nbsp;&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                                            </td>
                                            <td>
                                                <asp:RadioButtonList ID="rdTipoDeIdentificacion2" runat="server" repeatdirection="Horizontal" CssClass="form_radios" />
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <asp:Label runat="server" ID="lblNumeroDeIdentificacion2Titulo" Text="Numero De Identificación" CssClass="form_label"/><span class="form_label">&nbsp;&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="txtNumeroDeIdentificacion2" CssClass="form_text" MaxLength="11"/>
                                            </td>                        
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="rqvTipoDeIdentificacion2" runat="server" CssClass="form_field_error_message"
                                                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="rdTipoDeIdentificacion2"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:RegularExpressionValidator ID="revNumeroDeIdentificacion2" runat="server" CssClass="form_field_error_message"
                                                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion2"
                                                    ValidationExpression="^[\d]*$"></asp:RegularExpressionValidator>
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
                                                <asp:Label runat="server" ID="lblConvivenTitulo" Text="Conviven" CssClass="form_label"/>
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                             <td>
                                                <asp:Label runat="server" ID="lblTipoDeRelacionTitulo" Text="Tipo De Relaci&oacute;n" CssClass="form_label"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                 <asp:RadioButtonList ID="rdlConvivenciaConyugue" runat="server" repeatdirection="Horizontal" CssClass="form_radios">
                                                  <asp:ListItem Value="Si" Text="Si&nbsp;&nbsp;" />
                                                  <asp:ListItem Value="No" Text="No&nbsp;&nbsp;" />
                                                </asp:RadioButtonList>
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                             <td>
                                               <asp:RadioButtonList ID="rdlTipoRelacionConyugue" runat="server" repeatdirection="Horizontal" CssClass="form_radios">
                                                  <asp:ListItem Value="Conyugue" Text="Conyugue&nbsp;&nbsp;" />
                                                  <asp:ListItem Value="Companiero" Text="Compa&ntilde;ero/a No&nbsp;&nbsp;" />
                                                </asp:RadioButtonList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                               
                               
                            <!--es un check, c&oacute;nyuge, compañera(o)-->
                            <tr>
                                <td>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" ID="lblPrimerApellidoTitulo2" Text="Apellidos" CssClass="form_label"/><span class="form_label"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" ID="lblPrimerApellido2Titulo" Text="Primero" CssClass="form_label"/><span class="form_label">&nbsp;&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="txtPrimerApellido2" CssClass="form_text" MaxLength="20"/>
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <asp:Label runat="server" ID="lblSegundoApellido2Titulo" Text="Segundo" CssClass="form_label"/><span class="form_label">&nbsp;
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="txtSegundoApellido2" CssClass="form_text" MaxLength="20"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="form_field_error_message"
                                                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerApellido2"></asp:RequiredFieldValidator>
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
                                                <asp:Label runat="server" ID="lblPrimerNombreTitulo2" Text="Nombres" CssClass="form_label"/><span class="form_label"></span>
                                            </td>
                                        </tr>                
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" ID="lblPrimerNombre2Titulo" Text="Primero" CssClass="form_label"/><span class="form_label">&nbsp;&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="txtPrimerNombre2" CssClass="form_text" MaxLength="20"/>
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <asp:Label runat="server" ID="lblSegundoNombre2Titulo" Text="Segundo" CssClass="form_label"/>&nbsp;
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="txtSegundoNombre2" CssClass="form_text" MaxLength="20"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="form_field_error_message"
                                                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerNombre2"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                    </table>                
                                </td>
                            </tr>
                            
                            <!--AAAAMMDD-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblFechaDeNacimiento2Titulo" Text="Fecha De Nacimiento (dd/mm/aaaa)" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:Panel ID="pnldtFechaDeNacimiento2" runat="server"/>
                                </td>
                            </tr>
                            <!--Si conviven, se autocompleta. Formato de direcciones.-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblDomicilio2Titulo" Text="Domicilio" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtDomicilio2" CssClass="form_text" MaxLength="24"/>
                                </td>
                            </tr>
                            <!--Si conviven se autocompleta.-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblCiudad2Titulo" Text="Ciudad" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtCiudad2" CssClass="form_text" MaxLength="11"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblTelefono3Titulo" Text="Tel&eacute;fono" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtTelefono3" CssClass="form_text" MaxLength="14"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revTelefono3" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtTelefono3"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <!--es un check, hogar, empleado, independiente, pensionado, sin empleo-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblOcupacionTitulo" Text="Ocupaci&oacute;n" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RadioButtonList ID="rdlOcupacionConyugue" runat="server" repeatdirection="Horizontal" CssClass="form_radios">
                                      <asp:ListItem Value="Hogar" Text="Hogar&nbsp;&nbsp;" />
                                      <asp:ListItem Value="Empleado" Text="Empleado&nbsp;&nbsp;" />
                                      <asp:ListItem Value="Independiente" Text="Independiente&nbsp;&nbsp;" />
                                      <asp:ListItem Value="Pensionado" Text="Pensionado&nbsp;&nbsp;" />
                                      <asp:ListItem Value="SinEmpleo" Text="Sin Empleo&nbsp;&nbsp;" />
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvOcupacionConyugue" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Seleccione una ocupaci&oacute;n" Display="Dynamic" ControlToValidate="rdlOcupacionConyugue"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:Label CssClass="form_label" ID="lblSiElConyugeEsEmpleado"  Text="Si el Conyugue o Compa&ntilde;era (o) Es empleado " runat="server"/>
                                </td>
                            </tr>
                            <!--es obligatorio si el campo ocupaci&oacute;n  esta marcado con empleado-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblRecibeSubsidioTitulo" Text="Recibe Subsidio?" CssClass="form_label"/> &nbsp;&nbsp;&nbsp;  
                                     <asp:RadioButtonList ID="rdlConyugueRecibeSubsidio" runat="server" repeatdirection="Horizontal" CssClass="form_radios">
                                      <asp:ListItem Value="Si" Text="Si&nbsp;&nbsp;" />
                                      <asp:ListItem Value="No" Text="No&nbsp;&nbsp;" />
                                      </asp:RadioButtonList>
                                </td>
                            </tr>
                            <!--es obligatorio si el campo ocupaci&oacute;n  esta marcado con empleado-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblNit3Titulo" Text="Nit" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtConyugueNit3" CssClass="form_text" MaxLength="13"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revNit3" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtConyugueNit3"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <!--es obligatorio si el campo ocupaci&oacute;n  esta marcado con empleado-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblNombreORazonSocialDeLaEmpresaDondeTrabajaTitulo" Text="Nombre O Raz&oacute;n Social De La Empresa Donde Trabaja" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtNombreORazonSocialDeLaEmpresaDondeTrabaja" CssClass="form_text" MaxLength="27"/>
                                </td>
                            </tr>
                            <!--es obligatorio si el campo ocupaci&oacute;n  esta marcado con empleado-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblSueldoBasico3Titulo" Text="Sueldo B&aacute;sico" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtConyugueSueldoBasico3" CssClass="form_text" MaxLength="9"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revSueldoBasico3" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtConyugueSueldoBasico3"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                        </TABLE>
                    </asp:WizardStep>
                    
                    
                    
                    
                    
                    
                    
                    
                    <asp:WizardStep ID="wzDatosDelPadreOMadreBiologicaoDelHijoAInscribirStep" runat="server" StepType="auto" Title=""><br /><br />
                        <table id="Table3" style="width: 750px" runat="server">  
                            <tr>
                                <td scope="row" class="form_section_header">
                                        <asp:Label ID="Label3" runat="server" Text="Datos de los padres" CssClass="title-form"></asp:Label>
                                </td>
                            </tr>
                            <!--es un check, 1= CC, 2= TI, 3=CE-->
                            
                             <tr>        
                                <td>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td colspan="10">
                                                <asp:Label runat="server" ID="lblTipoDeIdentificacionT3" Text="Identificación" CssClass="form_label"/><span class="form_label"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" ID="lblTipoDeIdentificacion3Titulo" Text="Tipo" CssClass="form_label"/><span class="form_label">&nbsp;&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                                            </td>
                                            <td>
                                                <asp:RadioButtonList ID="rdTipoDeIdentificacion3" runat="server" repeatdirection="Horizontal" CssClass="form_radios" />
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <asp:Label runat="server" ID="lblNumeroDeIdentificacion3Titulo" Text="Numero De Identificación" CssClass="form_label"/><span class="form_label">&nbsp;&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="txtNumeroDeIdentificacion3" CssClass="form_text" MaxLength="11"/>
                                            </td>                        
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="revTipoDeIdentificacion3" runat="server" CssClass="form_field_error_message"
                                                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="rdTipoDeIdentificacion3"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:RegularExpressionValidator ID="revNumeroDeIdentificacion3" runat="server" CssClass="form_field_error_message"
                                                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion3"
                                                    ValidationExpression="^[\d]*$"></asp:RegularExpressionValidator>
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
                                                <asp:Label runat="server" ID="lblConviven2Titulo" Text="Conviven" CssClass="form_label"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:RadioButtonList ID="rdlConviven2" runat="server" repeatdirection="Horizontal" CssClass="form_radios">
                                                  <asp:ListItem Value="Si" Text="Si&nbsp;&nbsp;" />
                                                  <asp:ListItem Value="No" Text="No&nbsp;&nbsp;" />
                                                </asp:RadioButtonList>
                                            </td>
                                        </tr>
                                        <!--se autocompleta cuando se completa alg&uacute;n campo de este cuadro-->
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" ID="lblPadreOMadreBiologicaTitulo" Text="Padre O Madre Biol&oacute;gica" CssClass="form_label"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox runat="server" ID="txtPadreOMadreBiologica" CssClass="form_text" MaxLength="1"/>
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
                                                <asp:Label runat="server" ID="lblPrimerApellidoTitulo3" Text="Apellidos" CssClass="form_label"/><span class="form_label"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" ID="lblPrimerApellido3Titulo" Text="Primero" CssClass="form_label"/><span class="form_label">&nbsp;&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="txtPrimerApellido3" CssClass="form_text" MaxLength="20"/>
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <asp:Label runat="server" ID="lblSegundoApellido3Titulo" Text="Segundo" CssClass="form_label"/><span class="form_label">&nbsp;
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="txtSegundoApellido3" CssClass="form_text" MaxLength="20"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="rqvPrimerApellido3" runat="server" CssClass="form_field_error_message"
                                                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerApellido3"></asp:RequiredFieldValidator>
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
                                                <asp:Label runat="server" ID="lblPrimerNombreTitulo3" Text="Nombres" CssClass="form_label"/><span class="form_label"></span>
                                            </td>
                                        </tr>                
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" ID="lblPrimerNombre3Titulo" Text="Primero" CssClass="form_label"/><span class="form_label">&nbsp;&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="txtPrimerNombre3" CssClass="form_text" MaxLength="20"/>
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <asp:Label runat="server" ID="lblSegundoNombre3Titulo" Text="Segundo" CssClass="form_label"/>&nbsp;
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="txtSegundoNombre3" CssClass="form_text" MaxLength="20"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="rqvPrimerNombre3" runat="server" CssClass="form_field_error_message"
                                                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerNombre3"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                    </table>                
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblFechaDeNacimiento3Titulo" Text="Fecha De Nacimiento (dd/mm/aaaa)" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:Panel ID="pnldtFechaDeNacimiento3" runat="server"/>
                                </td>
                            </tr>
                            <!--es un check, hogar, empleado, independiente, pensionado, sin empleo-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblOcupacionPadres" Text="Ocupaci&oacute;n" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RadioButtonList ID="rdlOcupacionPadres" runat="server" repeatdirection="Horizontal" CssClass="form_radios">
                                      <asp:ListItem Value="Hogar" Text="Hogar&nbsp;&nbsp;" />
                                      <asp:ListItem Value="Empleado" Text="Empleado&nbsp;&nbsp;" />
                                      <asp:ListItem Value="Independiente" Text="Independiente&nbsp;&nbsp;" />
                                      <asp:ListItem Value="Pensionado" Text="Pensionado&nbsp;&nbsp;" />
                                      <asp:ListItem Value="SinEmpleo" Text="Sin Empleo&nbsp;&nbsp;" />
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Seleccione una ocupaci&oacute;n" Display="Dynamic" ControlToValidate="rdlOcupacionPadres"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblDomicilio3Titulo" Text="Domicilio" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtDomicilio3" CssClass="form_text" MaxLength="24"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblCiudad3Titulo" Text="Ciudad" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtCiudad3" CssClass="form_text" MaxLength="11"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblTelefono4Titulo" Text="Tel&eacute;fono" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtTelefono4" CssClass="form_text" MaxLength="14"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revTelefono4" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtTelefono4"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:Label CssClass="form_label" ID="lblSiElPadreOMadreBiologicaEsEmpleadoDiligencie" runat="server"/>
                                </td>
                            </tr>
                            <!--es obligatorio si el campo empleado esta marcado-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblRecibeSubsidio2Titulo" Text="Recibe Subsidio" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:CheckBox CssClass="form_checkbox" ID="boolRecibeSubsidio2" runat="server"/>
                                </td>
                            </tr>
                            <!--Es obligatorio si coloca que recibe subsidio.-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblNombreDeLosHijosPorLosQueRecibeElSubsidioTitulo" Text="Nombre De Los Hijos Por Los Que Recibe El Subsidio" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtNombreDeLosHijosPorLosQueRecibeElSubsidio" CssClass="form_text" MaxLength="50"/>
                                </td>
                            </tr>
                            <!--es obligatorio si el campo empleado esta marcado-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblNit4Titulo" Text="Nit" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtNit4" CssClass="form_text" MaxLength="13"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revNit4" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtNit4"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <!--es obligatorio si el campo empleado esta marcado-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblNombreORazonSocialDeLaEmpresaDondeTrabaja2Titulo" Text="Nombre O Raz&oacute;n Social De La Empresa Donde Trabaja" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtNombreORazonSocialDeLaEmpresaDondeTrabaja2" CssClass="form_text" MaxLength="27"/>
                                </td>
                            </tr>
                            <!--es obligatorio si el campo empleado esta marcado-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblSueldoBasico4Titulo" Text="Sueldo B&aacute;sico" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtSueldoBasico4" CssClass="form_text" MaxLength="9"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revSueldoBasico4" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar n&uacute;meros" Display="Dynamic" ControlToValidate="txtSueldoBasico4"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                        </TABLE>
                    </asp:WizardStep>
                    
                    
                    
                    
                    
                    <asp:WizardStep ID="wzPersonasACargoStep" runat="server" StepType="auto" Title=""><br /><br />
                        <table id="Table4" style="width: 750px" runat="server">  
                            <tr>
                                <td scope="row" class="form_section_header">
                                        <asp:Label ID="Label4" runat="server" Text="Datos de personas a cargo" CssClass="title-form"></asp:Label>
                                </td>
                            </tr>
                            <!--Habilita los campos para cargar la cantidad de personas solicitadas. Todos los campos son obligatorios.-->
                            
                            <tr>
                                <td>
                                    <asp:UpdatePanel ID="updentidades" runat="server">
                                        <ContentTemplate>
                                            <asp:GridView AllowPaging="true" PageSize="14" ID="gvDetalleTrabajadores" runat="server"
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
                                                    <asp:BoundField HeaderText="Tipo de Documento" DataField="Dependidtype" ShowHeader="true" ReadOnly="true" />
                                                    <asp:BoundField HeaderText="Número Ident" DataField="Dependidnum" ShowHeader="true" ReadOnly="true" />
                                                    <asp:BoundField HeaderText="Tipo Ident padre" DataField="Dependparentidtype" ShowHeader="true" ReadOnly="true" />
                                                    <asp:BoundField HeaderText="Nro Ident padre" DataField="Dependparentidnum" ShowHeader="true" ReadOnly="true" />
                                                    <asp:BoundField HeaderText="Sexo" DataField="Dependparentgender" ShowHeader="true" ReadOnly="true" />
                                                    <asp:BoundField HeaderText="Fecha Nac" DataField="Dependbirthdate" ShowHeader="true" ReadOnly="true" />
                                                    <asp:BoundField HeaderText="1er. Apellido" DataField="Dependfirstsurename" ShowHeader="true" ReadOnly="true" />
                                                    <asp:BoundField HeaderText="2do. Apellido" DataField="Dependsecondsurename" ShowHeader="true" ReadOnly="true" />
                                                    <asp:BoundField HeaderText="Primer Nombre" DataField="Dependfirstname" ShowHeader="true" ReadOnly="true" />
                                                    <asp:BoundField HeaderText="Segundo Nombre" DataField="Dependsecondname" ShowHeader="true" ReadOnly="true" />
                                                    <asp:BoundField HeaderText="Parentesco" DataField="Dependkindship" ShowHeader="true" ReadOnly="true" />
                                                    <asp:BoundField HeaderText="Discapacitado" DataField="Dependhandicapp" ShowHeader="true" ReadOnly="true" />
                                                </Columns>
                                            </asp:GridView>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="btnCargarPersonaCargo" EventName="Click" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            
                            <tr>        
                                <td>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td colspan="10">
                                                <asp:Label runat="server" ID="lblACargoTipoIdent" Text="Identificación" CssClass="form_label"/><span class="form_label"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" ID="lblACargoTipoIdentificacion" Text="Tipo" CssClass="form_label"/><span class="form_label">&nbsp;&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                                            </td>
                                            <td>
                                                <asp:RadioButtonList ID="rdlACargoTipoIdentificacion" runat="server" repeatdirection="Horizontal" CssClass="form_radios" />
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <asp:Label runat="server" ID="lblACargoNumeroIdentificacion" Text="Numero De Identificación" CssClass="form_label"/><span class="form_label">&nbsp;&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="txtACargoNumeroIdentificacion" CssClass="form_text" MaxLength="11"/>
                                            </td>                        
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="revACargoTipoIdentificacion" runat="server" CssClass="form_field_error_message"
                                                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="rdlACargoTipoIdentificacion"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:RegularExpressionValidator ID="revACargoNumeroIdentificacion" runat="server" CssClass="form_field_error_message"
                                                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtACargoNumeroIdentificacion"
                                                    ValidationExpression="^[\d]*$"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>

                              <tr>        
                                <td><br />
                                </td>
                              </tr>        
                            
                              <tr>        
                                <td>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td colspan="10">
                                                <asp:Label runat="server" ID="lblACargoTipoIdentPadre" Text="Identificación del Padre Asociado" CssClass="form_label"/><span class="form_label"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" ID="lblACargoTipoIdentPadre" Text="Tipo" CssClass="form_label"/><span class="form_label">&nbsp;&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                                            </td>
                                            <td>
                                                <asp:RadioButtonList ID="rdlACargoTipoIdentPadre" runat="server" repeatdirection="Horizontal" CssClass="form_radios" />
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <asp:Label runat="server" ID="lblACargoNumeroIdentPadre" Text="Numero De Identificación" CssClass="form_label"/><span class="form_label">&nbsp;&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="txtACargoNumeroIdentPadre" CssClass="form_text" MaxLength="11"/>
                                            </td>                        
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="revACargoTipoIdentPadre" runat="server" CssClass="form_field_error_message"
                                                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="rdlACargoTipoIdentPadre"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:RegularExpressionValidator ID="revACargoNumeroIdentPadre" runat="server" CssClass="form_field_error_message"
                                                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtACargoNumeroIdentPadre"
                                                    ValidationExpression="^[\d]*$"></asp:RegularExpressionValidator>
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
                                                <asp:Label runat="server" ID="lblSexo2Titulo" Text="Sexo" CssClass="form_label"/> &nbsp;&nbsp;&nbsp;
                                            </td>
                                             <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <asp:Label runat="server" ID="lblFechaDeNacimiento4Titulo" Text="Fecha De Nacimiento (dd/mm/aaaa)" CssClass="form_label"/>
                                            </td>                 
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:RadioButtonList ID="rdlSexoACargo" runat="server" repeatdirection="Horizontal" CssClass="form_radios">
                                                  <asp:ListItem Value="F" Text="Femenino&nbsp;&nbsp;" />
                                                  <asp:ListItem Value="M" Text="Masculino&nbsp;&nbsp;" />
                                                </asp:RadioButtonList>
                                            </td>
                                             <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                               <asp:Panel ID="pnldtFechaDeNacimiento4" runat="server"/>
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
                                                <asp:Label runat="server" ID="lblPrimerApellidoTitulo4" Text="Apellidos" CssClass="form_label"/><span class="form_label"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" ID="lblPrimerApellido4Titulo" Text="Primero" CssClass="form_label"/><span class="form_label">&nbsp;&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="txtPrimerApellido4" CssClass="form_text" MaxLength="20"/>
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <asp:Label runat="server" ID="lblSegundoApellido4Titulo" Text="Segundo" CssClass="form_label"/><span class="form_label">&nbsp;
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="txtSegundoApellido4" CssClass="form_text" MaxLength="20"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="rqvPrimerApellido4" runat="server" CssClass="form_field_error_message"
                                                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerApellido4"></asp:RequiredFieldValidator>
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
                                                <asp:Label runat="server" ID="lblPrimerNombreTitulo4" Text="Nombres" CssClass="form_label"/><span class="form_label"></span>
                                            </td>
                                        </tr>                
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" ID="lblPrimerNombre4Titulo" Text="Primero" CssClass="form_label"/><span class="form_label">&nbsp;&nbsp;(&nbsp;<span style="color:red">*</span>&nbsp;)&nbsp;</span>
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="txtPrimerNombre4" CssClass="form_text" MaxLength="20"/>
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <asp:Label runat="server" ID="lblSegundoNombre4Titulo" Text="Segundo" CssClass="form_label"/>&nbsp;
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="txtSegundoNombre4" CssClass="form_text" MaxLength="20"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="rqvPrimerNombre3" runat="server" CssClass="form_field_error_message"
                                                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerNombre4"></asp:RequiredFieldValidator>
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
                                                <asp:Label runat="server" ID="lblParentescoTitulo" Text="Parentesco" CssClass="form_label"/>
                                            </td>
                                             <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                <asp:Label runat="server" ID="lblDiscapacitadoTitulo" Text="Discapacitado" CssClass="form_label"/>
                                            </td>                 
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:RadioButtonList ID="rdlParentesco" runat="server" repeatdirection="Horizontal" CssClass="form_radios">
                                                  <asp:ListItem Value="Hijo" Text="Hijo&nbsp;&nbsp;" />
                                                  <asp:ListItem Value="Hijastro" Text="Hijastro&nbsp;&nbsp;" />
                                                  <asp:ListItem Value="Adoptivo" Text="Adoptivo&nbsp;&nbsp;" />
                                                  <asp:ListItem Value="Hermano" Text="Hermano&nbsp;&nbsp;" />
                                                  <asp:ListItem Value="Padre" Text="Padre&nbsp;&nbsp;" />
                                                </asp:RadioButtonList>
                                            </td>
                                             <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                               <asp:CheckBox CssClass="form_checkbox" ID="ckbDiscapacitado" runat="server"/>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>
                                   <asp:Label ID="91" Text="PARSE ERROR:Index was outside the bounds of the array." CssClass="form_field_error_message"/>
                                </td>
                            </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="btnCargarPersonaCargo" CssClass="form_button_submit" runat="server" Text="Agregar persona a cargo"
                                            OnClick="btnCargarPersonaCargo_Click" />
                                    </td>                    
                                </tr>
                        </TABLE>
                    </asp:WizardStep>
                    <asp:WizardStep ID="wzFinishStep" runat="server" StepType="Complete" Title="Completado">
                        <div style="height: 200px">
                            <asp:Label runat="server" ID="FinalMsg" />
                        </div>
                    </asp:WizardStep>
                </WizardSteps>
                
            </asp:Wizard>
        </td>
    </tr>
</table>
</asp:Content>

    
