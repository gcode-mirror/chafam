<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CotizadorSeguroSoat.aspx.cs" Inherits="ProtipoWeb.CotizadorSeguroSoat" %>

<%@ Register Assembly="AjaxControlToolkit, Version=1.0.10301.0, Culture=Neutral, PublicKeyToken=28f01b0e84b6d53e"
    Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="scriptMng" runat="server">
    </asp:ScriptManager>
    <link rel="Stylesheet" href="Css/StyleForms.css" type="text/css" />
    <asp:Panel ID="pnlPrincipal" runat="server">
        <table class="form_table" style="width: 700px" id="tblPrincipal" runat="server" border="0">
            <tr>
                <td colspan="3" scope="row" class="title-form">
                    <center>
                        <asp:Label ID="lblCotizador" runat="server" Text="Cotizador Seguros Soat" CssClass="title-form"></asp:Label>
                    </center>
                </td>
            </tr>
            <tr>
                <td style="width: 35%" class="form_label">
                    <asp:Label ID="lblClase" runat="server" CssClass="form_label" Text="Clase de automotor"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td colspan="2" class="form_radios">
                    <asp:RadioButtonList CssClass="form_radios" ID="rdItemClase" runat="server" AutoPostBack="true"
                        OnSelectedIndexChanged="rdItemClase_SelectedIndexChanged">
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="reqClase" runat="server" ControlToValidate="rdItemClase"
                        Display="None" ErrorMessage="Existen campos requeridos incompletos"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender6"
                        TargetControlID="reqClase" HighlightCssClass="validatorCalloutHighlight" />
                    &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 35%" class="form_label">
                    <asp:Label ID="lblModelo" runat="server" CssClass="form_label" Text="Modelo de automotor"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td colspan="2" class="form_radios">
                    <asp:RadioButtonList CssClass="form_radios" ID="rdModelo" runat="server">
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="width: 35%" class="form_label">
                    <asp:UpdatePanel ID="updChangeCilindraje" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="lblCilidraje" Visible="false" runat="server" CssClass="form_label"
                                Text="Cilindraje"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td colspan="2" class="form_radios">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:RadioButtonList CssClass="form_radios" ID="rdCilindraje" runat="server">
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="reqCilindraje" runat="server" ControlToValidate="rdCilindraje"
                                Display="None" ErrorMessage="Existen campos requeridos incompletos"></asp:RequiredFieldValidator>
                            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender1"
                                TargetControlID="reqCilindraje" HighlightCssClass="validatorCalloutHighlight" />
                            &nbsp;&nbsp;
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="rdItemClase" EventName="SelectedIndexChanged" />
                        </Triggers>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
		    <td align="right" colspan=4>
			  <asp:Button class="form_button_submit" ID="btnCotizar" runat=server Text=" Cotizar " OnClick=OnNext />&nbsp;&nbsp;	  
			  <asp:Button class="form_button_submit" ID=btnSalirIni runat=server PostBackUrl="~/CotizadorSeguroSoat.aspx" Text=" Salir " />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	  
		    </td>
		</tr>
		<tr>
                   <td align="center">&nbsp;</td>
		</tr>
        </table>
    </asp:Panel>



    <asp:Panel ID="pnlAnswer" runat="server" Visible="false">
        <table style="width: 750px" id="Table1" runat="server" class="form_table">
            <tr>
                <td class="title-form">
                        <asp:Label ID="lblTituloFinal" runat="server" Text="Cotización Seleccionada" CssClass="title-form"></asp:Label>
                </td>
            </tr>
	  </table>
        <table border="0" style="width: 750px" class="form_table_Cotizacion" aling="center">
                <tr>
                    <td align="center" style="width: 350px" class="form_label_Cotizacion">
                        <asp:Label ID="lblClaseVehiculo" runat="server"></asp:Label>
                        <br />
                    </td>
                    <td align="center" style="width: 350px" class="form_importe" rowspan=3>
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblMonto" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="width: 350px" class="form_label_Cotizacion">
                        <asp:Label ID="lblmodeloVehiculo" runat="server"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="center" style="width: 350px" class="form_label_Cotizacion">
                        <asp:Label ID="lblCilinjdraje" runat="server"></asp:Label>
                    </td>
                </tr>
		   <tr>
                    <td align="center" style="width: 350px" class="form_label_Cotizacion">&nbsp;
                    </td>
                </tr>
        </table>
<br />
<br />
	  <table style="width: 750px" id="Table2" runat="server" class="form_table">
            <tr>
                <td class="title-form">
                     <asp:Label ID="Label1" runat="server" Text="Preguntas Frecuentes" CssClass="title-form"></asp:Label>
                </td>
            </tr>
	  </table>
	  <table width="750px" id="Table3" runat="server" class="form_table">        
		<tr>
            <td align="right" class="title-form_">
               <img src="Images/vineta_links.gif" />&nbsp; <a href="#" alt="link al directorio parametrizado para seguros" title="link al directorio parametrizado para seguros">
                    ¿Donde contratar el SOAT?</a>
            </td>
        </tr>
        <tr>
            <td>
		  <br /><br />
                <ajaxToolkit:Accordion ID="acrdQuestions" 
			        SelectedIndex="0"
			        runat="server" 
			        HeaderCssClass="accordionHeader" 
			        FadeTransitions="true" 
			        FramesPerSecond="40" 
			        TransitionDuration="250" 
			        RequireOpenedPane="false">
                    <Panes>
                        <ajaxToolkit:AccordionPane ID="questions_1" runat="server" ContentCssClass="content-more"> 
                            <Header>
                                <table>
                                    <tr>
                                        <td align="left">
                                            <strong>&nbsp;&nbsp;&nbsp;<img src="Images/arrow.gif" />&nbsp;&nbsp;&nbsp;¿Cómo suscribir la póliza? </strong>
                                        </td>
                                    </tr>
                                </table>
                            </Header>
                            <Content>
                                <table>
                                    <tr>
                                        <td class="form_textQuestion">
                                            <p>
                                                Para solicitar el Seguro Obligatorio, debe acercarse al Área de Seguros y presentar
                                                los siguientes documentos:
                                            </p>
                                            <ul>
                                                <li>Fotocopia de la Tarjeta de Propiedad del vehículo,<%=Cotizacion%> la cual DEBE estar
                                                    a nombre del propietario del vehículo. </li>
                                                <li>Fotocopia del S.O.A.T.</li>
                                            </ul>
                                        </td>
                                    </tr>
                                </table>
                            </Content>
                        </ajaxToolkit:AccordionPane>
                        <ajaxToolkit:AccordionPane ID="questions_2" runat="server" ContentCssClass="content-more">
                            <Header>
                                <table>
                                    <tr>
                                        <td align="left">
                                            <strong>&nbsp;&nbsp;&nbsp;<img src="Images/arrow.gif" />&nbsp;&nbsp;&nbsp;¿Cómo solicitar una modificación a la póliza?</strong>
                                        </td>
                                    </tr>
                                </table>
                            </Header>
                            <Content>
                                <table>
                                    <tr>
                                        <td class="form_textQuestion"> 
                                            <p>
                                                Para solicitar una modificación por error al momento de expedición, debe acercarse
                                                al Área de Seguros y presentar el original del S.O.A.T. para ser reemplazado por
                                                uno nuevo.</p>
                                        </td>
                                    </tr>
                                </table>
                            </Content>
                        </ajaxToolkit:AccordionPane>
                        <ajaxToolkit:AccordionPane ID="questions_3" runat="server" ContentCssClass="content-more">
                            <Header>
                                <table>
                                    <tr>
                                        <td align="left">
                                            <strong>&nbsp;&nbsp;&nbsp;<img src="Images/arrow.gif" />&nbsp;&nbsp;&nbsp;¿Qué hacer en caso de pérdida del S.O.A.T.?</strong>
                                        </td>
                                    </tr>
                                </table>
                            </Header>
                            <Content>
                                <table>
                                    <tr>
                                        <td class="form_textQuestion">
                                            <p>
                                                Para solicitar una copia del Seguro Obligatorio, debe acercarse al Área de Seguros
                                                y presentar copia del denuncio.</p>
                                        </td>
                                    </tr>
                                </table>
                            </Content>
                        </ajaxToolkit:AccordionPane>
                        <ajaxToolkit:AccordionPane ID="question_4" runat="server" ContentCssClass="content-more">
                            <Header>
                                <table>
                                    <tr>
                                        <td align="left">
                                            <strong>&nbsp;&nbsp;&nbsp;<img src="Images/arrow.gif" />&nbsp;&nbsp;&nbsp;¿Qué hacer en caso de accidente?</strong>
                                        </td>
                                    </tr>
                                </table>
                            </Header>
                            <Content>
                                <table>
                                    <tr>
                                        <td class="form_textQuestion">
                                            <p>
                                                En el Evento de presentarse un Accidente, debe dirigirse al centro médico más cercano
                                                e ingresar al paciente presentando su S.O.A.T. vigente.
                                            </p>
                                            <p style="margin-top: 0.3em; margin-bottom: 0.1em;">
                                                Los establecimientos hospitalarios o clínicos y las entidades de seguridad y previsión
                                                social de los sectores oficial y privado están obligados a prestar la atención medica,
                                                quirúrgica, farmacéutica u hospitalaria por daños corporales causados a las personas
                                                en accidente de tránsito.</p>
                                            <p style="margin-top: 0.3em;">
                                                Están obligados a prestar la atención médica en forma INTEGRAL desde la atención
                                                de urgencias hasta su rehabilitación final.</p>
                                        </td>
                                    </tr>
                                </table>
                            </Content>
                        </ajaxToolkit:AccordionPane>
                        <ajaxToolkit:AccordionPane ID="question_5" runat="server" ContentCssClass="content-more">
                            <Header>
                                <table>
                                    <tr>
                                        <td align="left">
                                            <strong>&nbsp;&nbsp;&nbsp;<img src="Images/arrow.gif" />&nbsp;&nbsp;&nbsp;¿Cómo se indemniza?</strong>
                                        </td>
                                    </tr>
                                </table>
                            </Header>
                            <Content>
                                <table>
                                    <tr>
                                        <td class="form_textQuestion">
                                            <p>
                                                La indemnización de estos hechos, se afecta en primera instancia cubriendo el límite
                                                de la cobertura del S.O.A.T., el excedente afectará a otra cobertura ya sea la póliza
                                                de todo riesgo en el ítem de RCE, la EPS de la víctima, o cualquier otra instancia
                                                relacionada.</p>
                                        </td>
                                    </tr>
                                </table>
                            </Content>
                        </ajaxToolkit:AccordionPane>
                    </Panes>
                </ajaxToolkit:Accordion>
            </td>
        </tr>
        <tr>
            <td align="right">
                <br />
		  <asp:Button class="form_button_submit" ID=btnNuevaCotizacion runat=server OnClick=btnNuevaCotizacion_Click Text="Nueva Cotización" />&nbsp;&nbsp;
		  <asp:Button class="form_button_submit" ID=btnSalir runat=server PostBackUrl="~/CotizadorSeguroSoat.aspx" Text="Salir" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	    </td>
        </tr>
		<tr>
                   <td align="center">&nbsp;</td>
		</tr>
        </table>
        </div>
    </asp:Panel>
    </form>
</body>
</html>
