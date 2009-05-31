<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Novedades.aspx.cs" Inherits="Novedades" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<script type='text/javascript'>
    _spOriginalFormAction = document.forms[0].action;
    _spSuppressFormOnSubmitWrapper = true;
</script>
<asp:ScriptManager ID="scriptMng" runat="server"></asp:ScriptManager>
<table class="ms-formbody" style="width:100%" id="tblMain" runat="server">
    <tr>
        <td>
            <asp:Wizard runat="server" ID="wzDatosDeLaEmpresa"  Font-Names="verdana" CssClass="content-more" ForeColor="navy" Style="border: outset 1px black" OnNextButtonClick="OnNext" OnActiveStepChanged="OnActiveStepChanged" OnFinishButtonClick="OnFinish" ActiveStepIndex="0" DisplaySideBar="false"  >
                <WizardSteps>
                
                
                    <asp:WizardStep ID="wzDatosDeLaEmpresaStep" runat="server" StepType="auto" Title="">
                         <table  style="width: 750px" runat="server">  
                            <tr>
                                <td scope="row" class="title-form">
                                        <asp:Label ID="lblDatosGenerales" runat="server" Text="Datos de la empresa" CssClass="title-form"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblNitTitulo" Text="Nit" CssClass="form_label"/><span class="form_label"> &nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtNit" CssClass="form_text" MaxLength="13"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvNit" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNit"  ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revNit" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNit"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblSubNitTitulo" Text="Sub Nit" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtSubNit" CssClass="form_text" MaxLength="2"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvSubNit" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSubNit"  ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revSubNit" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSubNit"
                                        ValidationExpression="^[\d]*$"  ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblNombreORazonSocialTitulo" Text="Nombre O Raz&oacuten Social" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtNombreORazonSocial" CssClass="form_text" MaxLength="34"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvNombreORazonSocial" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNombreORazonSocial"  ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </TABLE>
                    </asp:WizardStep>
                    
                    
                    
                    
                    
                    <asp:WizardStep ID="wzDatosDelTrabajadorStep" runat="server" StepType="auto" Title="">
                        <table id="Table1" style="width: 750px" runat="server">  
                            <tr>
                                <td scope="row" class="title-form">
                                        <asp:Label ID="Label1" runat="server" Text="Datos del trabajador " CssClass="title-form"></asp:Label>
                                </td>
                            </tr>
                            <!--es un check, 1= CC, 2= TI, 3=CE-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblTipoDeIdentificacionTitulo" Text="Tipo De Identificación" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtTipoDeIdentificacion" CssClass="form_text" MaxLength="1"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvTipoDeIdentificacion" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTipoDeIdentificacion" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revTipoDeIdentificacion" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTipoDeIdentificacion"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblNumeroDeIdentificacionTitulo" Text="Número De Identificación" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtNumeroDeIdentificacion" CssClass="form_text" MaxLength="13"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvNumeroDeIdentificacion" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revNumeroDeIdentificacion" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
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
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSucursal" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revSucursal" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSucursal"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblPrimerApellidoTitulo" Text="Primer Apellido" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtPrimerApellido" CssClass="form_text" MaxLength="20"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvPrimerApellido" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerApellido" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblSegundoApellidoTitulo" Text="Segundo Apellido" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtSegundoApellido" CssClass="form_text" MaxLength="20"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblPrimerNombreTitulo" Text="Primer Nombre" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtPrimerNombre" CssClass="form_text" MaxLength="20"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvPrimerNombre" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerNombre" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblSegundoNombreTitulo" Text="Segundo Nombre" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtSegundoNombre" CssClass="form_text" MaxLength="20"/>
                                </td>
                            </tr>
                            <!--es un check, soltero, casado, viudo, separado, unión libre-->
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
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtEstadoCivil" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revEstadoCivil" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtEstadoCivil"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
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
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSexo" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revSexo" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSexo"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
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
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCargo" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
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
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtHorasMes" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revHorasMes" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtHorasMes"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblSueldoBasicoTitulo" Text="Sueldo Básico" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
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
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSueldoBasico" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revSueldoBasico" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSueldoBasico"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblComisionEnVentasTitulo" Text="Comisión En Ventas" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
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
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtComisionEnVentas" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revComisionEnVentas" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtComisionEnVentas"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
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
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCiudad" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
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
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtDomicilio" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <!--Formato de Correo Electrónico-->
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
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtEmail" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblTelefonoTitulo" Text="Teléfono 1" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
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
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTelefono" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revTelefono" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTelefono"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblTelefono2Titulo" Text="Teléfono 2" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
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
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTelefono2" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revTelefono2" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTelefono2"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblEsSocioOPropietarioDeLaEmpresaTitulo" Text="¿es Socio O Propietario De La Empresa?" CssClass="form_label"/>
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
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="boolEsSocioOPropietarioDeLaEmpresa" ValidationGroup="grpValidation3"></asp:RequiredFieldValidator>
                                </td>--%>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblEsTrabajadorDelSectorAgrarioTitulo" Text="¿es Trabajador Del Sector Agrario?" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:CheckBox CssClass="form_checkbox" ID="boolEsTrabajadorDelSectorAgrario" runat="server"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblLaboraEnOtraEmpresaTitulo" Text="¿labora En Otra Empresa?" CssClass="form_label"/>
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
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNit2"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
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
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSubNit2"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <!--se debe completar si la pregunta anterior es verdadera-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblNombreORazonSocial2Titulo" Text="Nombre O Razón Social" CssClass="form_label"/>
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
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtHorasMes2"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <!--se debe completar si la pregunta anterior es verdadera-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblSueldoBasico2Titulo" Text="Sueldo Básico" CssClass="form_label"/>
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
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSueldoBasico2"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <!--se debe completar si la pregunta anterior es verdadera-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblComisionEnVentas2Titulo" Text="Comisión En Ventas" CssClass="form_label"/>
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
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtComisionEnVentas2"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation3"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                        </TABLE>
                    </asp:WizardStep>
                    
                    
                    
                    
                    
                    <asp:WizardStep ID="wzDatosDelConyugeOCompaneraoStep" runat="server" StepType="auto" Title=""><br /><br />
                          <table id="Table2" style="width: 750px" runat="server">  
                            <tr>
                                <td scope="row" class="title-form">
                                        <asp:Label ID="Label2" runat="server" Text="Datos del conyugue o companiero" CssClass="title-form"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblDeseaIngresarUnConyugeTitulo" Text="Desea Ingresar Un Cónyuge" CssClass="form_label"/>
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
                                    <asp:Label runat="server" ID="lblTipoDeIdentificacion2Titulo" Text="Tipo De Identificación" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtTipoDeIdentificacion2" CssClass="form_text" MaxLength="1"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revTipoDeIdentificacion2" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTipoDeIdentificacion2"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation4"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblNumeroDeIdentificacion2Titulo" Text="Número De Identificación" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtNumeroDeIdentificacion2" CssClass="form_text" MaxLength="13"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revNumeroDeIdentificacion2" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion2"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation4"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblConvivenTitulo" Text="Conviven" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:CheckBox CssClass="form_checkbox" ID="boolConviven" runat="server"/>
                                </td>
                            </tr>
                            <!--es un check, cónyuge, compañera(o)-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblTipoDeRelacionTitulo" Text="Tipo De Relación" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtTipoDeRelacion" CssClass="form_text" MaxLength="1"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revTipoDeRelacion" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTipoDeRelacion"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation4"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblPrimerApellido2Titulo" Text="Primer Apellido" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtPrimerApellido2" CssClass="form_text" MaxLength="20"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblSegundoApellido2Titulo" Text="Segundo Apellido" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtSegundoApellido2" CssClass="form_text" MaxLength="20"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblPrimerNombre2Titulo" Text="Primer Nombre" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtPrimerNombre2" CssClass="form_text" MaxLength="20"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblSegundoNombre2Titulo" Text="Segundo Nombre" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtSegundoNombre2" CssClass="form_text" MaxLength="20"/>
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
                                    <asp:Label runat="server" ID="lblTelefono3Titulo" Text="Teléfono" CssClass="form_label"/>
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
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTelefono3"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation4"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <!--es un check, hogar, empleado, independiente, pensionado, sin empleo-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblOcupacionTitulo" Text="Ocupación" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtOcupacion" CssClass="form_text" MaxLength="1"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revOcupacion" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtOcupacion"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation4"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:Label CssClass="form_label" ID="lblSiElConyugeOCompaneraoEsEmpleadoDiligencie" runat="server"/>
                                </td>
                            </tr>
                            <!--es obligatorio si el campo ocupación  esta marcado con empleado-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblRecibeSubsidioTitulo" Text="Recibe Subsidio" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:CheckBox CssClass="form_checkbox" ID="boolRecibeSubsidio" runat="server"/>
                                </td>
                            </tr>
                            <!--es obligatorio si el campo ocupación  esta marcado con empleado-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblNit3Titulo" Text="Nit" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtNit3" CssClass="form_text" MaxLength="13"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revNit3" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNit3"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation4"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <!--es obligatorio si el campo ocupación  esta marcado con empleado-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblNombreORazonSocialDeLaEmpresaDondeTrabajaTitulo" Text="Nombre O Razón Social De La Empresa Donde Trabaja" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtNombreORazonSocialDeLaEmpresaDondeTrabaja" CssClass="form_text" MaxLength="27"/>
                                </td>
                            </tr>
                            <!--es obligatorio si el campo ocupación  esta marcado con empleado-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblSueldoBasico3Titulo" Text="Sueldo Básico" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtSueldoBasico3" CssClass="form_text" MaxLength="9"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revSueldoBasico3" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSueldoBasico3"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation4"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                        </TABLE>
                    </asp:WizardStep>
                    
                    
                    
                    
                    
                    <asp:WizardStep ID="wzDatosDelPadreOMadreBiologicaoDelHijoAInscribirStep" runat="server" StepType="auto" Title=""><br /><br />
                        <table id="Table3" style="width: 750px" runat="server">  
                            <tr>
                                <td scope="row" class="title-form">
                                        <asp:Label ID="Label3" runat="server" Text="Datos de los padres" CssClass="title-form"></asp:Label>
                                </td>
                            </tr>
                            <!--es un check, 1= CC, 2= TI, 3=CE-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblTipoDeIdentificacion3Titulo" Text="Tipo De Identificación" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtTipoDeIdentificacion3" CssClass="form_text" MaxLength="1"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revTipoDeIdentificacion3" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTipoDeIdentificacion3"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation5"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblNumeroDeIdentificacion3Titulo" Text="Numero De Identificación" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtNumeroDeIdentificacion3" CssClass="form_text" MaxLength="13"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revNumeroDeIdentificacion3" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion3"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation5"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblConviven2Titulo" Text="Conviven" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:CheckBox CssClass="form_checkbox" ID="boolConviven2" runat="server"/>
                                </td>
                            </tr>
                            <!--se autocompleta cuando se completa algún campo de este cuadro-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblPadreOMadreBiologicaTitulo" Text="Padre O Madre Biológica" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtPadreOMadreBiologica" CssClass="form_text" MaxLength="1"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revPadreOMadreBiologica" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtPadreOMadreBiologica"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation5"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblPrimerApellido3Titulo" Text="Primer Apellido" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtPrimerApellido3" CssClass="form_text" MaxLength="20"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblSegundoApellido3Titulo" Text="Segundo Apellido" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtSegundoApellido3" CssClass="form_text" MaxLength="20"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblPrimerNombre3Titulo" Text="Primer Nombre" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtPrimerNombre3" CssClass="form_text" MaxLength="20"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblSegundoNombre3Titulo" Text="Segundo Nombre" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtSegundoNombre3" CssClass="form_text" MaxLength="20"/>
                                </td>
                            </tr>
                            <!--AAAAMMDD-->
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
                                    <asp:Label runat="server" ID="lblOcupacion2Titulo" Text="Ocupación" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtOcupacion2" CssClass="form_text" MaxLength="1"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revOcupacion2" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtOcupacion2"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation5"></asp:RegularExpressionValidator>
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
                                    <asp:Label runat="server" ID="lblTelefono4Titulo" Text="Teléfono" CssClass="form_label"/>
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
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTelefono4"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation5"></asp:RegularExpressionValidator>
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
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNit4"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation5"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <!--es obligatorio si el campo empleado esta marcado-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblNombreORazonSocialDeLaEmpresaDondeTrabaja2Titulo" Text="Nombre O Razón Social De La Empresa Donde Trabaja" CssClass="form_label"/>
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
                                    <asp:Label runat="server" ID="lblSueldoBasico4Titulo" Text="Sueldo Básico" CssClass="form_label"/>
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
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSueldoBasico4"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation5"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                        </TABLE>
                    </asp:WizardStep>
                    
                    
                    
                    
                    
                    <asp:WizardStep ID="wzPersonasACargoStep" runat="server" StepType="auto" Title=""><br /><br />
                        <table id="Table4" style="width: 750px" runat="server">  
                            <tr>
                                <td scope="row" class="title-form">
                                        <asp:Label ID="Label4" runat="server" Text="Datos de personas a cargo" CssClass="title-form"></asp:Label>
                                </td>
                            </tr>
                            <!--Habilita los campos para cargar la cantidad de personas solicitadas. Todos los campos son obligatorios.-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblCantidadDePersonasQueVaAInscribirTitulo" Text="Cantidad De Personas Que Va A Inscribir" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtCantidadDePersonasQueVaAInscribir" CssClass="form_text" MaxLength="2"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revCantidadDePersonasQueVaAInscribir" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtCantidadDePersonasQueVaAInscribir"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation6"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                           <tr>
                               <td>
                                   <asp:Repeater id="rptRepeater" runat="server">
                                       <HeaderTemplate>
                                           <table border="1" width="100%">
                                       </HeaderTemplate>
                                       <ItemTemplate />
                                       </asp:Repeater>
                                </td>
                            </tr>      
                                        <!--es un check, RC, CC, TI, CE-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblTipoDeIdentificacion4Titulo" Text="Tipo De Identificación" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtTipoDeIdentificacion4" CssClass="form_text" MaxLength="1"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revTipoDeIdentificacion4" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTipoDeIdentificacion4"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation6"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblNumeroDeIdentificacion4Titulo" Text="Numero De Identificación" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtNumeroDeIdentificacion4" CssClass="form_text" MaxLength="13"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revNumeroDeIdentificacion4" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion4"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation6"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <!--Si va a inscribir personas a cargo es obligatorio-->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblTipoDeIdentificacionDelPadreAsociadoTitulo" Text="Tipo De Identificación Del Padre Asociado" CssClass="form_label"/><span class="form_label">&nbsp;<font class="form_field_error_message">(*)</font>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtTipoDeIdentificacionDelPadreAsociado" CssClass="form_text" MaxLength="1"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="rqvTipoDeIdentificacionDelPadreAsociado" runat="server" CssClass="form_field_error_message"
                                    ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTipoDeIdentificacionDelPadreAsociado" ValidationGroup="grpValidation6"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revTipoDeIdentificacionDelPadreAsociado" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTipoDeIdentificacionDelPadreAsociado"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation6"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <!-- Si va a inscribir personas a cargo es obligatorio -->
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblNumeroDeIdentificacionDelPadreAsociadoTitulo" Text="Número  De Identificación Del Padre Asociado" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtNumeroDeIdentificacionDelPadreAsociado" CssClass="form_text" MaxLength="13"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revNumeroDeIdentificacionDelPadreAsociado" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacionDelPadreAsociado"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation6"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblSexo2Titulo" Text="Sexo" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtSexo2" CssClass="form_text" MaxLength="1"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revSexo2" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSexo2"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation6"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblFechaDeNacimiento4Titulo" Text="Fecha De Nacimiento (dd/mm/aaaa)" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:Panel ID="pnldtFechaDeNacimiento4" runat="server"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblPrimerApellido4Titulo" Text="Primer Apellido" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtPrimerApellido4" CssClass="form_text" MaxLength="20"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblSegundoApellido4Titulo" Text="Segundo Apellido" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtSegundoApellido4" CssClass="form_text" MaxLength="20"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblPrimerNombre4Titulo" Text="Primer Nombre" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtPrimerNombre4" CssClass="form_text" MaxLength="20"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblSegundoNombre4Titulo" Text="Segundo Nombre" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtSegundoNombre4" CssClass="form_text" MaxLength="20"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblParentescoTitulo" Text="Parentesco" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtParentesco" CssClass="form_text" MaxLength="1"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RegularExpressionValidator ID="revParentesco" runat="server" CssClass="form_field_error_message"
                                        ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtParentesco"
                                        ValidationExpression="^[\d]*$" ValidationGroup="grpValidation6"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblDiscapacitadoTitulo" Text="Discapacitado" CssClass="form_label"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:CheckBox CssClass="form_checkbox" ID="boolDiscapacitado" runat="server"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:Label ID="91" Text="PARSE ERROR:Index was outside the bounds of the array. CssClass="form_field_error_message"/>
                                </td>
                            </tr>
                        </TABLE>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </td>
    </tr>
</table>
</asp:Content>

    
