<%--<%@ Assembly Name="CAFAM.WebPortal.Forms, Version=1.0.0.0, Culture=neutral, PublicKeyToken=ae88e728e51b79b3" %>--%>

<%@ Page Language="C#" Inherits="CAFAM.WebPortal.Forms.AfiliacionEmpresas" CodeFile="~/AfiliacionEmpresas.aspx.cs"
    Title="Formulario" MasterPageFile="~/MasterPage.master" %>

<%--<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>--%>
<%--<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>--%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server" ID="MainContent">
    <link rel="Stylesheet" href="StyleSheet.css" type="text/css" />

    <script type='text/javascript'>
        _spOriginalFormAction = document.forms[0].action;
        _spSuppressFormOnSubmitWrapper = true;
    </script>

    <asp:ScriptManager ID="scriptMng" runat="server">
    </asp:ScriptManager>
    <table class="ms-formbody" style="width: 100%" id="tblMain" runat="server">
        <tr>
            <td>
                <asp:Wizard runat="server" ID="wzDatosDelTrabajador" Font-Names="verdana" CssClass="content-more"
                    ForeColor="navy" Style="border: outset 1px black" OnNextButtonClick="OnNext"
                    OnActiveStepChanged="OnActiveStepChanged" OnFinishButtonClick="OnFinish" ActiveStepIndex="0"
                    DisplaySideBar="false">
                    <WizardSteps>
                        <asp:WizardStep ID="wzDatosDelTrabajadorStep" runat="server" StepType="auto" Title="">
                            <table>
                                <tr>
                                    <td colspan="2" scope="row" style="background-color: Navy">
                                        <br />
                                        <center>
                                            <asp:Label ID="lblDatosGenerales" runat="server" Text="Datos del trabajador" CssClass="form_label_title"></asp:Label></center>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblNitTitulo" Text="Nit " CssClass="form_label" /><span
                                            class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtNit" CssClass="form_text" MaxLength="13" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqvNit" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNit"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RegularExpressionValidator ID="revNit" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNit"
                                            ValidationExpression="^[\d]*$"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblNombreORazonSocialTitulo" Text="Nombre O Razon Social"
                                            CssClass="form_label" /><span class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtNombreORazonSocial" CssClass="form_text" MaxLength="20" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqvNombreORazonSocial" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNombreORazonSocial"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblCodigoCiudadTitulo" Text="C&#243;digo Ciudad" CssClass="form_label" /><span
                                            class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" ID="lblCiudadTitulo" Text="Ciudad" CssClass="form_label" /><span
                                            class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtCodigoCiudad" CssClass="form_text" MaxLength="3" />
                                    </td>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtCiudad" CssClass="form_text" MaxLength="20" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqvCiudad" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCiudad"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqvCodigoCiudad" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCodigoCiudad"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revCodigoCiudad" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtCodigoCiudad"
                                            ValidationExpression="^[\d]*$"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblDireccionTitulo" Text="Direcci&#243;n" CssClass="form_label" /><span
                                            class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Panel ID="pnlDireccion" runat="server">
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblTelefonoTitulo" Text="Tel&#233;fono 1" CssClass="form_label" /><span
                                            class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" ID="lblTelefono2Titulo" Text="Tel&#233;fono 2" CssClass="form_label" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Panel ID="pnlTelefono_1" runat="server">
                                        </asp:Panel>
                                    </td>
                                    <td>
                                        <asp:Panel ID="pnlTelefono_2" runat="server">
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblAaTitulo" Text="Aa" CssClass="form_label" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtAa" CssClass="form_text" MaxLength="0" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblFaxTitulo" Text="Fax" CssClass="form_label" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtFax" CssClass="form_text" MaxLength="10" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RegularExpressionValidator ID="revFax" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtFax"
                                            ValidationExpression="^[\d]*$"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblMail" runat="server" CssClass="form_label" Text="Correo Electr&#243;nico"></asp:Label>
                                        (<font color="red">*</font>)
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtCorreoElectronico" MaxLength="3600" CssClass="form_text"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RegularExpressionValidator ID="regExpCompanyEmail" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="txtCorreoElectronico"
                                            ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"></asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="reqCompanyEmail" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Requerido" ControlToValidate="txtCorreoElectronico"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblEsEntidadDocenteTitulo" Text="&#191;Es entidad docente?"
                                            CssClass="form_label" /><span class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="chkEsEntidadDocente" runat="server" CssClass="form_text" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblNombreGerenteORepresentanteLegalTitulo" Text="Nombre Gerente O Representante Legal"
                                            CssClass="form_label" /><span class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtNombreGerenteORepresentanteLegal" CssClass="form_text"
                                            MaxLength="30" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqvNombreGerenteORepresentanteLegal" runat="server"
                                            CssClass="form_field_error_message" ErrorMessage="Requerido" Display="Dynamic"
                                            ControlToValidate="txtNombreGerenteORepresentanteLegal"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblNombreJefeDePersonalTitulo" Text="Nombre Jefe De Personal"
                                            CssClass="form_label" /><span class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtNombreJefeDePersonal" CssClass="form_text" MaxLength="30" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqvNombreJefeDePersonal" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNombreJefeDePersonal"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblNDeEscrituraConstitucionTitulo" Text="Nro De Escritura Constituci&#243;n"
                                            CssClass="form_label" /><span class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtNDeEscrituraConstitucion" CssClass="form_text"
                                            MaxLength="0" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqvNDeEscrituraConstitucion" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNDeEscrituraConstitucion"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RegularExpressionValidator ID="revNDeEscrituraConstitucion" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNDeEscrituraConstitucion"
                                            ValidationExpression="^[\d]*$"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblNNotariaTitulo" Text="Nro Notaria" CssClass="form_label" /><span
                                            class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtNNotaria" CssClass="form_text" MaxLength="0" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqvNNotaria" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNNotaria"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RegularExpressionValidator ID="revNNotaria" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNNotaria"
                                            ValidationExpression="^[\d]*$"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblFechaConstitucionTitulo" Text="Fecha Constituci&#243;n (dd/mm/aaaa)"
                                            CssClass="form_label" /><span class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Panel ID="pnldtFechaConstitucion" runat="server" />
                                    </td>
                                </tr>
                            </table>
                        </asp:WizardStep>
                        <asp:WizardStep ID="wzDatosEspecificosStep" runat="server" StepType="auto" Title="">
                            <table>
                                <tr>
                                    <td colspan="3" scope="row" style="background-color: Navy">
                                        <br />
                                        <center>
                                            <asp:Label ID="lblDatosEspecificos" runat="server" Text="Datos Especificos" CssClass="form_label_title"></asp:Label></center>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table width="100%">
                                            <tr>
                                                <td colspan="2">
                                                    <asp:Label runat="server" ID="lblTipoDeEmpresaTitulo" Text="Tipo De Empresa" CssClass="form_label" /><span
                                                        class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 10%">
                                                </td>
                                                <td>
                                                    <asp:RadioButtonList CssClass="form_radios" ID="rdTipoDeEmpresa" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Oficial" Value="1" Selected="True" />
                                                        <asp:ListItem Text="Privada" Value="2" />
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:Label runat="server" ID="lblClaseSocial" Text="Clase Social" CssClass="form_label" /><span
                                                        class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                                <td>
                                                    <asp:RadioButtonList CssClass="form_radios" ID="rdClaseDeSociedad" runat="server"
                                                        RepeatDirection="Vertical" AutoPostBack="true" OnSelectedIndexChanged="rdClaseDeSociedad_SelectedIndexChanged">
                                                        <asp:ListItem Text="Responsabilidad Ltda" Value="1" Selected="True" />
                                                        <asp:ListItem Text="Colectiva" Value="2" />
                                                        <asp:ListItem Text="An&#243;nima" Value="3" />
                                                        <asp:ListItem Text="En comandita Simple" Value="4" />
                                                        <asp:ListItem Text="En comandita por acciones" Value="5" />
                                                        <asp:ListItem Text="De hecho" Value="6" />
                                                        <asp:ListItem Text="De Econom&#237;a Mixta" Value="7" />
                                                        <asp:ListItem Text="Extranjera" Value="8" />
                                                        <asp:ListItem Text="Persona Natural" Value="9" />
                                                        <asp:ListItem Text="Unipersonal" Value="10" />
                                                        <asp:ListItem Text="MYPIME" Value="11" />
                                                        <asp:ListItem Text="Otra" Value="12" />
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:UpdatePanel ID="updSelectedItem" runat="server">
                                            <ContentTemplate>
                                                <asp:Label Visible="false" runat="server" ID="lblClaseDeSociedad2Titulo" Text="Clase De Sociedad "
                                                    CssClass="form_label" /><br />
                                                <asp:TextBox Visible="false" runat="server" ID="txtClaseDeSociedad2" CssClass="form_text"
                                                    MaxLength="20" />
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="rdClaseDeSociedad" EventName="SelectedIndexChanged" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblClaseDeActividadEconomicaRegistradaParaEfectosTributariosRutCiucTitulo"
                                            Text="Clase De Actividad Economica Registrada Para Efectos Tributarios Rut (ciuc)"
                                            CssClass="form_label" /><span class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtClaseDeActividadEconomicaRegistradaParaEfectosTributariosRutCiuc"
                                            CssClass="form_text" MaxLength="0" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqvClaseDeActividadEconomicaRegistradaParaEfectosTributariosRutCiuc"
                                            runat="server" CssClass="form_field_error_message" ErrorMessage="Requerido" Display="Dynamic"
                                            ControlToValidate="txtClaseDeActividadEconomicaRegistradaParaEfectosTributariosRutCiuc"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblNombreTitulo" Text="Nombre " CssClass="form_label" /><span
                                            class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtNombre" CssClass="form_text" MaxLength="0" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqvNombre" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNombre"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblCodigoTitulo" Text="C&#243;digo" CssClass="form_label" /><span
                                            class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtCodigo" CssClass="form_text" MaxLength="4" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqvCodigo" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCodigo"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RegularExpressionValidator ID="revCodigo" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtCodigo"
                                            ValidationExpression="^[0-9{4}]*$"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label CssClass="form_label" Text="Indique que porcentaje de aportes debe realizar los por siguientes conceptos"
                                            ID="lblIndiqueQuePorcentajeDeAportesDebeRealizarLosPorSiguientesConceptos" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblSubsidioFamiliarTitulo" Text="Subsidio familiar"
                                            CssClass="form_label" /><span class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtSubsidioFamiliar" CssClass="form_text" MaxLength="3" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqvSubsidioFamiliar" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSubsidioFamiliar"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblSenaTitulo" Text="Sena" CssClass="form_label" /><span
                                            class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtSena" CssClass="form_text" MaxLength="3" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqvSena" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSena"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblIcbfTitulo" Text="Icbf" CssClass="form_label" /><span
                                            class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtIcbf" CssClass="form_text" MaxLength="3" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqvIcbf" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtIcbf"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblEsapTitulo" Text="Esap" CssClass="form_label" /><span
                                            class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtEsap" CssClass="form_text" MaxLength="3" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqvEsap" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtEsap"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblInstitutosTecnicosTitulo" Text="Institutos Tecnicos"
                                            CssClass="form_label" /><span class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtInstitutosTecnicos" CssClass="form_text" MaxLength="3" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqvInstitutosTecnicos" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtInstitutosTecnicos"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblEsFilialDeOtraEmpresaYaAfiliadaALaCajaTitulo" Text="&#191;Es filial de otra empresa ya afiliada a la caja?"
                                            CssClass="form_label" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox CssClass="form_checkbox" ID="boolEsFilialDeOtraEmpresaYaAfiliadaALaCaja"
                                            runat="server" AutoPostBack="true" OnCheckedChanged="boolEsFilialDeOtraEmpresaYaAfiliadaALaCaja_CheckedChanged" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:UpdatePanel ID="updCualTitulo" runat="server">
                                            <ContentTemplate>
                                                <asp:Label Visible="false" runat="server" ID="lblCualTitulo" Text="&#191;Cual? " CssClass="form_label" /><br />
                                                <asp:TextBox Visible="false" runat="server" ID="txtCualTitulo" CssClass="form_text"
                                                    MaxLength="20" />
                                                <asp:RequiredFieldValidator ID="rqtxtCualTitulo" runat="server" Display="Dynamic"
                                                    CssClass="form_field_error_message" ErrorMessage="Requerido" ControlToValidate="txtCualTitulo"
                                                    Enabled="false"></asp:RequiredFieldValidator>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="boolEsFilialDeOtraEmpresaYaAfiliadaALaCaja"
                                                    EventName="CheckedChanged" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblLaCasaMatrizSeEncuentraUbicadaEnLaCiudadDeTitulo"
                                            Text="&#191;La casa matriz se encuentra ubicada en la ciudad de?" CssClass="form_label" /><span
                                                class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtLaCasaMatrizSeEncuentraUbicadaEnLaCiudadDe" CssClass="form_text"
                                            MaxLength="20" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqvLaCasaMatrizSeEncuentraUbicadaEnLaCiudadDe" runat="server"
                                            CssClass="form_field_error_message" ErrorMessage="Requerido" Display="Dynamic"
                                            ControlToValidate="txtLaCasaMatrizSeEncuentraUbicadaEnLaCiudadDe"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <br />
                                        <asp:Label CssClass="form_test_area" ID="lblSiEsSustitucionPatronalConUnaEmpresaAfiliadaACafamIndiqueLosSiguientesDatosDeLaEntidadASustituir"
                                            Text="Si es sustituci&#243;n patronal con una empresa afiliada a Cafam, indique los siguientes datos de la entidad a sustituir"
                                            runat="server" />
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblNit2Titulo" Text="Nit" CssClass="form_label" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtNit2" CssClass="form_text" MaxLength="13" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RegularExpressionValidator ID="revNit2" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNit2"
                                            ValidationExpression="^[\d]*$"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblNombreORazonSocial2Titulo" Text="Nombre O Razon Social"
                                            CssClass="form_label" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtNombreORazonSocial2" CssClass="form_text" MaxLength="20" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblEstuvoOEstaLaCompaniaAfiliadaAUnaCajaDeCompensacionFamiliarTitulo"
                                            Text="&#191;Estuvo o esta la compañia afiliada a una caja de compensaci&#243;n familiar? "
                                            CssClass="form_label" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox CssClass="form_checkbox" ID="boolEstuvoOEstaLaCompaniaAfiliadaAUnaCajaDeCompensacionFamiliar"
                                            runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblCual2Titulo" Text="&#191;Cual?" CssClass="form_label" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtCual2" CssClass="form_text" MaxLength="20" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblIndiqueElMotivoPorElCualSeDesafiliaDeEsaCajaTitulo"
                                            Text="Indique el motivo por el cual se desafilia de esa caja" CssClass="form_label" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtIndiqueElMotivoPorElCualSeDesafiliaDeEsaCaja"
                                            CssClass="form_text" MaxLength="40" />
                                        <br />
                                        <hr />
                                    </td>
                                </tr>
                            </table>
                        </asp:WizardStep>
                        <asp:WizardStep ID="wzOtrosDatosStep" runat="server" StepType="auto" Title="">
                            <table>
                                <tr>
                                    <td colspan="3" scope="row" style="background-color: Navy">
                                        <br />
                                        <center>
                                            <asp:Label ID="lblOtrosDatos" runat="server" Text="Otros Datos" CssClass="form_label_title"></asp:Label></center>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblNumeroTotalDeTrabajadoresTitulo" Text="Numero total de trabajadores"
                                            CssClass="form_label" /><span class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtNumeroTotalDeTrabajadores" CssClass="form_text"
                                            MaxLength="0" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqvNumeroTotalDeTrabajadores" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNumeroTotalDeTrabajadores"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RegularExpressionValidator ID="revNumeroTotalDeTrabajadores" runat="server"
                                            CssClass="form_field_error_message" ErrorMessage="Solo puede ingresar números"
                                            Display="Dynamic" ControlToValidate="txtNumeroTotalDeTrabajadores" ValidationExpression="^[\d]*$"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblValorDeLaUltimaNominaTitulo" Text="Valor de la ultima Nomina $"
                                            CssClass="form_label" /><span class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtValorDeLaUltimaNomina" CssClass="form_text" MaxLength="0" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqvValorDeLaUltimaNomina" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtValorDeLaUltimaNomina"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RegularExpressionValidator ID="revValorDeLaUltimaNomina" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtValorDeLaUltimaNomina"
                                            ValidationExpression="^[\d]*$"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblCorrespondienteAlMesDeTitulo" Text="Correspondiente al mes de "
                                            CssClass="form_label" /><span class="form_label">(&nbsp;<span style="color: red">*</span>&nbsp;)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtCorrespondienteAlMesDe" CssClass="form_text" MaxLength="0" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqvCorrespondienteAlMesDe" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCorrespondienteAlMesDe"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                            </table>
                        </asp:WizardStep>
                    </WizardSteps>
                </asp:Wizard>
            </td>
        </tr>
    </table>
</asp:Content>
