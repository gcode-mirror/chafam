<%@ Assembly Name="CAFAM.WebPortal.User, Version=1.0.0.0, Culture=neutral, PublicKeyToken=a01116ae02f25a36" %>
<%@ Page Language="C#" Inherits="CAFAM.WebPortal.User.UserList" Title="Lista de Usuarios" MasterPageFile="~masterurl/default.master"%>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>


<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server" ID="MainContent">
    <link rel="Stylesheet" href="~/_layouts/StyleSheet.css" type="text/css" />
    <script type='text/javascript'>
        _spOriginalFormAction = document.forms[0].action;
        _spSuppressFormOnSubmitWrapper = true;
    </script>
    <asp:ScriptManager ID=scrpMng runat=server />
    <div style="font-size:large; font-weight:bold" class="ms-formdescription">
        Listado de Usuarios
    </div> 
    <div>
        <asp:Label ID="lblError" runat="server" Visible="false" CssClass="ms-form_field_error_message" ForeColor="Red"></asp:Label>
    </div>  
    <div style="text-align:left">
        <table class="ms-formbody" style=" width:auto">
            <tr class="ms-formdescription" >
                <td class="ms-formdescription" style="width:50%">                    
                    <asp:Label CssClass="form_label" runat="server" ID="lblPrimerNombre" Text="Primer Nombre"></asp:Label>
                    <asp:TextBox CssClass="form_text" ID="txtUserNameSearch" runat="server" MaxLength="100" Width="100%" ></asp:TextBox>
                </td>
                <td class="ms-formdescription" style="width:50%">                    
                    <asp:Label CssClass="form_label" runat="server" ID="lblPrimerApellido" Text="Primer Apellido"></asp:Label>
                    <asp:TextBox CssClass="form_text" ID="txtUserSurenameSearch" runat="server" MaxLength="100" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr class="ms-formdescription">
                <td class="ms-formdescription">                    
                    <asp:Label CssClass="form_label" runat="server" ID="lblTipoDeIdentificacion" Text="Tipo de Identificación"></asp:Label>
                    <asp:DropDownList ID="ddlIdType" runat="server" Width="100%" ></asp:DropDownList>
                    <br />
                </td>
                 <td class="ms-formdescription">                    
                    <asp:Label CssClass="form_label" runat="server" ID="Label1" Text="Numero de Identificación"></asp:Label>
                    <asp:TextBox CssClass="form_text" ID="txtIdNumSearch" runat="server" MaxLength="14" Width="100%"></asp:TextBox>
                    <asp:RegularExpressionValidator CssClass="form_field_error_message" ID="regExIdNum" runat="server" ErrorMessage="Este campo debe ser un número" ControlToValidate="txtIdNumSearch" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                </td>
                
            </tr>
            
           
            <tr class="ms-formdescription">
                <td class="ms-formdescription">                    
                    <asp:Label CssClass="form_label" runat="server" ID="lblAudiencia" Text="Audiencia"></asp:Label>
                    <asp:TextBox CssClass="form_text" ID="txtAudienceSearch" runat="server" MaxLength="100" Width="100%"></asp:TextBox>
                    <br />
                </td>
                <td class="ms-formdescription">                    
                    <asp:Label CssClass="form_label" runat="server" ID="lblAge" Text="Edad"></asp:Label>
                    <asp:TextBox CssClass="form_text" ID="txtAgeSearch" runat="server" MaxLength="3" Width="100%"></asp:TextBox>
                    <asp:RegularExpressionValidator CssClass="form_field_error_message" ID="regExAgeVal" runat="server" ErrorMessage="Este campo debe ser un numero" ControlToValidate="txtAgeSearch" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                </td>
                
            </tr>
            
            <tr class="ms-formdescription">
                <td class="ms-formdescription">
                    <asp:Label CssClass="form_label" runat="server" ID="lblUserName" Text="Nombre de Usuario"></asp:Label>
                    <asp:TextBox CssClass="form_text" ID="txtAccountName" runat="server" MaxLength="100" Width="100%"></asp:TextBox>
                    <br />
                </td>
                <td class="ms-formdescription">                    
                    <asp:Label CssClass="form_label" runat="server" ID="lblNIT" Text="Nit"></asp:Label>
                    <asp:TextBox CssClass="form_text" ID="txtNitSearch" runat="server" MaxLength="14" Width="100%"></asp:TextBox>
                    <asp:RegularExpressionValidator CssClass="form_field_error_message" ID="regExNitVal" runat="server" ErrorMessage="Este campo debe ser un número" ControlToValidate="txtNitSearch" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                </td>
            </tr>
                          
            <tr class="ms-formdescription">
                <td class="ms-formdescription">
                    <asp:Label CssClass="form_label" runat="server" ID="lblSubNit" Text="SubNit"></asp:Label>
                    <asp:TextBox CssClass="form_text" ID="txtSubNitSearch" runat="server" MaxLength="14" Width="100%"></asp:TextBox>
                    <asp:RegularExpressionValidator CssClass="form_field_error_message" ID="regExSubNitVal" runat="server" ErrorMessage="Este campo debe ser un número" ControlToValidate="txtSubNitSearch" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="ms-formdescription">                    
                    <asp:Label CssClass="form_label" runat="server" ID="lblNombreDeEmpresa" Text="Nombre de Empresa"></asp:Label>
                    <asp:TextBox CssClass="form_text" ID="txtCompanySearch" runat="server" MaxLength="100" Width="100%"></asp:TextBox>
                    <br />
                </td>
            </tr>
            
            <tr class="ms-formdescription">
                <td class="ms-formdescription">                    
                    <asp:Label CssClass="form_label" runat="server" ID="lblTipoDeUsuario" Text="Tipo de Usuario"></asp:Label>
                    <asp:DropDownList ID="ddlUserType" runat="server" Width="100%">
                    <asp:ListItem Value="No_Afiliado">No Afiliado</asp:ListItem>
                    <asp:ListItem Value="Afiliado">Afiliado</asp:ListItem>
                    <asp:ListItem Value="Empresa">Empresa</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="ms-formdescription">                    
                    <asp:Label CssClass="form_label" runat="server" ID="lblFechaDeCreacion" Text="Fecha de Creación"></asp:Label>
                    <asp:Panel ID="pnlCreationDateSearch" runat="server" Width="100%"></asp:Panel>              
                </td>
            </tr>
            <tr class="ms-formdescription">
                <td class="ms-formdescription" align="center"  colspan="2">
                    <asp:Button ID="btnUserSearchButton"  runat="server" Text="Buscar"/>
                </td>
            </tr>
         </table>
         <br />
         <asp:GridView ID="grUserdList" CssClass="ms-formbody" Width="100%" runat="server" Visible="true" AutoGenerateColumns="false" EmptyDataRowStyle-CssClass="ms-formdescription" 
         EmptyDataRowStyle-Font-Size="Small" EmptyDataRowStyle-HorizontalAlign="Center" EmptyDataRowStyle-ForeColor="Red" EmptyDataText="No hay resultados para la busqueda que desea efectuar" AllowPaging="true">          
            <HeaderStyle CssClass="ms-formdescription" />
            <RowStyle CssClass="ms-formdescription" />
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HyperLink ID="lnkEdit" runat="server" NavigateUrl='<%# this.GenerateModifyURL(Eval("UserName").ToString(), Eval("UserTypeString").ToString()) %>' Text="Editar" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="btnDelete" runat="server" CommandArgument='<%# Eval("UserName") %>' OnCommand="btnDelete_OnCommand" Text="Eliminar" />
                    </ItemTemplate>
                </asp:TemplateField> 
                <asp:BoundField HeaderText="Primer Nombre" DataField="FirstName" />
                <asp:BoundField HeaderText="Primer Apellido" DataField="FirstSurname" />
                <asp:BoundField HeaderText="Tipo de Identificacion" DataField="IdentificationType" />
                <asp:BoundField HeaderText="Numero de Identificacion" DataField="IdentificationNumber" />
                <asp:BoundField HeaderText="Audiencia" DataField="Audience" />
                <asp:BoundField HeaderText="Edad" DataField="Age" />
                <asp:BoundField HeaderText="Nombre de Usuario" DataField="UserNameWithoutMembership" />
                <asp:BoundField HeaderText="NIT" DataField="NIT" />
                <asp:BoundField HeaderText="SubNIT" DataField="SubNIT" />
                <asp:BoundField HeaderText="Nombre de Empresa" DataField="Company" />
                <asp:BoundField HeaderText="Tipo de Usuario" DataField="UserTypeString" />
                <asp:TemplateField HeaderText="Fecha de Creación">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblCreationDate"><%# (Eval("CreationDate") != null) ? ((DateTime)Eval("CreationDate")).ToString("dd/MM/yyyy") : ""%></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>                                       
            </Columns>
        </asp:GridView>
        <div style="width:100%; text-align:center">
            <table style="width:auto" runat=server id="tblEliminacion">
                <tr class="ms-formdescription">
                    <td class="ms-formdescription">
                        <asp:Label ID="lblConfirmacion" runat="server" CssClass="ms-descriptiontext"  Font-Size="Medium" ForeColor="Red">¿Esta seguro que desea eliminar al usuario?</asp:Label>                    
                        <asp:LinkButton ID="btnSi"  runat="server" Text="Si" CssClass="ms-descriptiontext" Font-Size="Medium"/>
                        <asp:LinkButton ID="btnNo"  runat="server" Text="No" CssClass="ms-descriptiontext" Font-Size="Medium"/>
                    </td>
                </tr>
            </table>   
        </div>
    </div>
</asp:Content>