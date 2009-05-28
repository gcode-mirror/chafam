    <asp:ScriptManager ID="scriptMng" runat="server">
    </asp:ScriptManager>
     <table class="ms-formbody" style="width:100%" id="tblMain" runat="server">
        <tr>
        <tr>
            <td>
<asp:Wizard runat="server" ID="wzDatosDeLaEmpresa" Font-Names="verdana" CssClass="content-more"
   ForeColor="navy" Style="border: outset 1px black" OnNextButtonClick="OnNext"
   OnActiveStepChanged="OnActiveStepChanged" OnFinishButtonClick="OnFinish" ActiveStepIndex="0"
   DisplaySideBar="false">
<WizardSteps>
<asp:WizardStep ID="wzDatosDeLaEmpresaStep" runat="server" StepType="auto" Title="">
    <TABLE>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNitTitulo" Text="Nit" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
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
                <asp:Label runat="server" ID="lblSubNitTitulo" Text="Sub Nit" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSubNit" CssClass="form_text" MaxLength="2"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqSubNit" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSubNit" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqSubNit" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSubNit"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNombreORazonSocialTitulo" Text="Nombre O Razón Social" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNombreORazonSocial" CssClass="form_text" MaxLength="34"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqNombreORazonSocial" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNombreORazonSocial" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
    </TABLE>
</asp:WizardStep>
<asp:WizardStep ID="wzDatosDelTrabajadorStep" runat="server" StepType="auto" Title="">
    <TABLE>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTipoDeIdentificacionTitulo" Text="Tipo De Identificación" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTipoDeIdentificacion" CssClass="form_text" MaxLength="1"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqTipoDeIdentificacion" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTipoDeIdentificacion" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqTipoDeIdentificacion" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTipoDeIdentificacion"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNumeroDeIdentificacionTitulo" Text="Número De Identificación" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNumeroDeIdentificacion" CssClass="form_text" MaxLength="13"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqNumeroDeIdentificacion" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqNumeroDeIdentificacion" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSucursalTitulo" Text="Sucursal" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSucursal" CssClass="form_text" MaxLength="5"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqSucursal" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSucursal" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqSucursal" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSucursal"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblPrimerApellidoTitulo" Text="Primer Apellido" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtPrimerApellido" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqPrimerApellido" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerApellido" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
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
        <tr>
            <td>
                <asp:Label runat="server" ID="lblPrimerNombreTitulo" Text="Primer Nombre" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtPrimerNombre" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqPrimerNombre" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtPrimerNombre" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
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
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblEstadoCivilTitulo" Text="Estado Civil" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtEstadoCivil" CssClass="form_text" MaxLength="1"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqEstadoCivil" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtEstadoCivil" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqEstadoCivil" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtEstadoCivil"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblFechaDeNacimientoTitulo" Text="Fecha De Nacimiento" (dd/mm/aaaa) CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Panel ID="pnldtFechaDeNacimiento" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqFechaDeNacimiento" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="pnldtFechaDeNacimiento" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSexoTitulo" Text="Sexo" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSexo" CssClass="form_text" MaxLength="1"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqSexo" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSexo" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqSexo" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSexo"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblFechaDeIngresoALaEmpresaTitulo" Text="Fecha De Ingreso A La Empresa" (dd/mm/aaaa) CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Panel ID="pnldtFechaDeIngresoALaEmpresa" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqFechaDeIngresoALaEmpresa" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="pnldtFechaDeIngresoALaEmpresa" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblCargoTitulo" Text="Cargo" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtCargo" CssClass="form_text" MaxLength="11"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqCargo" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCargo" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblHorasMesTitulo" Text="Horas Mes" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtHorasMes" CssClass="form_text" MaxLength="3"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqHorasMes" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtHorasMes" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqHorasMes" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtHorasMes"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSueldoBasicoTitulo" Text="Sueldo Básico" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSueldoBasico" CssClass="form_text" MaxLength="9"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqSueldoBasico" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtSueldoBasico" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqSueldoBasico" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSueldoBasico"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblComisionEnVentasTitulo" Text="Comisión En Ventas" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtComisionEnVentas" CssClass="form_text" MaxLength="9"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqComisionEnVentas" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtComisionEnVentas" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqComisionEnVentas" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtComisionEnVentas"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblCiudadTitulo" Text="Ciudad" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtCiudad" CssClass="form_text" MaxLength="11"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqCiudad" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtCiudad" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblDomicilioTitulo" Text="Domicilio" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtDomicilio" CssClass="form_text" MaxLength="24"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqDomicilio" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtDomicilio" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblEmailTitulo" Text="E-mail" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form_text" MaxLength="23"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqEmail" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtEmail" ValidationGroup="grp1"></asp:RequiredFieldValidator>
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
                <asp:TextBox runat="server" ID="txtTelefono" CssClass="form_text" MaxLength="14"/>
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
                <asp:Label runat="server" ID="lblTelefonoTitulo" Text="Teléfono 2" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTelefono" CssClass="form_text" MaxLength="14"/>
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
                <asp:Label runat="server" ID="lblEsSocioOPropietarioDeLaEmpresaTitulo" Text="¿es Socio O Propietario De La Empresa?" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
               <asp:CheckBox CssClass="form_checkbox" ID="boolEsSocioOPropietarioDeLaEmpresa" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqEsSocioOPropietarioDeLaEmpresa" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="boolEsSocioOPropietarioDeLaEmpresa" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblEsTrabajadorDelSectorAgrarioTitulo" Text="¿es Trabajador Del Sector Agrario?" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
               <asp:CheckBox CssClass="form_checkbox" ID="boolEsTrabajadorDelSectorAgrario" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqEsTrabajadorDelSectorAgrario" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="boolEsTrabajadorDelSectorAgrario" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblLaboraEnOtraEmpresaTitulo" Text="¿labora En Otra Empresa?" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
               <asp:CheckBox CssClass="form_checkbox" ID="boolLaboraEnOtraEmpresa" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqLaboraEnOtraEmpresa" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="boolLaboraEnOtraEmpresa" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
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
                <asp:Label runat="server" ID="lblSubNitTitulo" Text="Sub Nit" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSubNit" CssClass="form_text" MaxLength="2"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqSubNit" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSubNit"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNombreORazonSocialTitulo" Text="Nombre O Razón Social" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNombreORazonSocial" CssClass="form_text" MaxLength="29"/>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblHorasMesTitulo" Text="Horas Mes" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtHorasMes" CssClass="form_text" MaxLength="3"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqHorasMes" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtHorasMes"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSueldoBasicoTitulo" Text="Sueldo Básico" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSueldoBasico" CssClass="form_text" MaxLength="9"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqSueldoBasico" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSueldoBasico"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblComisionEnVentasTitulo" Text="Comisión En Ventas" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtComisionEnVentas" CssClass="form_text" MaxLength="9"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqComisionEnVentas" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtComisionEnVentas"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
    </TABLE>
</asp:WizardStep>
<asp:WizardStep ID="wzDatosDelConyugeOCompaneraoStep" runat="server" StepType="auto" Title="">
    <TABLE>
        <!--Si elige si-->
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblDeseaIngresarUnConyugeTitulo" Text="Desea Ingresar Un Cónyuge" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
               <asp:CheckBox CssClass="form_checkbox" ID="boolDeseaIngresarUnConyuge" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqDeseaIngresarUnConyuge" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="boolDeseaIngresarUnConyuge" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTipoDeIdentificacionTitulo" Text="Tipo De Identificación" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTipoDeIdentificacion" CssClass="form_text" MaxLength="1"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqTipoDeIdentificacion" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTipoDeIdentificacion"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNumeroDeIdentificacionTitulo" Text="Número De Identificación" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNumeroDeIdentificacion" CssClass="form_text" MaxLength="13"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqNumeroDeIdentificacion" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
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
        <tr>
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
                <asp:RegularExpressionValidator ID="reqTipoDeRelacion" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTipoDeRelacion"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblPrimerApellidoTitulo" Text="Primer Apellido" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtPrimerApellido" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
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
        <tr>
            <td>
                <asp:Label runat="server" ID="lblPrimerNombreTitulo" Text="Primer Nombre" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtPrimerNombre" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
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
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblFechaDeNacimientoTitulo" Text="Fecha De Nacimiento" (dd/mm/aaaa) CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Panel ID="pnldtFechaDeNacimiento" runat="server"/>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblDomicilioTitulo" Text="Domicilio" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtDomicilio" CssClass="form_text" MaxLength="24"/>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblCiudadTitulo" Text="Ciudad" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtCiudad" CssClass="form_text" MaxLength="11"/>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTelefonoTitulo" Text="Teléfono" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTelefono" CssClass="form_text" MaxLength="14"/>
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
                <asp:RegularExpressionValidator ID="reqOcupacion" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtOcupacion"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
               <asp:Label CssClass="form_label" ID="lblSiElConyugeOCompaneraoEsEmpleadoDiligencie" runat="server"/>
            </td>
        </tr>
        <tr>
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
                <asp:Label runat="server" ID="lblNombreORazonSocialDeLaEmpresaDondeTrabajaTitulo" Text="Nombre O Razón Social De La Empresa Donde Trabaja" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNombreORazonSocialDeLaEmpresaDondeTrabaja" CssClass="form_text" MaxLength="27"/>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSueldoBasicoTitulo" Text="Sueldo Básico" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSueldoBasico" CssClass="form_text" MaxLength="9"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqSueldoBasico" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSueldoBasico"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
    </TABLE>
</asp:WizardStep>
<asp:WizardStep ID="wzDatosDelPadreOMadreBiologicaoDelHijoAInscribirStep" runat="server" StepType="auto" Title="">
    <TABLE>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTipoDeIdentificacionTitulo" Text="Tipo De Identificación" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTipoDeIdentificacion" CssClass="form_text" MaxLength="1"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqTipoDeIdentificacion" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTipoDeIdentificacion"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNumeroDeIdentificacionTitulo" Text="Numero De Identificación" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNumeroDeIdentificacion" CssClass="form_text" MaxLength="13"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqNumeroDeIdentificacion" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
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
        <tr>
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
                <asp:RegularExpressionValidator ID="reqPadreOMadreBiologica" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtPadreOMadreBiologica"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblPrimerApellidoTitulo" Text="Primer Apellido" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtPrimerApellido" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
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
        <tr>
            <td>
                <asp:Label runat="server" ID="lblPrimerNombreTitulo" Text="Primer Nombre" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtPrimerNombre" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
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
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblFechaDeNacimientoTitulo" Text="Fecha De Nacimiento" (dd/mm/aaaa) CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Panel ID="pnldtFechaDeNacimiento" runat="server"/>
            </td>
        </tr>
        <tr>
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
                <asp:RegularExpressionValidator ID="reqOcupacion" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtOcupacion"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblDomicilioTitulo" Text="Domicilio" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtDomicilio" CssClass="form_text" MaxLength="24"/>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblCiudadTitulo" Text="Ciudad" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtCiudad" CssClass="form_text" MaxLength="11"/>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTelefonoTitulo" Text="Teléfono" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTelefono" CssClass="form_text" MaxLength="14"/>
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
               <asp:Label CssClass="form_label" ID="lblSiElPadreOMadreBiologicaEsEmpleadoDiligencie" runat="server"/>
            </td>
        </tr>
        <tr>
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
        <tr>
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
                <asp:Label runat="server" ID="lblNombreORazonSocialDeLaEmpresaDondeTrabajaTitulo" Text="Nombre O Razón Social De La Empresa Donde Trabaja" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNombreORazonSocialDeLaEmpresaDondeTrabaja" CssClass="form_text" MaxLength="27"/>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSueldoBasicoTitulo" Text="Sueldo Básico" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSueldoBasico" CssClass="form_text" MaxLength="9"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqSueldoBasico" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSueldoBasico"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
    </TABLE>
</asp:WizardStep>
<asp:WizardStep ID="wzPersonasACargoStep" runat="server" StepType="auto" Title="">
    <TABLE>
        <tr>
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
                <asp:RegularExpressionValidator ID="reqCantidadDePersonasQueVaAInscribir" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtCantidadDePersonasQueVaAInscribir"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
       <tr>
           <td>
               <asp:Repeater id="rptRepeater" runat="server">
                   <HeaderTemplate>
                       <table border="1" width="100%">
                   </HeaderTemplate>
                   <ItemTemplate>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTipoDeIdentificacionTitulo" Text="Tipo De Identificación" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTipoDeIdentificacion" CssClass="form_text" MaxLength="1"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqTipoDeIdentificacion" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTipoDeIdentificacion"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblNumeroDeIdentificacionTitulo" Text="Numero De Identificación" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtNumeroDeIdentificacion" CssClass="form_text" MaxLength="13"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqNumeroDeIdentificacion" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacion"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblTipoDeIdentificacionDelPadreAsociadoTitulo" Text="Tipo De Identificación Del Padre Asociado" CssClass="form_label"/><span class="form_label">(&nbsp;<span style="color:red">*</span>&nbsp;)</span>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtTipoDeIdentificacionDelPadreAsociado" CssClass="form_text" MaxLength="1"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqTipoDeIdentificacionDelPadreAsociado" runat="server" CssClass="form_field_error_message"
                ErrorMessage="Requerido" Display="Dynamic" ControlToValidate="txtTipoDeIdentificacionDelPadreAsociado" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqTipoDeIdentificacionDelPadreAsociado" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtTipoDeIdentificacionDelPadreAsociado"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
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
                <asp:RegularExpressionValidator ID="reqNumeroDeIdentificacionDelPadreAsociado" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtNumeroDeIdentificacionDelPadreAsociado"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblSexoTitulo" Text="Sexo" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtSexo" CssClass="form_text" MaxLength="1"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="reqSexo" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtSexo"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblFechaDeNacimientoTitulo" Text="Fecha De Nacimiento" (dd/mm/aaaa) CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Panel ID="pnldtFechaDeNacimiento" runat="server"/>
            </td>
        </tr>
        <tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblPrimerApellidoTitulo" Text="Primer Apellido" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtPrimerApellido" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
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
        <tr>
            <td>
                <asp:Label runat="server" ID="lblPrimerNombreTitulo" Text="Primer Nombre" CssClass="form_label"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" ID="txtPrimerNombre" CssClass="form_text" MaxLength="20"/>
            </td>
        </tr>
        <tr>
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
        <tr>
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
                <asp:RegularExpressionValidator ID="reqParentesco" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtParentesco"
                    ValidationExpression="^[\d]*$" ValidationGroup="grp1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
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
    </TABLE>
</asp:WizardStep>
</WizardSteps>
</asp:Wizard>
            </td>
        </tr>
     </table>

