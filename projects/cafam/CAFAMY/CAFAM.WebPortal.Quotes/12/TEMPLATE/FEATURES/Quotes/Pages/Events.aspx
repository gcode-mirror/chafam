<%@ Assembly Name="CAFAM.WebPortal.User, Version=1.0.0.0, Culture=neutral, PublicKeyToken=a01116ae02f25a36" %>
<%@ Page Language="C#" Inherits="CAFAM.WebPortal.User._Default" Title="Hello World Page" MasterPageFile="~masterurl/default.master"%>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server" ID="MainContent">
    <div>
        <asp:Label ID="lblError" runat="server" Visible="false" CssClass="form_field_error_message" ForeColor="Red"></asp:Label>       
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblDestino" runat="server" Text="Destino"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlDestino" runat="server"></asp:DropDownList>
                </td>
            </tr>
        </table>
        <table id="tableParameters" runat="server" visible="false">
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblLugarDelEvento" runat="server" Text="Lugar del Evento"></asp:Label>
                </td>
            </tr>   
            <tr> 
                <td colspan="2">
                    <asp:DropDownList ID="ddlLugarDelEvento" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCantidadPersonasMin" runat="server" Text="Cantidad de personas minimo"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblCantidadPersonasMax" runat="server" Text="Cantidad de personas máximo" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox id="txtCantidadPersonasMin" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox id="txtCantidadPersonasMax" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RegularExpressionValidator ID="regExpCantidadPersonasMin" runat="server" Display="Dynamic" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" ControlToValidate="txtCantidadPersonasMin"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpCotizador"></asp:RegularExpressionValidator>               
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="regExpCantidadPersonasMax" runat="server" Display="Dynamic" CssClass="form_field_error_message"
                    ErrorMessage="Solo puede ingresar números" ControlToValidate="lblCantidadPersonasMax"
                    ValidationExpression="^[\d]*$" ValidationGroup="grpCotizador"></asp:RegularExpressionValidator>                              
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label runat="server" ID="lblPeopleQuantityError" ForeColor="Red" Text="La cantidad de personas es inferior ó supera el máximo establecido para el lugar del evento"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table id="tableMelgar" runat="server" visible="false">
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lblCantidadMelgar" runat="server" Text="Cantidad"></asp:Label>
                            </td>
                        </tr>    
                        <tr>
                            <td colspan="2">
                                <asp:TextBox ID="txtCantidadMelgar" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:RegularExpressionValidator ID="regExpCantidadMelgar" runat="server" Display="Dynamic" CssClass="form_field_error_message"
                                ErrorMessage="Solo puede ingresar números" ControlToValidate="txtCantidadMelgar"
                                ValidationExpression="^[\d]*$" ValidationGroup="grpCotizador"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="reqCantidadMelgar" runat="server" Display="Dynamic" ValidationGroup="grpCotizador"
                                ErrorMessage="El Campo es Requerido" ControlToValidate="txtCantidadMelgar"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblPlanMelgar" runat="server" Text="Plan"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblAcomodacionMelgar" runat="server" Text="Acomodacion"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:DropDownList ID="ddlPlanMelgar" runat="server"></asp:DropDownList>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlAcomodacionMelgar" runat="server"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblCantidadDiasMelgar" runat="server" Text="Cantidad de Días"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblCantidadNochesMelgar" runat="server" Text="Cantidad de Noches"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtCantidadDiasMelgar" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCantidadNochesMelgar" runat="server" ReadOnly="true"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RegularExpressionValidator ID="regExpCantidadDiasMelgar" runat="server" Display="Dynamic" CssClass="form_field_error_message"
                                ErrorMessage="Solo puede ingresar números" ControlToValidate="txtCantidadDiasMelgar"
                                ValidationExpression="^[\d]*$" ValidationGroup="grpCotizador"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="reqCantidadDiasMelgar" runat="server" Display="Dynamic" ValidationGroup="grpCotizador"
                                ErrorMessage="El Campo es Requerido" ControlToValidate="txtCantidadDiasMelgar"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                    <table id="tableBogota" runat"server" visible="false">
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lblCantidadBogota" runat="server" Text="Cantidad"></asp:Label>
                            </td>
                        </tr>    
                        <tr>
                            <td colspan="2">
                                <asp:TextBox ID="txtCantidadBogota" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:RegularExpressionValidator ID="regExpCantidadBogota" runat="server" Display="Dynamic" CssClass="form_field_error_message"
                                ErrorMessage="Solo puede ingresar números" ControlToValidate="txtCantidadBogota"
                                ValidationExpression="^[\d]*$" ValidationGroup="grpCotizador"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="reqCantidadBogota" runat="server" Display="Dynamic" ValidationGroup="grpCotizador"
                                ErrorMessage="El Campo es Requerido" ControlToValidate="txtCantidadBogota"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblTipoPlanBogota" runat="server" Text="Tipo plan"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblPlanBogota" runat="server" Text="Plan"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:DropDownList ID="ddlTipoPlanBogota" runat="server"></asp:DropDownList>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlPlanBogota" runat="server"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lblCantidadDiasBogota" runat="server" Text="Cantidad de Días"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:TextBox ID="txtCantidadDiasBogota" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:RegularExpressionValidator ID="regExpCantidadDiasBogota" runat="server" Display="Dynamic" CssClass="form_field_error_message"
                                ErrorMessage="Solo puede ingresar números" ControlToValidate="txtCantidadDiasBogota"
                                ValidationExpression="^[\d]*$" ValidationGroup="grpCotizador"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="reqCantidadDiasBogota" runat="server" Display="Dynamic" ValidationGroup="grpCotizador"
                                ErrorMessage="El Campo es Requerido" ControlToValidate="txtCantidadDiasBogota"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblFechaDesde" runat="server" Text="Fecha Desde"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblFechaHasta" runat="server" Text="Fecha Hasta"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Control de Fecha
                </td>

                <td>
                    Control de Fecha
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    Empresa solicitante
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="lblEmpresa" runat="server" Text="Empresa"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblPersonaQueSolicita" runat="server" Text="Persona que solicita" ></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtEmpresa" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtPersonaQueSolicita" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RequiredFieldValidator ID="reqEmpresa" runat="server" Display="Dynamic" ValidationGroup="grpCotizador"
                                ErrorMessage="El Campo es Requerido" ControlToValidate="txtEmpresa"></asp:RequiredFieldValidator>                           
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="reqPersonaQueSolicita" runat="server" Display="Dynamic" ValidationGroup="grpCotizador"
                                ErrorMessage="El Campo es Requerido" ControlToValidate="txtPersonaQueSolicita"></asp:RequiredFieldValidator>                                                       
                            </td>
                        </tr>                       
                        <tr>
                            <td>
                                <asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label>                               
                            </td>
                            <td>
                                <asp:Label ID="lblCorreoElectronico" runat="server" Text="Correo Electrónico"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Control de Telefono
                            </td>
                            <td>
                                <asp:TextBox ID="txtCorreoElectronico" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="reqCorreoElectronico" runat="server" Display="Dynamic" ValidationGroup="grpCotizador"
                                ErrorMessage="El Campo es Requerido" ControlToValidate="txtCorreoElectronico"></asp:RequiredFieldValidator>                                                       
                                <asp:RegularExpressionValidator ID="regExpCorreoElectronico" runat="server" CssClass="form_field_error_message"
                                ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="txtCorreoElectronico"
                                ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                                ValidationGroup="grpCotizador"></asp:RegularExpressionValidator>
                            </td>
                        </tr> 
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblAfiliadoCafam" runat="server" Text="¿Es Afiliado a Cafam?"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:CheckBox ID="chkAfiliadoCafam" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblContacto" runat="server" Text="¿Desea que se contacten con Ud. para recibir más información?"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:CheckBox ID="chkContacto" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnCotizar" runat="server" Text="Cotizar" />
                </td>
            </tr>
        </table>
    </div>

</asp:Content>
