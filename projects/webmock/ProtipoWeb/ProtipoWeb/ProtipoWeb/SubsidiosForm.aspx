<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubsidiosForm.aspx.cs"
    Inherits="ProtipoWeb.SubsidiosForm" %>

<%@ Register Assembly="AjaxControlToolkit, Version=1.0.10301.0, Culture=Neutral, PublicKeyToken=28f01b0e84b6d53e"
    Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="scriptMng" runat="server">
    </asp:ScriptManager>
    <link rel="Stylesheet" href="Css/StyleSheet.css" type="text/css" />
    <asp:Wizard runat="server" ID="MyWizard" Font-Names="verdana" CssClass="content-more"
        ForeColor="navy" Style="border: outset 1px black" OnNextButtonClick="OnNext"
        OnActiveStepChanged="OnActiveStepChanged" OnFinishButtonClick="OnFinish" ActiveStepIndex="0"
        DisplaySideBar="false">
        
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" StepType="Start" Title="Datos Generales">
            
                <table class="ms-formbody" style="width: 700px" id="tblPrincipal" runat="server">
                    <tr>
                        <td colspan="3" scope="row" style="background-color: Navy">
                            <br />
                            <center>
                                <asp:Label ID="lblDatosGenerales" runat="server" Text="Datos Generales del Solicitante"
                                    CssClass="form_label_title"></asp:Label></center>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 25%" class="form_label">
                            <asp:Label ID="lblClase" runat="server" CssClass="form_label" Text="Clase de Novedades"></asp:Label>
                        </td>
                        <td colspan="2">
                            <asp:RadioButton CssClass="form_radios" ID="RadioButton6" runat="server" GroupName="IdentificationType"
                                Text="Inscripción Pensionados" />
                            &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td colspan="2">
                            <asp:RadioButton CssClass="form_radios" ID="RadioButton7" Checked="true" runat="server"
                                GroupName="IdentificationType" Text="Inscripción Personas a Cargo" />
                            &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td colspan="1">
                        </td>
                        <td colspan="2">
                            <asp:RadioButton CssClass="form_radios" ID="RadioButton8" runat="server" GroupName="IdentificationType"
                                Text="Inscripción de Cónyuge o Compañera" />
                            &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td colspan="2">
                            <asp:RadioButton CssClass="form_radios" ID="RadioButton9" runat="server" GroupName="IdentificationType"
                                Text="Adición de Personas a Cargo" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <br />
                            <asp:Label CssClass="form_label" runat="server" ID="lblTitleApellido" Text="Apellidos"></asp:Label>
                        </td>
                    </tr>
                    </tr>
                    <tr class="ms-formdescription">
                        <td colspan="4">
                            <asp:Label ID="Label51" runat="server" Text="Primero" CssClass="form_label"></asp:Label>
                            (<font color="red">*</font>)&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox CssClass="form_text" runat="server" ID="txtFirstSurname" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqFirstSurname" runat="server" ErrorMessage="Existen campos requeridos incompletos"
                                Display="None" ControlToValidate="txtFirstSurname"></asp:RequiredFieldValidator>
                            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender1"
                                TargetControlID="reqFirstSurname" HighlightCssClass="validatorCalloutHighlight" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Segundo" CssClass="form_label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox CssClass="form_text" runat="server" ID="txtSecondSurname" MaxLength="100"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <br />
                            <asp:Label CssClass="form_label" runat="server" ID="Label47" Text="Nombres"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Label ID="Label54" runat="server" Text="Primero" CssClass="form_label"></asp:Label>
                            (<font color="red">*</font>)&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox CssClass="form_text" runat="server" ID="txtFirstName" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqFirstName" runat="server" CssClass="form_field_error_message"
                                ErrorMessage="Existen campos requeridos incompletos" Display="None" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender2"
                                TargetControlID="reqFirstName" HighlightCssClass="validatorCalloutHighlight" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label55" runat="server" Text="Segundo" CssClass="form_label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox CssClass="form_text" runat="server" ID="txtSecondName" MaxLength="100"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <table>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label5" runat="server" Text="Identidad" CssClass="form_label"></asp:Label>(<font
                                            color="red">*</font>)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblTipo" runat="server" CssClass="form_label" Text="Tipo:"></asp:Label>
                                        <asp:RadioButton CssClass="form_radios" ID="RadioButton14" runat="server" GroupName="IdentificationType"
                                            Text="TI" ToolTip="Tarjeta de Identidad" />
                                        &nbsp;&nbsp;
                                        <asp:RadioButton CssClass="form_radios" ID="RadioButton15" Checked="true" runat="server"
                                            GroupName="IdentificationType" Text="CC" ToolTip="Cédula de Ciudadanía" />
                                        &nbsp;&nbsp;
                                        <asp:RadioButton CssClass="form_radios" ID="RadioButton16" runat="server" GroupName="IdentificationType"
                                            Text="CE" ToolTip="Cédula de Extranjería" />
                                    </td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label6" runat="server" Text="Número" CssClass="form_label"></asp:Label>(<font
                                            color="red">*</font>)
                                        <asp:TextBox CssClass="form_text" ID="txtIdentificatioNumber" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Este campon debe ser un numero"
                                            Display="Dynamic" ControlToValidate="txtIdentificatioNumber" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Existen campos requeridos incompletos" Display="None" ControlToValidate="txtIdentificatioNumber"></asp:RequiredFieldValidator>
                                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender3"
                                            TargetControlID="RequiredFieldValidator1" HighlightCssClass="validatorCalloutHighlight" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Fecha de Nacimiento" CssClass="form_label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox runat="server" ID="txtBirthday" CssClass="form_text_date" />
                            <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server"
                                TargetControlID="txtBirthday" WatermarkText="AAAA/MM/DD" WatermarkCssClass="watermarked" />
                            <asp:ImageButton runat="Server" ID="imgBtnFechaDesde" ImageUrl="images/Calendar_scheduleHS.png"
                                AlternateText="Click to show calendar" /><br />
                            <ajaxToolkit:CalendarExtender ID="calendarButtonExtenderFechaDesde" runat="server"
                                TargetControlID="txtBirthday" PopupButtonID="imgBtnFechaDesde" Format="yyyy/MM/dd" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            <asp:Label ID="Label8" runat="server" Text="Estado Civil" CssClass="form_label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:RadioButton CssClass="form_radios" ID="RadioButton10" runat="server" GroupName="IdentificationType"
                                Text="Soltero" />
                            &nbsp;&nbsp;
                            <asp:RadioButton CssClass="form_radios" ID="RadioButton11" Checked="true" runat="server"
                                GroupName="IdentificationType" Text="Casado" />
                            &nbsp;&nbsp;
                            <asp:RadioButton CssClass="form_radios" ID="RadioButton12" runat="server" GroupName="IdentificationType"
                                Text="Viudo" />
                            &nbsp;&nbsp;
                            <asp:RadioButton CssClass="form_radios" ID="RadioButton13" runat="server" GroupName="IdentificationType"
                                Text="Separado" />
                            &nbsp;&nbsp;
                            <asp:RadioButton CssClass="form_radios" ID="RadioButton17" runat="server" GroupName="IdentificationType"
                                Text="Unión Libre" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            <asp:Label ID="Label9" runat="server" Text="Sexo" CssClass="form_label"></asp:Label>(<font
                                color="red">*</font>)&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:RadioButton CssClass="form_radios" ID="rdOptionMale" runat="server" GroupName="grpSex"
                                Text="Masculino" />
                            &nbsp;&nbsp;
                            <asp:RadioButton CssClass="form_radios" ID="rdOptionFemale" runat="server" GroupName="grpSex"
                                Text="Femenino" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            <asp:Label ID="Label10" runat="server" Text="Fecha de Pension" CssClass="form_label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox runat="server" ID="txtFechaPension" CssClass="form_text_date" />
                            <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server"
                                TargetControlID="txtFechaPension" WatermarkText="AAAA/MM/DD" WatermarkCssClass="watermarked" />
                            <asp:ImageButton runat="Server" ID="ImageButton1" ImageUrl="images/Calendar_scheduleHS.png"
                                AlternateText="Click to show calendar" /><br />
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtFechaPension"
                                PopupButtonID="ImageButton1" Format="yyyy/MM/dd" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label11" runat="server" Text="Resolucion No." CssClass="form_label"></asp:Label>(<font
                                color="red">*</font>)
                        </td>
                        <td style="width: 30%">
                            <asp:Label ID="Label12" runat="server" Text="Vr. Pensión Mensual" CssClass="form_label"></asp:Label>
                            (<font color="red">*</font>)
                        </td>
                        <td>
                            <asp:Label ID="Label13" runat="server" Text="Clase de Pension" CssClass="form_label"></asp:Label>(<font
                                color="red">*</font>)
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox CssClass="form_text" ID="txtNroResolucion" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="regNroResolucion" runat="server" ErrorMessage="Este campon debe ser un numero"
                                Display="Dynamic" ControlToValidate="txtNroResolucion" ValidationExpression="^[0-9]*"> </asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="reqNroResolucion" runat="server" CssClass="form_field_error_message"
                                ErrorMessage="Existen campos requeridos incompletos" Display="None" ControlToValidate="txtNroResolucion"></asp:RequiredFieldValidator>
                            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender4"
                                TargetControlID="reqNroResolucion" HighlightCssClass="validatorCalloutHighlight" />
                        </td>
                        <td>
                            <asp:TextBox CssClass="form_text" ID="txtVrMonthPension" runat="server" MaxLength="14"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegVrMonthPension" runat="server" ErrorMessage="Este campon debe ser un numero"
                                Display="Dynamic" ControlToValidate="txtVrMonthPension" ValidationExpression="^[0-9]*"> </asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="reqVrMonthPension" runat="server" CssClass="form_field_error_message"
                                ErrorMessage="Existen campos requeridos incompletos" Display="None" ControlToValidate="txtVrMonthPension"></asp:RequiredFieldValidator>
                            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender5"
                                TargetControlID="reqVrMonthPension" HighlightCssClass="validatorCalloutHighlight" />
                        </td>
                        <td>
                            <asp:DropDownList CssClass="form_select" ID="drpPensionClass" runat="server">
                                <asp:ListItem Text="Jubilación" Value="Jubilacion" />
                                <asp:ListItem Text="Jubilación Compartida" Value="JubilacionCompartida" />
                                <asp:ListItem Text="Vejez" Value="Vejez" />
                                <asp:ListItem Text="Invalidez" Value="Invalidez" />
                                <asp:ListItem Text="Sustitución" Value="Sustitucion" />
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="ms-formdescription">
                            <asp:Label ID="Label14" runat="server" Text="Telefono" CssClass="form_label"></asp:Label>(<font
                                color="red">*</font>)
                        </td>
                        <td>
                            <asp:Label ID="Label15" runat="server" Text="Ciudad" CssClass="form_label"></asp:Label>
                            (<font color="red">*</font>)
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
                        <td>
                            <asp:TextBox CssClass="form_text" runat="server" ID="txtCiudad" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqCiudad" runat="server" CssClass="form_field_error_message"
                                ErrorMessage="Existen campos requeridos incompletos" Display="None" ControlToValidate="txtCiudad"></asp:RequiredFieldValidator>
                            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender7"
                                TargetControlID="reqCiudad" HighlightCssClass="validatorCalloutHighlight" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            <asp:Label ID="Label16" runat="server" Text="Direccion Domicilio" CssClass="form_label"></asp:Label>
                            (<font color="red">*</font>)
                            <asp:ImageButton ID="imgButton" runat="server" CausesValidation="false" ImageUrl="images/IconHelp.png"
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
                            <asp:UpdatePanel ID="updaImagen" runat="server">
                                <ContentTemplate>
                                    <asp:Image ImageUrl="images/Ejemplo.JPG" ID="imgEjemplo" Visible="false" runat="server" />
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="imgButton" EventName="Click" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <br />
                            <hr />
                            <br />
                        </td>
                    </tr>
                    <tr class="ms-formdescription">
                        <td colspan="2">
                            <asp:Label ID="Label18" runat="server" Text="Asociacion de Pensionados a la cual Pertenece"
                                CssClass="form_label"></asp:Label>
                            (<font color="red">*</font>)
                        </td>
                        <td class="ms-formdescription">
                            <asp:Label ID="Label19" runat="server" Text="Telefono" CssClass="form_label"></asp:Label>
                            (<font color="red">*</font>)
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox CssClass="form_text" runat="server" ID="txtAsociacionPertenece" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqAsociacionPertenece" runat="server" CssClass="form_field_error_message"
                                ErrorMessage="Existen campos requeridos incompletos" Display="None" ControlToValidate="txtAsociacionPertenece"></asp:RequiredFieldValidator>
                            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender8"
                                TargetControlID="reqAsociacionPertenece" HighlightCssClass="validatorCalloutHighlight" />
                        </td>
                        <td>
                            <asp:TextBox CssClass="form_text" runat="server" ID="txtAsociationPhone" MaxLength="14"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="regAsociationPhone" runat="server" CssClass="form_field_error_message"
                                ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtAsociationPhone"
                                ValidationExpression="^[\d]*$"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="reqAsociationPhone" runat="server" CssClass="form_field_error_message"
                                ErrorMessage="Existen campos requeridos incompletos" Display="None" ControlToValidate="txtAsociationPhone"></asp:RequiredFieldValidator>
                            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender9"
                                TargetControlID="reqAsociationPhone" HighlightCssClass="validatorCalloutHighlight" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="ms-formdescription">
                            <br />
                            <asp:Label ID="Label20" runat="server" Text="Direccion Domicilio" CssClass="form_label"></asp:Label>(<font
                                color="red">*</font>)
                            <asp:ImageButton ID="imgButton_2" runat="server" CausesValidation="false" ImageUrl="images/IconHelp.png"
                                Width="24px" Height="24px" ToolTips="Ver Ejemplo" OnClick="imgButton_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:DropDownList CssClass="form_select" ID="DropDownList1" runat="server">
                                <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Calle" Value="Calle"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox CssClass="form_text" runat="server" ID="TextBox1" MaxLength="50"></asp:TextBox>
                            <asp:DropDownList CssClass="form_select" ID="DropDownList2" runat="server">
                                <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="A" Value="A"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList CssClass="form_select" ID="DropDownList3" runat="server">
                                <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Sur" Value="Sur"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="Label21" runat="server" Text="Nro:" CssClass="form_label"></asp:Label><asp:TextBox
                                CssClass="form_text" runat="server" ID="TextBox2" MaxLength="14"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="ms-descriptiontext"
                                ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtAddress2"
                                ValidationExpression="^[\d]*$"></asp:RegularExpressionValidator>
                            <asp:DropDownList CssClass="form_select" ID="DropDownList4" runat="server">
                                <asp:ListItem Text="" Value=""></asp:ListItem>
                                <asp:ListItem Text="B" Value="B"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox CssClass="form_text" runat="server" ID="TextBox3" MaxLength="50"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:DropDownList CssClass="form_select" ID="DropDownList5" runat="server">
                                <asp:ListItem Text="" Value=""></asp:ListItem>
                                <asp:ListItem Text="Edificio" Value="Edificio"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox CssClass="form_text" runat="server" ID="TextBox4" MaxLength="50"></asp:TextBox>
                            <asp:DropDownList CssClass="form_select" ID="DropDownList6" runat="server">
                                <asp:ListItem Text="" Value=""></asp:ListItem>
                                <asp:ListItem Text="Apto" Value="Apto"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox CssClass="form_text" runat="server" ID="TextBox5" MaxLength="50"></asp:TextBox>
                            <br />
                            <div id="Div1" style="color: Red; display: none" class="ms-descriptiontext">
                                Dos campos de texto o más deben tener valores</div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:UpdatePanel ID="UpdImagen_2" runat="server">
                                <ContentTemplate>
                                    <asp:Image ImageUrl="images/Ejemplo.JPG" ID="ImgEjemplo_2" Visible="false" runat="server" />
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="imgButton" EventName="Click" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <br />
                            <hr />
                            <br />
                            
                        </td>
                    </tr>

                    
                </table>
            </asp:WizardStep>
            
            <asp:WizardStep ID="WizardStep2" runat="server" StepType="Auto" Title="Datos Entidades Pagadoras">
                <table class="ms-formbody" style="width: 700px" id="Table1" runat="server">
                    <tr>
                        <td colspan="4" scope="row" style="background-color: Navy">
                            <br />
                            <center>
                                <asp:Label ID="Label22" runat="server" Text="Datos Entidades Pagadoras" CssClass="form_label_title"></asp:Label></center>
                        </td>
                    </tr>
                    <tr>
                        <td class="ms-formdescription">
                            <asp:Label ID="Label23" runat="server" Text="Nombre o Razol Social" CssClass="form_label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:TextBox CssClass="form_text" runat="server" ID="txtRazonSocial"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqRazonSocial" runat="server" ErrorMesssage="Existen campos requeridos incompletos"
                                ControlToValidate="txtRazonSocial" Display="None" />
                            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="NReqE" TargetControlID="reqRazonSocial"
                                HighlightCssClass="validatorCalloutHighlight" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label24" runat="server" Text="NIT" CssClass="form_label"></asp:Label>
                            (<font color="red">*</font>)
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox CssClass="form_text" ID="txtNit" runat="server" MaxLength="14"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="regExNit" runat="server" ErrorMessage="Este campon debe ser un numero"
                                Display="Dynamic" ControlToValidate="txtNit" ValidationExpression="^[0-9]*"> </asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="regNIT" runat="server" CssClass="form_field_error_message"
                                ErrorMessage="Existen campos requeridos incompletos" Display="None" ControlToValidate="txtNit"></asp:RequiredFieldValidator>
                            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender10"
                                TargetControlID="regNIT" HighlightCssClass="validatorCalloutHighlight" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label25" runat="server" Text="Telefono" CssClass="form_label"></asp:Label>
                            (<font color="red">*</font>)
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox CssClass="form_text" runat="server" ID="txtPayEntityPhone" MaxLength="14"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="regPayEntityPhone" runat="server" CssClass="form_field_error_message"
                                ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtPayEntityPhone"
                                ValidationExpression="^[\d]*$"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="reqPayEntityPhone" runat="server" CssClass="form_field_error_message"
                                ErrorMessage="Existen campos requeridos incompletos" Display="None" ControlToValidate="txtPayEntityPhone"></asp:RequiredFieldValidator>
                            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender11"
                                TargetControlID="reqPayEntityPhone" HighlightCssClass="validatorCalloutHighlight" />
                        </td>
                    </tr>
                    <tr>
                        <td class="ms-formdescription">
                            <asp:Label ID="Label26" runat="server" Text="Direccion" CssClass="form_label"></asp:Label>
                            (<font color="red">*</font>)
                            <asp:ImageButton ID="imgButton_3" runat="server" CausesValidation="false" ImageUrl="images/IconHelp.png"
                                Width="24px" Height="24px" ToolTips="Ver Ejemplo" OnClick="imgButton_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:DropDownList CssClass="form_select" ID="drpAddressPayEntity1" runat="server">
                                <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Calle" Value="Calle"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox CssClass="form_text" runat="server" ID="txtAddressPayEntity1" MaxLength="50"></asp:TextBox>
                            <asp:DropDownList CssClass="form_select" ID="drpAddressPayEntity2" runat="server">
                                <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="A" Value="A"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList CssClass="form_select" ID="drpAddressPayEntity3" runat="server">
                                <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Sur" Value="Sur"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Label ID="Label27" runat="server" Text="Nro:" CssClass="form_label"></asp:Label><asp:TextBox
                                CssClass="form_text" runat="server" ID="txtNumberPayEntity1" MaxLength="14"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" CssClass="ms-descriptiontext"
                                ErrorMessage="Solo puede ingresar números" Display="Dynamic" ControlToValidate="txtAddress2"
                                ValidationExpression="^[\d]*$"></asp:RegularExpressionValidator>
                            <asp:DropDownList CssClass="form_select" ID="drpNumberPayEntity1" runat="server">
                                <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="B" Value="B"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox CssClass="form_text" runat="server" ID="txtNumberPayEntity2" MaxLength="50"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:DropDownList CssClass="form_select" ID="drpLocationPayEntity1" runat="server">
                                <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Edificio" Value="Edificio"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox CssClass="form_text" runat="server" ID="txtLocationPayEntity1" MaxLength="50"></asp:TextBox>
                            <asp:DropDownList CssClass="form_select" ID="drpLocationPayEntity2" runat="server">
                                <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Apto" Value="Apto"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox CssClass="form_text" runat="server" ID="txtLocationPayEntity2" MaxLength="50"></asp:TextBox>
                            <br />
                            <div id="Div2" style="color: Red; display: none" class="ms-descriptiontext">
                                Dos campos de texto o más deben tener valores</div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:UpdatePanel ID="UpdImagen_3" runat="server">
                                <ContentTemplate>
                                    <asp:Image ImageUrl="images/Ejemplo.JPG" ID="ImgEjemplo_3" Visible="false" runat="server" />
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="imgButton_3" EventName="Click" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            <asp:Button ID="btnCargar" CssClass="form_button_submit" runat="server" Text="Agregar Entidad Pagadora"
                                OnClick="btnCargar_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:UpdatePanel ID="updentidades" runat="server">
                                <ContentTemplate>
                                    <asp:GridView AllowPaging="true" PageSize="5" ID="GridViewEntidadesPagadoras" runat="server"
                                        AutoGenerateColumns="False" CssClass="gird-view" CellPadding="0" CellSpacing="0"
                                        GridLines="None" Visible="true" AutoGenerateDeleteButton=true>
                                        <PagerStyle CssClass="pager" />
                                        <HeaderStyle CssClass="gird-header" />
                                        <RowStyle CssClass="row" />
                                        <AlternatingRowStyle CssClass="alternating-row" />
                                        <EditRowStyle BorderWidth="0" />
                                        <EmptyDataRowStyle BorderWidth="0" />
                                        <SelectedRowStyle BorderWidth="0" />
                                        <Columns>
                                            <asp:BoundField HeaderText="Razon Social" DataField="RazonSocial" ShowHeader="true"
                                                ReadOnly="true" />
                                            <asp:BoundField HeaderText="Nit" DataField="Nit" ShowHeader="true" ReadOnly="true" />
                                            <asp:BoundField HeaderText="Direccion" DataField="Direccion" ShowHeader="true" ReadOnly="true" />
                                            <asp:BoundField HeaderText="Telefono" DataField="Telefono" ShowHeader="true" ReadOnly="true" />
                                        </Columns>
                                    </asp:GridView>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btnCargar" EventName="Click" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                </table>
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep3" runat="server" StepType="Auto" Title="Datos de Cónyuges">
                <table class="ms-formbody" style="width: 700px" id="Table2" runat="server">
                    <tr>
                        <td colspan="4" scope="row" style="background-color: Navy">
                            <br />
                            <center>
                                <asp:Label ID="Label40" runat="server" Text="Datos de Cónyuges" CssClass="form_label_title"></asp:Label></center>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <br />
                            <asp:Label CssClass="form_label" runat="server" ID="Label2" Text="Apellidos"></asp:Label>
                        </td>
                    </tr>
                    </tr>
                    <tr class="ms-formdescription">
                        <td colspan="4">
                            <asp:Label ID="Label3" runat="server" Text="Primero" CssClass="form_label"></asp:Label>
                            (<font color="red">*</font>)&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox CssClass="form_text" runat="server" ID="TextBox6" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Existen campos requeridos incompletos"
                                Display="None" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender12"
                                TargetControlID="RequiredFieldValidator2" HighlightCssClass="validatorCalloutHighlight" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label4" runat="server" Text="Segundo" CssClass="form_label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox CssClass="form_text" runat="server" ID="TextBox7" MaxLength="100"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <br />
                            <asp:Label CssClass="form_label" runat="server" ID="Label28" Text="Nombres"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Label ID="Label29" runat="server" Text="Primero" CssClass="form_label"></asp:Label>
                            (<font color="red">*</font>)&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox CssClass="form_text" runat="server" ID="TextBox8" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="form_field_error_message"
                                ErrorMessage="Existen campos requeridos incompletos" Display="None" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender13"
                                TargetControlID="RequiredFieldValidator3" HighlightCssClass="validatorCalloutHighlight" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label30" runat="server" Text="Segundo" CssClass="form_label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox CssClass="form_text" runat="server" ID="TextBox9" MaxLength="100"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <table>
                                <tr>
                                    <td colspan="4">
                                        <asp:Label ID="Label48" runat="server" Text="Identidad" CssClass="form_label"></asp:Label>(<font
                                            color="red">*</font>)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblTipoPariente" runat="server" Text="Tipo:" CssClass="form_label"></asp:Label>
                                        <asp:RadioButton CssClass="form_radios" ID="RadioButton1" runat="server" GroupName="IdentificationType"
                                            Text="TI" ToolTip="Tarjeta de Identidad" />
                                        &nbsp;&nbsp;
                                        <asp:RadioButton CssClass="form_radios" ID="RadioButton2" Checked="true" runat="server"
                                            GroupName="IdentificationType" Text="CC" ToolTip="Cédula de Ciudadanía" />
                                        &nbsp;&nbsp;
                                        <asp:RadioButton CssClass="form_radios" ID="RadioButton3" runat="server" GroupName="IdentificationType"
                                            Text="CE" ToolTip="Cédula de Extranjería" />
                                    </td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label49" runat="server" Text="Número" CssClass="form_label"></asp:Label>(<font
                                            color="red">*</font>)
                                        <asp:TextBox CssClass="form_text" ID="TextBox10" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Este campon debe ser un numero"
                                            Display="Dynamic" ControlToValidate="txtIdentificatioNumber" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="form_field_error_message"
                                            ErrorMessage="Existen campos requeridos incompletos" Display="None" ControlToValidate="TextBox10"></asp:RequiredFieldValidator>
                                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender14"
                                            TargetControlID="RequiredFieldValidator4" HighlightCssClass="validatorCalloutHighlight" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr class="ms-formdescription">
                        <td>
                            <asp:Label ID="Label34" runat="server" Text="Sexo" CssClass="form_label"></asp:Label>
                            (<font color="red">*</font>)&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RadioButton CssClass="form_radios" ID="RadioButton4" runat="server" GroupName="grpSex"
                                Text="Masculino" />
                            &nbsp;&nbsp;
                            <asp:RadioButton CssClass="form_radios" ID="RadioButton5" runat="server" GroupName="grpSex"
                                Text="Femenino" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <br />
                            <asp:Label ID="Label37" runat="server" Text="Fecha de Nacimiento" CssClass="form_label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox runat="server" ID="txtBirthDayConyugue" CssClass="form_text_date" />
                            <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server"
                                TargetControlID="txtBirthDayConyugue" WatermarkText="AAAA/MM/DD" WatermarkCssClass="watermarked" />
                            <asp:ImageButton runat="Server" ID="ImageButton2" ImageUrl="images/Calendar_scheduleHS.png"
                                AlternateText="Click to show calendar" />
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server"
                                TargetControlID="txtBirthDayConyugue" PopupButtonID="ImageButton2" Format="yyyy/MM/dd" />
                        </td>
                    </tr>
                    <tr>
                        <td class="ms-formdescription">
                        <br />
                            <asp:Label ID="Label35" runat="server" Text="Convivencia" CssClass="form_label"></asp:Label>
                        </td>
                        </tr>
                    <tr>
                        <td class="ms-formdescription">
                            <asp:TextBox CssClass="form_text" runat="server" ID="txtConvivencia" MaxLength="100"></asp:TextBox>
                        </td>
                        </tr>
                                                <tr>
                        <td class="ms-formdescription">
                        <br />
                            <asp:Label ID="Label36" runat="server" Text="Tipo de Relacion" CssClass="form_label"></asp:Label>
                        </td>
                    </tr>

                        <tr>
                        <td class="ms-formdescription">
                            <asp:TextBox CssClass="form_text" runat="server" ID="txtRelationType" MaxLength="100"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep4" runat="server" StepType="Finish" Title="Datos de Personas a Cargo">
                <table class="ms-formbody" style="width: 700px" id="Table3" runat="server">
                    <tr>
                        <td colspan="4" scope="row" style="background-color: Navy">
                            <br />
                            <center>
                                <asp:Label ID="Label41" runat="server" Text="Datos de Personas a Cargo" CssClass="form_label_title"></asp:Label></center>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <br />
                            <asp:Label CssClass="form_label" runat="server" ID="Label31" Text="Apellidos"></asp:Label>
                        </td>
                    </tr>
                    </tr>
                    <tr class="ms-formdescription">
                        <td colspan="4">
                            <asp:Label ID="Label32" runat="server" Text="Primero" CssClass="form_label"></asp:Label>
                            (<font color="red">*</font>)&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox CssClass="form_text" runat="server" ID="txtFirstSurNameParent" MaxLength="100"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label33" runat="server" Text="Segundo" CssClass="form_label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox CssClass="form_text" runat="server" ID="txtSecondSurNameParent" MaxLength="100"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <br />
                            <asp:Label CssClass="form_label" runat="server" ID="Label38" Text="Nombre"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Label ID="Label39" runat="server" Text="Primero" CssClass="form_label"></asp:Label>
                            (<font color="red">*</font>)&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox CssClass="form_text" runat="server" ID="txtFirstNameParent" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" CssClass="form_field_error_message"
                                ErrorMessage="Existen campos requeridos incompletos" Display="None" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender16"
                                TargetControlID="reqFirstName" HighlightCssClass="validatorCalloutHighlight" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <table>
                                <tr>
                                    <td colspan="4">
                                        <asp:Label ID="Label52" runat="server" Text="Identidad" CssClass="form_label"></asp:Label>(<font
                                            color="red">*</font>)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblTipoConyugue" runat="server" Text="Tipo:" CssClass="form_label"></asp:Label>
                                        <asp:RadioButton CssClass="form_radios" ID="rdOptionTIParent" runat="server" GroupName="IdentificationType"
                                            Text="TI" ToolTip="Tarjeta de Identidad" />
                                        &nbsp;&nbsp;
                                        <asp:RadioButton CssClass="form_radios" ID="rdOptionCCParent" Checked="true" runat="server"
                                            GroupName="IdentificationType" Text="CC" ToolTip="Cédula de Ciudadanía" />
                                        &nbsp;&nbsp;
                                        <asp:RadioButton CssClass="form_radios" ID="rdOptionCEParent" runat="server" GroupName="IdentificationType"
                                            Text="CE" ToolTip="Cédula de Extranjería" />
                                    </td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label53" runat="server" Text="Número" CssClass="form_label"></asp:Label>(<font
                                            color="red">*</font>)
                                        <asp:TextBox CssClass="form_text" ID="txtNumberParent" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr class="ms-formdescription">
                        <td class="ms-formdescription">
                            <asp:Label ID="Label42" runat="server" Text="Fecha de Nacimiento" CssClass="form_label"></asp:Label>
                        </td>
                        </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox runat="server" ID="txtBirthdayParent" CssClass="form_text_date" />
                            <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender4" runat="server"
                                TargetControlID="txtBirthdayParent" WatermarkText="AAAA/MM/DD" WatermarkCssClass="watermarked" />
                            <asp:ImageButton runat="Server" ID="ImageButton3" ImageUrl="images/Calendar_scheduleHS.png"
                                AlternateText="Click to show calendar" /><br />
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="txtBirthdayParent"
                                PopupButtonID="ImageButton3" Format="yyyy/MM/dd" />
                        </td>
                        </tr>
                                                <tr>
                        <td>
                        <br />
                            <asp:Label ID="Label43" runat="server" Text="Sexo" CssClass="form_label"></asp:Label>
                            (<font color="red">*</font>)&nbsp;&nbsp;
                        </td>
                        </tr>
                        <tr>
                        <td>
                            <asp:RadioButton CssClass="form_radios" ID="rdSexParentMale" runat="server" GroupName="grpSexParent"
                                Text="Masculino" />
                            &nbsp;&nbsp;
                            <asp:RadioButton CssClass="form_radios" ID="rdSexParentFemale" runat="server" GroupName="grpSexParent"
                                Text="Femenino" />
                        </td>
                        </tr>
                                                <tr>
                        <td class="ms-formdescription"><br />
                            <asp:Label ID="Label44" runat="server" Text="Parentesco" CssClass="form_label"></asp:Label>
                        </td>
                    </tr>

                        <tr>
                        <td class="ms-formdescription">
                            <asp:DropDownList CssClass="form_select" ID="drpParent" runat="server">
                                <asp:ListItem Text="Hijo Legitimo" Value="Legitimo" />
                                <asp:ListItem Text="Hijo extramatr." Value="Extramatr" />
                                <asp:ListItem Text="Hijastro" Value="Hijastro" />
                                <asp:ListItem Text="Hermano" Value="Hermano" />
                                <asp:ListItem Text="Padre" Value="Padre" />
                                <asp:ListItem Text="Cónyuge" Value="Conyuge" />
                                <asp:ListItem Text="Compañera" Value="Companera" />
                                <asp:ListItem Text="Hijo Adoptivo" Value="Adoptivo" />
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="ms-formdescription"><br />
                            <asp:Label ID="Label45" runat="server" Text="Incapacitacion" CssClass="form_label"></asp:Label>
                        </td></tr>
                        <tr><td>                            
                            <asp:CheckBox CssClass="form_checkbox" ID="chkHelpless" runat="server" Checked="false" />
                        </td>
                        </tr>
                        <tr>
                        <td class="ms-formdescription" colspan="3"><br />
                            <asp:Label ID="Label46" runat="server" Text="Ocupacion Tipo" CssClass="form_label"></asp:Label>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <asp:RadioButton CssClass="form_radios" ID="rdOccupationEmployeed" runat="server"
                                GroupName="grpOccupation" Text="Trabaja" />
                            &nbsp;&nbsp;
                            <asp:RadioButton CssClass="form_radios" ID="rdOccupationStudent" Checked="true" runat="server"
                                GroupName="grpOccupation" Text="Estudia" />
                            &nbsp;&nbsp;
                            <asp:RadioButton CssClass="form_radios" ID="rdOccupationHome" runat="server" GroupName="grpOccupation"
                                Text="Hogar" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button CssClass="form_button_submit" ID="btnCargarParents" runat="server" Text="Agregar Persona a Cargo"
                                OnClick="btnCargarParents_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:UpdatePanel ID="updViewParents" runat="server">
                                <ContentTemplate>
                                    <asp:GridView AutoGenerateDeleteButton=true AllowPaging="true" PageSize="5" ID="grdParents" runat="server" AutoGenerateColumns="False"
                                        CssClass="gird-view" CellPadding="0" CellSpacing="0" GridLines="None" Visible="true">
                                        <PagerStyle CssClass="pager" />
                                        <HeaderStyle CssClass="gird-header" />
                                        <RowStyle CssClass="row" />
                                        <AlternatingRowStyle CssClass="alternating-row" />
                                        <EditRowStyle BorderWidth="0" />
                                        <EmptyDataRowStyle BorderWidth="0" />
                                        <SelectedRowStyle BorderWidth="0" />
                                        <Columns>
                                            <asp:BoundField HeaderText="NombreCompleto" DataField="CompleteName" ShowHeader="true"
                                                ReadOnly="true" />
                                            <asp:BoundField HeaderText="Identidad" DataField="Identity" ShowHeader="true" ReadOnly="true" />
                                            <asp:BoundField HeaderText="Numero Identidad" DataField="NumberIdentity" ShowHeader="true"
                                                ReadOnly="true" />
                                            <asp:BoundField HeaderText="Fecha Nacimiento" DataField="Birthday" ShowHeader="true"
                                                ReadOnly="true" />
                                            <asp:BoundField HeaderText="Sexo" DataField="Sex" ShowHeader="true" ReadOnly="true" />
                                            <asp:BoundField HeaderText="Parentesco" DataField="ParentType" ShowHeader="true"
                                                ReadOnly="true" />
                                            <asp:BoundField HeaderText="Incapacitado" DataField="helpless" ShowHeader="true"
                                                ReadOnly="true" />
                                            <asp:BoundField HeaderText="Ocupación" DataField="OccupationType" ShowHeader="true"
                                                ReadOnly="true" />
                                        </Columns>
                                    </asp:GridView>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btnCargarParents" EventName="Click" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr>
                    </tr>
                </table>
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep5" runat="server" StepType="Complete" Title="Completado">
                <div style="height: 200px">
                    <asp:Label runat="server" ID="FinalMsg" />
                </div>
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
    </div> </div>
    </form>
</body>
</html>
