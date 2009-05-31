using System;
using System.Collections.Generic;
using System.Text;
using System.Web.UI.WebControls;
using Microsoft.SharePoint;
using System.Data;
using System.Web.UI.HtmlControls;
using System.Web.UI;
using AjaxControlToolkit;

namespace CAFAM.WebPortal.WebUI
{
    public delegate void CustomOnSubmitValidationDelegate();

    public class AddressControl : CompositeControl
    {
        #region Controls Declaration
        private DropDownList ddlAddress1 = new DropDownList();
        private DropDownList ddlAddress2 = new DropDownList();
        private DropDownList ddlAddress3 = new DropDownList();
        private DropDownList ddlAddress4 = new DropDownList();
        private DropDownList ddlAddress5 = new DropDownList();
        private DropDownList ddlAddress6 = new DropDownList();
        private TextBox txtAddress1 = new TextBox();
        private TextBox txtAddress2 = new TextBox();
        private TextBox txtAddress3 = new TextBox();
        private TextBox txtAddress4 = new TextBox();
        private TextBox txtAddress5 = new TextBox();
        TextBox txtValidatorInvisible = new TextBox();
        private Image imgHelpAddress = new Image();
        CustomValidator valDate = new CustomValidator();
        #endregion

        #region Poperties
        public string ValidationGroup { get; set; }
        public string FieldText { get; set; }
        public string FieldTextClass { get; set; }
        public string ValidatorClass { get; set; }
        public string TextBoxClass { get; set; }
        public string ValidatorExtenderClass { get; set; }
        public Entities.Address Address
        {
            get
            {
                Entities.Address address = new CAFAM.WebPortal.Entities.Address();
                int outInt;

                address.AddressCombo1 = ddlAddress1.SelectedValue;
                address.AddressCombo2 = ddlAddress2.SelectedValue;
                address.AddressCombo3 = ddlAddress3.SelectedValue;
                address.AddressCombo4 = ddlAddress4.SelectedValue;
                address.AddressCombo5 = ddlAddress5.SelectedValue;
                address.AddressCombo6 = ddlAddress6.SelectedValue;
                address.AddressText1 = txtAddress1.Text;
                if (int.TryParse(txtAddress2.Text, out outInt))
                {
                    address.AddressText2 = outInt;
                }
                else
                {
                    address.AddressText2 = null;
                }
                address.AddressText3 = txtAddress3.Text;
                address.AddressText4 = txtAddress4.Text;
                address.AddressText5 = txtAddress5.Text;

                return address;
            }
            set
            {
                if (!string.IsNullOrEmpty(value.AddressCombo1))
                {
                    ddlAddress1.SelectedValue = value.AddressCombo1;
                }
                if (!string.IsNullOrEmpty(value.AddressCombo2))
                {
                    ddlAddress2.SelectedValue = value.AddressCombo2;
                }
                if (!string.IsNullOrEmpty(value.AddressCombo3))
                {
                    ddlAddress3.SelectedValue = value.AddressCombo3;
                }
                if (!string.IsNullOrEmpty(value.AddressCombo4))
                {
                    ddlAddress4.SelectedValue = value.AddressCombo4;
                }
                if (!string.IsNullOrEmpty(value.AddressCombo5))
                {
                    ddlAddress5.SelectedValue = value.AddressCombo5;
                }
                if (!string.IsNullOrEmpty(value.AddressCombo6))
                {
                    ddlAddress6.SelectedValue = value.AddressCombo6;
                }
                txtAddress1.Text = value.AddressText1;
                if (value.AddressText2.HasValue)
                {
                    txtAddress2.Text = value.AddressText2.ToString();
                }
                txtAddress3.Text = value.AddressText3;
                txtAddress4.Text = value.AddressText4;
                txtAddress5.Text = value.AddressText5;
            }
        }
        #endregion

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            CreateControls();
            AddAddressJavascriptValidation();
        }

        private void CreateControls()
        {
            ddlAddress1.ID = "ddlAddres1";
            ddlAddress2.ID = "ddlAddres2";
            ddlAddress3.ID = "ddlAddres3";
            ddlAddress4.ID = "ddlAddres4";
            ddlAddress5.ID = "ddlAddres5";
            ddlAddress6.ID = "ddlAddres6";

            txtAddress1.ID = "txtAddress1";
            txtAddress1.CssClass = TextBoxClass;
            txtAddress2.ID = "txtAddress2";
            txtAddress2.CssClass = TextBoxClass;
            txtAddress3.ID = "txtAddress3";
            txtAddress3.CssClass = TextBoxClass;
            txtAddress4.ID = "txtAddress4";
            txtAddress4.CssClass = TextBoxClass;
            txtAddress5.ID = "txtAddress5";
            txtAddress5.CssClass = TextBoxClass;

            DataBindControls();

            txtAddress1.MaxLength = 50;
            txtAddress1.Width = 140;

            txtAddress2.MaxLength = 50;
            txtAddress2.Width = 140;

            txtAddress3.MaxLength = 50;
            txtAddress3.Width = 140;

            txtAddress4.MaxLength = 50;
            txtAddress4.Width = 140;

            txtAddress5.MaxLength = 50;
            txtAddress5.Width = 140;

            #region Layout
            Table table = new Table();

            table.CellPadding = 0;
            table.CellSpacing = 0;
            table.BorderWidth = 0;

            #region First Row
            TableRow rowA = new TableRow();
            TableCell cellA = new TableCell();
            Table table0 = new Table();
            TableRow row0A = new TableRow();
            TableCell cell0A1 = new TableCell();

            Label lblText = new Label();
            lblText.ID = "lblText";
            lblText.Text = FieldText;
            lblText.CssClass = FieldTextClass;

            cell0A1.Controls.Add(lblText);
            row0A.Cells.Add(cell0A1);

            TableCell cell0A1b = new TableCell();

            cell0A1b.Text = "(<font color='red'>*</font>)";
            row0A.Cells.Add(cell0A1b);   

            ImageButton imgHelp = new ImageButton();
            imgHelp.ID = "imgHelp";
            imgHelp.CausesValidation = false;
            imgHelp.Width = 24;
            imgHelp.Height = 24;
            imgHelp.ToolTip = "Ver Ejemplo";
            imgHelp.ImageUrl = "~/_layouts/images/IconHelp.png";
            imgHelp.Click += new ImageClickEventHandler(imgHelp_Click);

            TableCell cell0A2 = new TableCell();

            cell0A2.Controls.Add(imgHelp);
            row0A.Cells.Add(cell0A2);
            table0.Rows.Add(row0A);
            cellA.Controls.Add(table0);
            rowA.Cells.Add(cellA);
            table.Rows.Add(rowA);
            #endregion
            #region Second Row
            TableRow rowB = new TableRow();
            TableCell cellB1 = new TableCell();
            Table tableI = new Table();
            TableRow rowIA = new TableRow();
            TableCell cellIA1 = new TableCell();

            cellIA1.Controls.Add(ddlAddress1);
            rowIA.Cells.Add(cellIA1);

            TableCell cellIA2 = new TableCell();

            cellIA2.Controls.Add(txtAddress1);
            rowIA.Cells.Add(cellIA2);

            TableCell cellIA3 = new TableCell();

            cellIA3.Controls.Add(ddlAddress2);
            rowIA.Cells.Add(cellIA3);

            TableCell cellIA4 = new TableCell();

            cellIA4.Controls.Add(ddlAddress3);
            rowIA.Cells.Add(cellIA4);
            tableI.Rows.Add(rowIA);
            cellB1.Controls.Add(tableI);
            rowB.Cells.Add(cellB1);
            table.Rows.Add(rowB);
            #endregion
            #region Third Row
            TableRow rowC = new TableRow();
            TableCell cellC1 = new TableCell();
            Table tableII = new Table();
            TableRow rowIIA = new TableRow();
            TableCell cellIIA1 = new TableCell();

            Label lblNro = new Label();
            lblNro.CssClass = FieldTextClass;
            lblNro.Text = "Nro.";

            cellIIA1.Controls.Add(lblNro);
            rowIIA.Cells.Add(cellIIA1);

            TableCell cellIIA2 = new TableCell();

            RegularExpressionValidator regExpAddress2 = new RegularExpressionValidator();
            regExpAddress2.ID = "regExpAddress2";
            regExpAddress2.CssClass = ValidatorClass;
            regExpAddress2.Text = "<br />Solo puede ingresar números";
            regExpAddress2.Display = ValidatorDisplay.Dynamic;
            regExpAddress2.ControlToValidate = txtAddress2.ID;
            regExpAddress2.ValidationExpression = @"^[\d]*$";
            regExpAddress2.ValidationGroup = this.ValidationGroup;
            //ValidatorCalloutExtender valExregExpAddress2 = new ValidatorCalloutExtender();
            //valExregExpAddress2.ID = "valExregExpAddress2";
            //valExregExpAddress2.TargetControlID = regExpAddress2.ID;
            //valExregExpAddress2.HighlightCssClass = ValidatorExtenderClass;

            cellIIA2.Controls.Add(txtAddress2);
            cellIIA2.Controls.Add(regExpAddress2);
            //cellIIA2.Controls.Add(valExregExpAddress2);
            rowIIA.Cells.Add(cellIIA2);

            TableCell cellIIA3 = new TableCell();

            cellIIA3.Controls.Add(ddlAddress4);
            rowIIA.Cells.Add(cellIIA3);

            TableCell cellIIA4 = new TableCell();

            cellIIA4.Controls.Add(txtAddress3);
            rowIIA.Cells.Add(cellIIA4);
            tableII.Rows.Add(rowIIA);
            cellC1.Controls.Add(tableII);
            rowC.Cells.Add(cellC1);
            table.Rows.Add(rowC);
            #endregion
            #region Fourth Row
            TableRow rowD = new TableRow();
            TableCell cellD1 = new TableCell();
            Table tableIII = new Table();
            TableRow rowIIIA = new TableRow();
            TableCell cellIIIA1 = new TableCell();

            cellIIIA1.Controls.Add(ddlAddress5);
            rowIIIA.Cells.Add(cellIIIA1);

            TableCell cellIIIA2 = new TableCell();

            cellIIIA2.Controls.Add(txtAddress4);
            rowIIIA.Cells.Add(cellIIIA2);

            TableCell cellIIIA3 = new TableCell();

            cellIIIA3.Controls.Add(ddlAddress6);
            rowIIIA.Cells.Add(cellIIIA3);

            TableCell cellIIIA4 = new TableCell();

            cellIIIA4.Controls.Add(txtAddress5);
            rowIIIA.Cells.Add(cellIIIA4);
            tableIII.Rows.Add(rowIIIA);
            cellD1.Controls.Add(tableIII);
            rowD.Cells.Add(cellD1);
            table.Rows.Add(rowD);
            #endregion
            #region Fifth Row
            TableRow rowE = new TableRow();
            TableCell cellE1 = new TableCell();

            txtValidatorInvisible.ID = "txtValidatorInvisible";
            txtValidatorInvisible.Style.Add("display", "none");

            valDate.ID = "valDate";
            valDate.CssClass = ValidatorClass;
            valDate.ValidationGroup = ValidationGroup;
            valDate.Text = "Dos campos de texto o más deben tener valores";
            valDate.Display = ValidatorDisplay.Dynamic;
            valDate.ControlToValidate = txtAddress1.ID;
            valDate.ValidateEmptyText = true;
            valDate.ClientValidationFunction = string.Format("ValidateAddress{0}", this.ClientID);
            //ValidatorCalloutExtender valExvalDate = new ValidatorCalloutExtender();
            //valExvalDate.ID = "valExvalDate";
            //valExvalDate.TargetControlID = valDate.ID;
            //valExvalDate.HighlightCssClass = ValidatorExtenderClass;

            cellE1.Controls.Add(txtValidatorInvisible);
            cellE1.Controls.Add(valDate);
            //cellE1.Controls.Add(valExvalDate);
            rowE.Cells.Add(cellE1);
            table.Rows.Add(rowE);
            #endregion
            #region Sixth Row
            TableRow rowF = new TableRow();
            TableCell cellF1 = new TableCell();
            Table tableIV = new Table();
            TableRow rowIVA = new TableRow();
            TableCell cellIVA1 = new TableCell();

            UpdatePanel upAddress = new UpdatePanel();
            upAddress.ID = "upAddress";

            imgHelpAddress.ID = "imgHelpAddress";
            imgHelpAddress.ImageUrl = "~/_layouts/images/Ejemplo.JPG";
            imgHelpAddress.Visible = false;

            upAddress.ContentTemplateContainer.Controls.Add(imgHelpAddress);

            AsyncPostBackTrigger upTrigger = new  AsyncPostBackTrigger();

            upTrigger.ControlID = imgHelp.ID;
            upTrigger.EventName = "Click";

            upAddress.Triggers.Add(upTrigger);

            cellIVA1.Controls.Add(upAddress);
            rowIVA.Cells.Add(cellIVA1);
            tableIV.Rows.Add(rowIVA);
            cellF1.Controls.Add(tableIV);
            rowF.Cells.Add(cellF1);
            table.Rows.Add(rowF);

            this.Controls.Add(table);
            #endregion
            #endregion
        }

        protected void imgHelp_Click(object sender, ImageClickEventArgs e)
        {
            imgHelpAddress.Visible = !imgHelpAddress.Visible;
        }

        private void AddAddressJavascriptValidation()
        {
            StringBuilder strBuilder = new StringBuilder();

            strBuilder.AppendLine(string.Format("function ValidateAddress{0} (events, args)", this.ClientID));
            strBuilder.AppendLine("{");
            strBuilder.AppendLine(string.Format("     var AddressComboId = '{0}'; ", txtAddress2.ClientID.Substring(0, txtAddress2.ClientID.Length - 1)));
            strBuilder.AppendLine("     var AddressTxtWithValue = 0;");
            strBuilder.AppendLine("     for(i=1; i <= 5; i++)");
            strBuilder.AppendLine("     {");
            strBuilder.AppendLine("         if(document.getElementById(AddressComboId + i).value.length > 0)");
            strBuilder.AppendLine("         {");
            strBuilder.AppendLine("                 AddressTxtWithValue++;");
            strBuilder.AppendLine("         }");
            strBuilder.AppendLine("     }");
            strBuilder.AppendLine("     if(AddressTxtWithValue < 2)");
            strBuilder.AppendLine("     {");
            strBuilder.AppendLine("          args.IsValid  = false;");
            strBuilder.AppendLine("     }");
            strBuilder.AppendLine("     else");
            strBuilder.AppendLine("     {");
            strBuilder.AppendLine("          args.IsValid = true;");
            strBuilder.AppendLine("     }");
            strBuilder.AppendLine("}");

            Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), string.Format("ValidateAddress{0}", this.ClientID), strBuilder.ToString(), true);

            strBuilder = new StringBuilder();

            strBuilder.AppendLine(string.Format("ValidatorHookupControlID ('{0}', document.getElementById('{1}'));", txtAddress1.ClientID, valDate.ClientID));
            strBuilder.AppendLine(string.Format("ValidatorHookupControlID ('{0}', document.getElementById('{1}'));", txtAddress2.ClientID, valDate.ClientID));
            strBuilder.AppendLine(string.Format("ValidatorHookupControlID ('{0}', document.getElementById('{1}'));", txtAddress3.ClientID, valDate.ClientID));
            strBuilder.AppendLine(string.Format("ValidatorHookupControlID ('{0}', document.getElementById('{1}'));", txtAddress4.ClientID, valDate.ClientID));
            strBuilder.AppendLine(string.Format("ValidatorHookupControlID ('{0}', document.getElementById('{1}'));", txtAddress5.ClientID, valDate.ClientID));

            Page.ClientScript.RegisterStartupScript(Page.GetType(), string.Format("Hookup{0}", this.ClientID), strBuilder.ToString(), true);
        }

        private void DataBindControls()
        {
            SPWeb web = SPContext.Current.Web;

            BLL.AddressBLL addressBLL = new BLL.AddressBLL(web);
            DataSet addressListDS = addressBLL.GetAddressList();
            DataSet addressListLetterDS = addressBLL.GetAddressListLetter();

            ddlAddress1.DataSource = addressListDS;
            ddlAddress1.DataTextField = "Title";
            ddlAddress1.DataValueField = "Title";
            ddlAddress1.DataBind();
            ddlAddress1.Items.Insert(0, new ListItem());

            ddlAddress2.DataSource = addressListLetterDS;
            ddlAddress2.DataTextField = "Title";
            ddlAddress2.DataValueField = "Title";
            ddlAddress2.DataBind();
            ddlAddress2.Items.Insert(0, new ListItem());

            ddlAddress3.DataSource = addressListDS;
            ddlAddress3.DataTextField = "Title";
            ddlAddress3.DataValueField = "Title";
            ddlAddress3.DataBind();
            ddlAddress3.Items.Insert(0, new ListItem());

            ddlAddress4.DataSource = addressListLetterDS;
            ddlAddress4.DataTextField = "Title";
            ddlAddress4.DataValueField = "Title";
            ddlAddress4.DataBind();
            ddlAddress4.Items.Insert(0, new ListItem());

            ddlAddress5.DataSource = addressListDS;
            ddlAddress5.DataTextField = "Title";
            ddlAddress5.DataValueField = "Title";
            ddlAddress5.DataBind();
            ddlAddress5.Items.Insert(0, new ListItem());

            ddlAddress6.DataSource = addressListDS;
            ddlAddress6.DataTextField = "Title";
            ddlAddress6.DataValueField = "Title";
            ddlAddress6.DataBind();
            ddlAddress6.Items.Insert(0, new ListItem());
        }
    }
}

