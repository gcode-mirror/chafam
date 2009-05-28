    <asp:ScriptManager ID="scriptMng" runat="server">
    </asp:ScriptManager>
     <table class="ms-formbody" style="width:100%" id="tblMain" runat="server">
        <tr>
        <tr>
            <td>
<asp:Wizard runat="server" ID="wzDatosDelTrabajador" Font-Names="verdana" CssClass="content-more"
   ForeColor="navy" Style="border: outset 1px black" OnNextButtonClick="OnNext"
   OnActiveStepChanged="OnActiveStepChanged" OnFinishButtonClick="OnFinish" ActiveStepIndex="0"
   DisplaySideBar="false">
<WizardSteps>
<asp:WizardStep ID="wzDatosDelTrabajadorStep" runat="server" StepType="auto" Title="">
    <TABLE>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNitTitulo" Text="Nit " CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNit" CssClass="form_text" MaxLength="13"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqNit" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNit" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqNit" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNit"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqNombreORazonSocial" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="Dummy3" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqNombreORazonSocial" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy3"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqCiudad" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="Dummy4" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqCiudad" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy4"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblCodigoCiudadTitulo" Text="Código Ciudad" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtCodigoCiudad" CssClass="form_text" MaxLength="3"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqCodigoCiudad" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCodigoCiudad" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqCodigoCiudad" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtCodigoCiudad"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqDireccion" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="Dummy6" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqDireccion" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy6"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTelefonoTitulo" Text="Teléfono 1" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTelefono" CssClass="form_text" MaxLength="10"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqTelefono" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTelefono" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqTelefono" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTelefono"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTelefonoTitulo" Text="Teléfono 2" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTelefono" CssClass="form_text" MaxLength="10"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqTelefono" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTelefono"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqAa" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy9"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblFaxTitulo" Text="Fax" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtFax" CssClass="form_text" MaxLength="10"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqFax" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtFax"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblCorreoElectronicoTitulo" Text="Correo Electrónico" (dd/mm/aaaa) CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Panel ID="pnldtCorreoElectronico" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqCorreoElectronico" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="pnldtCorreoElectronico" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqEsEntidadDocente" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="Dummy12" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqEsEntidadDocente" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy12"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqNombreGerenteORepresentanteLegal" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="Dummy13" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqNombreGerenteORepresentanteLegal" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy13"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqNombreJefeDePersonal" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="Dummy14" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqNombreJefeDePersonal" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy14"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNDeEscrituraConstitucionTitulo" Text="N° De Escritura Constitución" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNDeEscrituraConstitucion" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqNDeEscrituraConstitucion" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNDeEscrituraConstitucion" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqNDeEscrituraConstitucion" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNDeEscrituraConstitucion"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNNotariaTitulo" Text="N° Notaria" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNNotaria" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqNNotaria" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNNotaria" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqNNotaria" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNNotaria"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblFechaConstitucionTitulo" Text="Fecha Constitución" (dd/mm/aaaa) CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Panel ID="pnldtFechaConstitucion" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqFechaConstitucion" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="pnldtFechaConstitucion" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
    </TABLE>
</asp:WizardStep>
<asp:WizardStep ID="wzDatosEspecificosStep" runat="server" StepType="auto" Title="">
    <TABLE>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTipoDeEmpresaTitulo" Text="Tipo De Empresa " CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTipoDeEmpresa" CssClass="form_text" MaxLength="1"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqTipoDeEmpresa" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTipoDeEmpresa" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqTipoDeEmpresa" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTipoDeEmpresa"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblClaseDeSociedadTitulo" Text="Clase De Sociedad" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtClaseDeSociedad" CssClass="form_text" MaxLength="2"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqClaseDeSociedad" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtClaseDeSociedad" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqClaseDeSociedad" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtClaseDeSociedad"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqClaseDeSociedad" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy21"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqClaseDeActividadEconomicaRegistradaParaEfectosTributariosRutCiuc" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="Dummy22" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqClaseDeActividadEconomicaRegistradaParaEfectosTributariosRutCiuc" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy22"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqNombre" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="Dummy23" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqNombre" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy23"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblCodigoTitulo" Text="Código" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtCodigo" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqCodigo" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCodigo" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqCodigo" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtCodigo"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqIndiqueQuePorcentajeDeAportesDebeRealizarLosPorSiguientesConceptos" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy25"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSubsidioFamiliarTitulo" Text="Subsidio Familiar" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSubsidioFamiliar" CssClass="form_text" MaxLength="3"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqSubsidioFamiliar" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSubsidioFamiliar" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqSubsidioFamiliar" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSubsidioFamiliar"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSenaTitulo" Text="Sena" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSena" CssClass="form_text" MaxLength="3"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqSena" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSena" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqSena" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSena"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblIcbfTitulo" Text="Icbf" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtIcbf" CssClass="form_text" MaxLength="3"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqIcbf" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtIcbf" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqIcbf" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtIcbf"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblEsapTitulo" Text="Esap" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtEsap" CssClass="form_text" MaxLength="3"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqEsap" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtEsap" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqEsap" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtEsap"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblInstitutosTecnicosTitulo" Text="Institutos Técnicos" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtInstitutosTecnicos" CssClass="form_text" MaxLength="3"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqInstitutosTecnicos" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtInstitutosTecnicos" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqInstitutosTecnicos" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtInstitutosTecnicos"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqEsFilialDeOtraEmpresaYaAfiliadaALaCaja" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="Dummy31" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqEsFilialDeOtraEmpresaYaAfiliadaALaCaja" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy31"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqCual" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy32"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqLaCasaMatrizSeEncuentraUbicadaEnLaCiudadDe" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="Dummy33" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqLaCasaMatrizSeEncuentraUbicadaEnLaCiudadDe" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy33"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <!--0-->
        <tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNitTitulo" Text="Nit" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNit" CssClass="form_text" MaxLength="13"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqNit" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNit"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqNombreORazonSocial" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy36"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqEstuvoOEstaLaCompaniaAfiliadaAUnaCajaDeCompensacionFamiliar" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="Dummy37" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqEstuvoOEstaLaCompaniaAfiliadaAUnaCajaDeCompensacionFamiliar" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy37"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqCual" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy38"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqIndiqueElMotivoPorElCualSeDesafiliaDeEsaCaja" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy39"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
    </TABLE>
</asp:WizardStep>
<asp:WizardStep ID="wzOtrosDatosStep" runat="server" StepType="auto" Title="">
    <TABLE>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNumeroTotalDeTrabajadoresTitulo" Text="Número Total De Trabajadores" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNumeroTotalDeTrabajadores" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqNumeroTotalDeTrabajadores" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNumeroTotalDeTrabajadores" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqNumeroTotalDeTrabajadores" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNumeroTotalDeTrabajadores"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblValorDeLaUltimaNominaTitulo" Text="Valor De La Última Nómina $" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtValorDeLaUltimaNomina" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqValorDeLaUltimaNomina" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtValorDeLaUltimaNomina" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqValorDeLaUltimaNomina" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtValorDeLaUltimaNomina"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqCorrespondienteAlMesDe" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="Dummy43" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqCorrespondienteAlMesDe" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy43"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
    </TABLE>
</asp:WizardStep>
</WizardSteps>
</asp:Wizard>
            </td>
        </tr>
     </table>

