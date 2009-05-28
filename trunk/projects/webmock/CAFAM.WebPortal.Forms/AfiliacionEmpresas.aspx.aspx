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
                <asp:Label runat="server" ID="lblNitTitulo" Text="NIT " CssClass="form_label"/>
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
                <asp:RequiredFieldValidator ID="reqNombreORaznSocial" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="Dummy3" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqNombreORaznSocial" runat="server" CssClass="form_field_error_message"
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
                <asp:Label runat="server" ID="lblCdigoCiudadTitulo" Text="C�digo ciudad" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtCdigoCiudad" CssClass="form_text" MaxLength="3"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqCdigoCiudad" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCdigoCiudad" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqCdigoCiudad" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtCdigoCiudad"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqDireccin" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="Dummy6" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqDireccin" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy6"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTelfonoTitulo" Text="Tel�fono 1" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTelfono" CssClass="form_text" MaxLength="10"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqTelfono" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTelfono" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqTelfono" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTelfono"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTelfonoTitulo" Text="Tel�fono 2" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTelfono" CssClass="form_text" MaxLength="10"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqTelfono" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTelfono"
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
                <asp:Label runat="server" ID="lblCorreoElectrnicoTitulo" Text="Correo Electr�nico" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Panel ID="dtCorreoElectrnico" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqCorreoElectrnico" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="dtCorreoElectrnico" ValidationGroup="grp1"></asp:RequiredFieldValidator>
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
                <asp:Label runat="server" ID="lblNDeEscrituraConstitucinTitulo" Text="N� de Escritura Constituci�n" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNDeEscrituraConstitucin" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqNDeEscrituraConstitucin" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNDeEscrituraConstitucin" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqNDeEscrituraConstitucin" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNDeEscrituraConstitucin"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNNotariaTitulo" Text="N� Notaria" CssClass="form_label"/>
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
                <asp:Label runat="server" ID="lblFechaConstitucinTitulo" Text="Fecha Constituci�n" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Panel ID="dtFechaConstitucin" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqFechaConstitucin" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="dtFechaConstitucin" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
    </TABLE>
</asp:WizardStep>
<asp:WizardStep ID="wzDatosEspecficosStep" runat="server" StepType="auto" Title="">
    <TABLE>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTipoDeEmpresaTitulo" Text="Tipo de empresa " CssClass="form_label"/>
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
                <asp:Label runat="server" ID="lblClaseDeSociedadTitulo" Text="Clase de sociedad" CssClass="form_label"/>
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
                <asp:RequiredFieldValidator ID="reqClaseDeActividadEconmicaRegistradaParaEfectosTributariosRutCiuc" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="Dummy22" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqClaseDeActividadEconmicaRegistradaParaEfectosTributariosRutCiuc" runat="server" CssClass="form_field_error_message"
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
                <asp:Label runat="server" ID="lblCdigoTitulo" Text="C�digo" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtCdigo" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqCdigo" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCdigo" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqCdigo" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtCdigo"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqIndiqueQuPorcentajeDeAportesDebeRealizarLosPorSiguientesConceptos" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy25"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSubsidioFamiliarTitulo" Text="Subsidio Familiar" CssClass="form_label"/>
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
                <asp:Label runat="server" ID="lblSenaTitulo" Text="SENA" CssClass="form_label"/>
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
                <asp:Label runat="server" ID="lblIcbfTitulo" Text="ICBF" CssClass="form_label"/>
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
                <asp:Label runat="server" ID="lblEsapTitulo" Text="ESAP" CssClass="form_label"/>
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
                <asp:Label runat="server" ID="lblInstitutosTcnicosTitulo" Text="Institutos T�cnicos" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtInstitutosTcnicos" CssClass="form_text" MaxLength="3"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqInstitutosTcnicos" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtInstitutosTcnicos" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqInstitutosTcnicos" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtInstitutosTcnicos"
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
            <asp:RegularExpressionValidator ID="reqCul" runat="server" CssClass="form_field_error_message"
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
                <asp:Label runat="server" ID="lblNitTitulo" Text="NIT" CssClass="form_label"/>
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
            <asp:RegularExpressionValidator ID="reqNombreORaznSocial" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy36"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqEstuvoOEstLaCompaaAfiliadaAUnaCajaDeCompensacinFamiliar" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="Dummy37" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqEstuvoOEstLaCompaaAfiliadaAUnaCajaDeCompensacinFamiliar" runat="server" CssClass="form_field_error_message"
                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="Dummy37"
                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
            <asp:RegularExpressionValidator ID="reqCul" runat="server" CssClass="form_field_error_message"
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
                <asp:Label runat="server" ID="lblNmeroTotalDeTrabajadoresTitulo" Text="N�mero total de trabajadores" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNmeroTotalDeTrabajadores" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqNmeroTotalDeTrabajadores" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNmeroTotalDeTrabajadores" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqNmeroTotalDeTrabajadores" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNmeroTotalDeTrabajadores"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblValorDeLaLtimaNminaTitulo" Text="Valor de la �ltima n�mina $" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtValorDeLaLtimaNmina" CssClass="form_text" MaxLength="0"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqValorDeLaLtimaNmina" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtValorDeLaLtimaNmina" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqValorDeLaLtimaNmina" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtValorDeLaLtimaNmina"
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

