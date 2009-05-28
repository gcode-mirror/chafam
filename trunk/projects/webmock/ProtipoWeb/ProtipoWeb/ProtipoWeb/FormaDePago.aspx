<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormaDePago.aspx.cs" Inherits="ProtipoWeb.FormaDePago" %>
<%@ Register Assembly="AjaxControlToolkit, Version=1.0.10301.0, Culture=Neutral, PublicKeyToken=28f01b0e84b6d53e"
    Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
</head>

<script type='text/javascript'>
    function mostrarFiltros()
    {
        var filtro = document.getElementById('filafiltros').style.display;  // 1
        filtro = filtro == 'none' ? 'table-row' : 'none';  // 2
        document.getElementById('filafiltros').style.display = filtro;  // 3
    }
</script>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <link rel="Stylesheet" href="Css/StyleForms.css" type="text/css" />
    <asp:Wizard runat="server" ID="MyWizard" Font-Names="verdana" 
        OnNextButtonClick="OnNext" OnActiveStepChanged="OnActiveStepChanged" 
        OnFinishButtonClick="OnFinish" ActiveStepIndex="0" DisplaySideBar="false">
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" StepType="Start" Title="Datos Generales">
                <table class="form_table" style="width: 750px" id="tblFormaDePago" runat="server">  
                    <tr>
                        <td colspan="3" scope="row" class="title-form">
                                <asp:Label ID="lblDatosGenerales" runat="server" Text="Datos Generales del Solicitante" CssClass="title-form"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center">
                            <br /><br />
                            <asp:GridView Width="550" AllowPaging="true" PageSize="5" ID="grdProductos" runat="server"
                                AutoGenerateColumns="False" CssClass="grid-view" CellPadding="0" CellSpacing="0"
                                GridLines="None" Visible="true" >
                                <PagerStyle CssClass="pager" />
                                <HeaderStyle CssClass="grid-header" />
                                
                                <RowStyle CssClass="row" />
                                <AlternatingRowStyle CssClass="alternating-row" />
                                <EditRowStyle BorderWidth="0" />
                                <EmptyDataRowStyle BorderWidth="0" />
                                <SelectedRowStyle BorderWidth="0" />
                                <Columns>
                                    <asp:BoundField HeaderText="ProductoDescripcion" DataField="ProductoDescripcion" ShowHeader="true" ReadOnly="true" />
                                    <asp:BoundField HeaderText="NroPreVenta" DataField="NroPreVenta" ShowHeader="true" ReadOnly="true" />
                                    <asp:BoundField HeaderText="Importe" DataField="Importe" ShowHeader="true" 
                                        ReadOnly="true" ItemStyle-HorizontalAlign="Right" >
<ItemStyle HorizontalAlign="Right"></ItemStyle>
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td width="33%"></td>
                        <td width="33%"></td>
                        <td width="33%" align="left">&nbsp;&nbsp;&nbsp;&nbsp;<hr style="width:170px;" /></td>
                    </tr>
                    <tr>
                        <td width="33%"></td>
                        <td width="33%"></td>
                        <td width="33%" align="left">&nbsp;&nbsp;<asp:Label ID="lblTotalCompra" runat="server" CssClass="form_label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center">
                            <br /><br />
                            <table style="width: 550px" id="Table2" runat="server" class="form_table">
                                <tr>
                                    <td class="title-form">
                                         <asp:Label ID="Label2" runat="server" Text="Seleccione la formas de pago" CssClass="title-form"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <table width="550px" id="Table3" runat="server" class="alternating-row td">        
                                <tr>
                                    <td width="25%" class="alternating-row td"></td>
                                    <td align="left" class="alternating-row td"><asp:RadioButtonList ID=rdFormaDepago runat=server>
                                            <asp:ListItem Text="Payroll" Value="Payroll"><img src="Images/PayPal_mark_37x23.gif" /> </asp:ListItem>
                                            <asp:ListItem Text="Tarjetas" Value="Tarjetas">
                                                <img src="Images/Visa.bmp" />
                                                <img src="Images/Master.bmp" />
                                                <img src="Images/American.bmp" />
                                                <img src="Images/Discover.bmp" />
                                            </asp:ListItem>
                                        </asp:RadioButtonList>
                                        <asp:RequiredFieldValidator ID=reqFormaDePago runat=server ControlToValidate=rdFormaDepago ErrorMessage="Existen campos requeridos incompletos"
                                         Display=None></asp:RequiredFieldValidator>
                                         <ajaxToolkit:ValidatorCalloutExtender ID=valreqFormaDePago runat=server HighlightCssClass=validatorCalloutHighlight
                                          TargetControlID=reqFormaDePago></ajaxToolkit:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                           </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Label ID=lblFormaDePago runat=server Text="Ayuda de forma de Pago" CssClass=form_label />
                            <asp:ImageButton ID="imgButton" runat="server" CausesValidation="false" ImageUrl="images/IconHelp.png"
                                Width="20px" Height="19px" ToolTips="Ver Ejemplo" OnClick="imgButton_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                             <asp:UpdatePanel ID="updaImagen" runat="server">
                                <ContentTemplate>
                                    <asp:Image ImageUrl="images/EjemploPago.jpg" ID="imgEjemplo" Visible="false" runat="server" /><br />
                                    <asp:Label ID="Label4" runat="server" Visible="false" Text="Elija una de las dos opciones PayPal o tarjeta de crédito haciendo click en el círculito que está al lado de la imagen correspondiente." CssClass="description" />
                                    
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="imgButton" EventName="Click" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                        
                </table>
                </asp:WizardStep>
                
                
                
            <asp:WizardStep ID="WizardStep2" runat="server" StepType=Auto Title="Datos Generales">
            <table width="750px" id="tblDatosGenerales" runat="server" class="form_table_left">
                <tr>
                    <td colspan="3" class="title-form">
                            <asp:Label ID="Label1" runat="server" Text="Datos Generales del Solicitante" CssClass="title_form"></asp:Label>
                    </td>
                </tr>
                <tr class="alternating-row td" style="height:20px">
                    <td colspan="3">
                        <asp:Label CssClass="form_label" runat="server" ID="lblTitleApellido" Text="Apellidos"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Label ID="lblFirstSurName" runat="server" Text="Primero" CssClass="form_label"></asp:Label>
                        (<font color="red">*</font>)&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox CssClass="form_text" runat="server" ID="txtFirstSurname" MaxLength="100"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqFirstSurname" runat="server" ErrorMessage="Existen campos requeridos incompletos"
                            Display="None" ControlToValidate="txtFirstSurname"></asp:RequiredFieldValidator>
                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender1"
                            TargetControlID="reqFirstSurname" HighlightCssClass="validatorCalloutHighlight" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblSecondSurName" runat="server" Text="Segundo" CssClass="form_label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox CssClass="form_text" runat="server" ID="txtSecondSurname" MaxLength="100"></asp:TextBox>
                    </td>
                </tr>
                <tr class="alternating-row td" style="height:20px">
                    <td colspan="3">
                        <asp:Label CssClass="form_label" runat="server" ID="lblNames" Text="Nombres"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Label ID="lblFirstName" runat="server" Text="Primero" CssClass="form_label"></asp:Label>
                        (<font color="red">*</font>)&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox CssClass="form_text" runat="server" ID="txtFirstName" MaxLength="100"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqFirstName" runat="server" CssClass="form_field_error_message"
                            ErrorMessage="Existen campos requeridos incompletos" Display="None" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender2"
                            TargetControlID="reqFirstName" HighlightCssClass="validatorCalloutHighlight" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblSecondName" runat="server" Text="Segundo" CssClass="form_label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox CssClass="form_text" runat="server" ID="txtSecondName" MaxLength="100"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="ms-formdescription">
                    <br />
                        <asp:Label ID="Label14" runat="server" Text="Telefono" CssClass="form_label"></asp:Label>(<font
                            color="red">*</font>)
                    </td>
                    </tr>
                    <tr>                   
                    <td>
                        <asp:TextBox CssClass="form_text" runat="server" ID="txtPhone" MaxLength="14"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="regPhone" runat="server" CssClass="form_field_error_message"
                            ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtPhone"
                            ValidationExpression="^[\d]*$"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="reqPhone" runat="server" CssClass="form_field_error_message"
                            ErrorMessage="Existen campos requeridos incompletos" Display="None" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender6"
                            TargetControlID="reqPhone" HighlightCssClass="validatorCalloutHighlight" />
                    </td>
                    </tr>
                                <tr>
            <td>
            <br />
                <asp:Label ID="lblMailBox" runat="server" Text="Correo Electrónico Personal" CssClass="form_label"></asp:Label>
                (<font color="red">*</font>)
            </td>
            </tr>
            <tr>
            <td>
                <asp:TextBox runat="server" ID="txtPrivateEmail" MaxLength="3600"></asp:TextBox>
                <asp:RegularExpressionValidator ID="regExPrivateEmail" runat="server" CssClass="form_field_error_message"
                    ErrorMessage="El mail no es válido" Display="Dynamic" ControlToValidate="txtPrivateEmail"
                    ValidationExpression="^[_]*([A-Za-z0-9]+(\.|\-*_*)?)+@([A-Za-z][A-Za-z0-9\-]+(\.|\-*\.))+[A-Za-z]{2,6}$"
                    ValidationGroup="grpUserNew"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="reqPrivateEmail" runat="server" CssClass="form_field_error_message" Display=None
                    ErrorMessage="Requerido" ControlToValidate="txtPrivateEmail" ValidationGroup="grpUserNew"></asp:RequiredFieldValidator>
                <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValreqPrivateEmail" TargetControlID="reqPrivateEmail"
                    HighlightCssClass="validatorCalloutHighlight" />
            </td>
            </tr>
              <tr>
                    <td colspan="2">
                        <br />
                        <asp:Label ID="Label16" runat="server" Text="Direccion Domicilio" CssClass="form_label"></asp:Label>
                        (<font color="red">*</font>)
                        <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="false" ImageUrl="images/IconHelp.png"
                            Width="24px" Height="24px" ToolTips="Ver Ejemplo" OnClick="imgButton_Click" />
                    </td>
                </tr>
                             <tr>
                    <td colspan="3">
                        <asp:DropDownList CssClass="form_select" ID="ddlAddress1" runat="server">
                            <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Calle" Value="Calle"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox CssClass="form_text" runat="server" ID="txtAddress1" MaxLength="50"></asp:TextBox>
                        <asp:DropDownList CssClass="form_select" ID="ddlAddress2" runat="server">
                            <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="A" Value="A"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList CssClass="form_select" ID="ddlAddress3" runat="server">
                            <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Sur" Value="Sur"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="Label17" runat="server" Text="Nro:" CssClass="form_label"></asp:Label><asp:TextBox
                            CssClass="form_text" runat="server" ID="txtAddress2" MaxLength="14"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="regExpAddress2" runat="server" CssClass="ms-descriptiontext"
                            ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtAddress2"
                            ValidationExpression="^[\d]*$"></asp:RegularExpressionValidator>
                        <asp:DropDownList CssClass="form_select" ID="DropDownList14" runat="server">
                            <asp:ListItem Text="" Value=""></asp:ListItem>
                            <asp:ListItem Text="B" Value="B"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox CssClass="form_text" runat="server" ID="txtAddress3" MaxLength="50"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:DropDownList CssClass="form_select" ID="ddlAddress5" runat="server">
                            <asp:ListItem Text="" Value=""></asp:ListItem>
                            <asp:ListItem Text="Edificio" Value="Edificio"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox CssClass="form_text" runat="server" ID="txtAddress4" MaxLength="50"></asp:TextBox>
                        <asp:DropDownList CssClass="form_select" ID="ddlAddress6" runat="server">
                            <asp:ListItem Text="" Value=""></asp:ListItem>
                            <asp:ListItem Text="Apto" Value="Apto"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox CssClass="form_text" runat="server" ID="txtAddress5" MaxLength="50"></asp:TextBox>
                        <br />
                        <div id="addressMsg" style="color: Red; display: none" class="ms-descriptiontext">
                            Dos campos de texto o más deben tener valores</div>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Image ImageUrl="images/Ejemplo.JPG" ID="Image1" Visible="false" runat="server" />
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="imgButton" EventName="Click" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </td>
                </tr>

            </table>
            </asp:WizardStep>
            
            
            
            <asp:WizardStep ID="WizardStep3" runat="server" StepType=Finish Title="Datos de Pago">
                
                <table width="750px" id="tblDatoFormaDePago" runat="server" class="form_table_left">
                    <tr>
                        <td colspan="3" scope="row" class="title-form">
                             <asp:Label ID="Label3" runat="server" Text="Datos De Metodos de Pago" CssClass="title_form"></asp:Label></center>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <br />
                        <asp:Label ID="lblNumberCard" runat="server" Text="Numero de Tarjeta de Credito" CssClass="form_label"></asp:Label>
                        (<font color="red">*</font>)
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox runat="server" ID="txtNumberCard" MaxLength="3600"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqNumberCard" runat="server" CssClass="form_field_error_message" Display=None
                                ErrorMessage="Existen campos requeridos incompletos" ControlToValidate="txtNumberCard"></asp:RequiredFieldValidator>
                            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="valreqNumberCard" TargetControlID="reqNumberCard"
                                HighlightCssClass="validatorCalloutHighlight" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            <asp:Label ID="lblSecurityCode" runat="server" Text="Codigo de Seguridad" CssClass="form_label"></asp:Label>
                            (<font color="red">*</font>)
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox runat="server" ID="txtSecurityCode" MaxLength="3600"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqSecurityCode" runat="server" CssClass="form_field_error_message" Display=None 
                             ErrorMessage="Existen campos requeridos incompletos" ControlToValidate="txtSecurityCode"></asp:RequiredFieldValidator>
                            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender4" TargetControlID="reqSecurityCode"
                                HighlightCssClass="validatorCalloutHighlight"  />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblExpirationDate" runat="server" Text="Fecha de Expiración" CssClass="form_label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox runat="server" ID="txtBirthday" CssClass="form_text_date" />
                            <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server"
                                TargetControlID="txtBirthday" WatermarkText="AAAA/MM/DD" WatermarkCssClass="watermarked" />
                            <asp:ImageButton runat="Server" ID="imgBtnFechaDesde" ImageUrl="images/Calendar_scheduleHS.png"
                                AlternateText="Click to show calendar" />
                            <ajaxToolkit:CalendarExtender ID="calendarButtonExtenderFechaDesde" runat="server"
                                TargetControlID="txtBirthday" PopupButtonID="imgBtnFechaDesde" Format="yyyy/MM/dd" />
                        </td>
                    </tr>
                </table>
            </asp:WizardStep>
                
                
                
            <asp:WizardStep ID="WizardStep5" runat="server" StepType="Complete" Title="Completado">
                <table width="750px" id="Table1" runat="server" class="form_table_left">
                    <tr>
                        <td scope="row" class="title-form">
                             <asp:Label ID="Label5" runat="server" Text="Fin del proceso de pago" CssClass="title_form"></asp:Label></center>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            <asp:Label runat="server" ID="FinalMsg" CssClass="form_label" />
                        </td>
                    </tr>
                 </table>   
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
    </form>
</body>
</html>
