using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.SharePoint.WebControls;
using System.Drawing;
using System.Web;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI;
using AjaxControlToolkit;

namespace CAFAM.WebPortal.WebUI
{
    public class DateTimeCustomControl: CompositeControl
    {
        public bool Required { get; set; }
        public string ValidationGroup { get; set; }
        public string ValidatorsCSSClass { get; set; }
        private TextBox txtDate = new TextBox();
        public DateTime? Date 
        {
            get
            {
                string strDate = txtDate.Text;
                DateTime date;

                if (!string.IsNullOrEmpty(strDate) && DateTime.TryParse(string.Format("{0}-{1}-{2}",  strDate.Split('/')[2], strDate.Split('/')[1], strDate.Split('/')[0]), out date))
                {
                    return date;
                }
                else
                {
                    return null;
                }
            }
            set
            {
                TextBox txtDate = (TextBox)this.FindControl("txtDate");
                if(value != null)
                {
                    txtDate.Text = ((DateTime)value).ToString("dd/MM/yyyy");
                }
            }
        }

        public bool ReadOnly { get; set; }
        public bool AjaxFunctionality { get; set; }
        public bool LessOrEqualThanNow { get; set; }
        public string ValidatorExtenderClass { get; set; }
        public string TextBoxCSSClass { get; set; }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            if (AjaxFunctionality)
                CreateAjaxControls();
            else
                CreateNonAjaxControls();
        }

        private void CreateAjaxControls()
        {
            UpdatePanel up = new UpdatePanel();    
            up.ID = "updatePanelDate";

            Table table = new Table();
            table.CellPadding = 0;
            table.CellSpacing = 0;
            table.BorderWidth = 0;

            TableRow row1 = new TableRow();
            TableCell cell1 = new TableCell();

            txtDate.ID = "txtDate";
            //txtDate.AutoPostBack = true;
            //txtDate.TextChanged += new EventHandler(txtDate_TextChanged);
            txtDate.ReadOnly = this.ReadOnly;
            txtDate.CssClass = TextBoxCSSClass;
            cell1.Controls.Add(txtDate);

            //AjaxControlToolkit.TextBoxWatermarkExtender txtWaterMark = new TextBoxWatermarkExtender();
            //txtWaterMark.ID = "txtWaterMark";
            //txtWaterMark.TargetControlID = txtDate.ID;
            //txtWaterMark.WatermarkText = "DD/MM/AAAA";
            //txtWaterMark.WatermarkCssClass = "watermarked";
            //cell1.Controls.Add(txtWaterMark);

            ImageButton btnShowCalendar = new ImageButton();
            btnShowCalendar.ImageUrl = "~/_layouts/images/calendar.gif";
            btnShowCalendar.ID = "btnShowCalendar";
            btnShowCalendar.Enabled = !this.ReadOnly;
            cell1.Controls.Add(btnShowCalendar);

            CalendarExtender calendarExt = new CalendarExtender();
            calendarExt.ID = "calendarExt";
            calendarExt.PopupButtonID = btnShowCalendar.ID;
            calendarExt.TargetControlID = txtDate.ID;
            calendarExt.Format = "dd/MM/yyyy";
            //calendarExt.
            cell1.Controls.Add(calendarExt);

            TableCell cell2 = new TableCell();

            AddValidators(ref cell2);

            row1.Cells.Add(cell1);

            table.Rows.Add(row1);

            TableRow row2 = new TableRow();

            row2.Cells.Add(cell2);

            table.Rows.Add(row2);

            up.ContentTemplateContainer.Controls.Add(table);

            this.Controls.Add(up);

            CustomValidatorJavascriptValidation();
        }

        private void CreateNonAjaxControls()
        {
            Table table = new Table();
            table.CellPadding = 0;
            table.CellSpacing = 0;
            table.BorderWidth = 0;

            TableRow row1 = new TableRow();
            TableCell cell1 = new TableCell();

            //TextBox txtDate = new TextBox();
            txtDate.ID = "txtDate";
            txtDate.AutoPostBack = true;
            txtDate.TextChanged += new EventHandler(txtDate_TextChanged);
            txtDate.ReadOnly = this.ReadOnly;
            cell1.Controls.Add(txtDate);

            HtmlImage btnShowCalendar = new HtmlImage();
            btnShowCalendar.Src = "./_layouts/images/calendar.gif";
            btnShowCalendar.ID = "btnShowCalendar";
            btnShowCalendar.Style.Add("cursor", "hand");
            if (!ReadOnly)
            {
                btnShowCalendar.Attributes.Add("onclick", "ShowCalendar" + this.ClientID + "();return false;");
            }
            cell1.Controls.Add(btnShowCalendar);

            //To add a space between the image and the message of the validators
            cell1.Controls.Add(new Label());

            TableRow row2 = new TableRow();
            row2.ID = "calendarRow";
            row2.Style.Add("display", "none");
            row2.Style.Add("position", "absolute");
            row2.Style.Add("z-index", "1000");

            TableCell cell2 = new TableCell();

            Calendar calendar = new Calendar();
            calendar.ID = "calendar";
            calendar.Style.Add("z-index", "1");
            calendar.SelectionChanged += new EventHandler(calendar_SelectionChanged);
            calendar.VisibleMonthChanged += new MonthChangedEventHandler(calendar_VisibleMonthChanged);
            calendar.Width = 180;
            calendar.Height = 150;
            calendar.SelectionMode = CalendarSelectionMode.Day;
            calendar.BorderColor = System.Drawing.Color.DarkBlue;
            calendar.SelectionMode = CalendarSelectionMode.Day;
            calendar.BackColor = System.Drawing.Color.White;
            calendar.DayStyle.Font.Size = 8;
            calendar.DayStyle.BackColor = System.Drawing.Color.LightBlue;
            calendar.CellPadding = 1;
            calendar.CellSpacing = 1;
            calendar.TitleStyle.Font.Size = 10;
            calendar.TitleStyle.Font.Bold = true;
            calendar.OtherMonthDayStyle.BackColor = System.Drawing.Color.DarkBlue;
            calendar.OtherMonthDayStyle.ForeColor = System.Drawing.Color.White;

            HtmlGenericControl iframe = new HtmlGenericControl("iframe");
            iframe.ID = "iFrameCalendar";
            iframe.Style.Add("position", "absolute");
            iframe.Style.Add("z-index", "-1");
            iframe.Style.Add("filter", "mask()");
            iframe.Style.Add("border", "0");
            iframe.Style.Add("margin", "0");
            iframe.Style.Add("padding", "0");
            iframe.Style.Add("top", "0");
            iframe.Style.Add("left", "0");
            iframe.Style.Add("width", string.Format("{0}px", calendar.Width));
            iframe.Style.Add("height", string.Format("{0}px", calendar.Height));
            iframe.Style.Add("overflow", "hidden");

            cell2.Controls.Add(calendar);
            cell2.Controls.Add(iframe);

            AddValidators(ref cell1);

            row1.Cells.Add(cell1);
            row2.Cells.Add(cell2);

            table.Rows.Add(row1);
            table.Rows.Add(row2);

            this.Controls.Add(table);

            StringBuilder strBuilder = new StringBuilder();

            strBuilder.Append("function ShowCalendar" + this.ClientID + "()" + Environment.NewLine);
            strBuilder.Append("{" + Environment.NewLine);
            strBuilder.Append("    if (document.getElementById('" + row2.ClientID + "').style.display == 'none')" + Environment.NewLine);
            strBuilder.Append("        document.getElementById('" + row2.ClientID + "').style.display = '';" + Environment.NewLine);
            strBuilder.Append("    else" + Environment.NewLine);
            strBuilder.Append("        document.getElementById('" + row2.ClientID + "').style.display = 'none';" + Environment.NewLine);
            strBuilder.Append(" }" + Environment.NewLine);

            this.Page.ClientScript.RegisterClientScriptBlock(this.Page.GetType(), "ShowCalendar" + this.ClientID, strBuilder.ToString(), true);

            CustomValidatorJavascriptValidation();
        }

        private void AddValidators(ref TableCell cell)
        {
            if (Required && !ReadOnly)
            {
                RequiredFieldValidator reqDate = new RequiredFieldValidator();
                reqDate.ID = "reqDate";
                reqDate.ValidationGroup = ValidationGroup;
                reqDate.Text = "Requerido";
                reqDate.Display = ValidatorDisplay.Dynamic;
                reqDate.ControlToValidate = txtDate.ID;
                reqDate.CssClass = ValidatorsCSSClass;
                cell.Controls.Add(reqDate);
                //ValidatorCalloutExtender valExreqDate = new ValidatorCalloutExtender();
                //valExreqDate.ID = "valExreqDate";
                //valExreqDate.TargetControlID = reqDate.ID;
                //valExreqDate.HighlightCssClass = ValidatorExtenderClass;
                //cell.Controls.Add(valExreqDate);
            }

            if (LessOrEqualThanNow)
            {
                CustomValidator valLessEqualDate = new CustomValidator();
                valLessEqualDate.ID = "valLessEqualDate";
                valLessEqualDate.Text = "La fecha seleccionada no pude ser mayor a hoy";
                valLessEqualDate.Display = ValidatorDisplay.Dynamic;
                valLessEqualDate.ValidationGroup = ValidationGroup;
                valLessEqualDate.CssClass = ValidatorsCSSClass;
                valLessEqualDate.ClientValidationFunction = "ValidateDateLessThanNow" + this.ClientID;
                valLessEqualDate.ControlToValidate = txtDate.ID;
                cell.Controls.Add(valLessEqualDate);
                //ValidatorCalloutExtender valExvalLessEqualDate = new ValidatorCalloutExtender();
                //valExvalLessEqualDate.ID = "valExvalLessEqualDate";
                //valExvalLessEqualDate.TargetControlID = valLessEqualDate.ID;
                //valExvalLessEqualDate.HighlightCssClass = ValidatorExtenderClass;
                //cell.Controls.Add(valExvalLessEqualDate);
            }

            CustomValidator valInvalidDate = new CustomValidator();
            valInvalidDate.ID = "valInvalidDate";
            valInvalidDate.Text = "Fecha Inválida";
            valInvalidDate.Display = ValidatorDisplay.Dynamic;
            valInvalidDate.ValidationGroup = ValidationGroup;
            valInvalidDate.CssClass = ValidatorsCSSClass;
            valInvalidDate.ClientValidationFunction = "ValidateCustomDate" + this.ClientID ;
            valInvalidDate.ControlToValidate = txtDate.ID;
            cell.Controls.Add(valInvalidDate);
            //ValidatorCalloutExtender valExvalInvalidDate = new ValidatorCalloutExtender();
            //valExvalInvalidDate.ID = "valExvalInvalidDate";
            //valExvalInvalidDate.TargetControlID = valInvalidDate.ID;
            //valExvalInvalidDate.HighlightCssClass = ValidatorExtenderClass;
            //cell.Controls.Add(valExvalInvalidDate);         
        }

        protected void calendar_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            ((Calendar)sender).Style.Add("display", "");
        }

        protected void calendar_SelectionChanged(object sender, EventArgs e)
        {
            //TextBox txtDate = (TextBox)this.FindControl("txtDate");
            Calendar calendar = (Calendar)sender;

            txtDate.Text = calendar.SelectedDate.ToString("yyyy-MM-dd");
        }

        protected void txtDate_TextChanged(object sender, EventArgs e)
        {
            string strDate = ((TextBox)sender).Text;
            DateTime dtDate = new DateTime();

            CustomValidator valInvalidDate = (CustomValidator)this.FindControl("valInvalidDate");

            if (!AjaxFunctionality)
            {
                Calendar calendar = (Calendar)this.FindControl("calendar");
                calendar.Style.Add("display", "none");
            }


            if (!string.IsNullOrEmpty(strDate))
            {
                if (!DateTime.TryParse(strDate, out dtDate))
                {
                    valInvalidDate.IsValid = false;
                    if (!AjaxFunctionality)
                    {
                        Calendar calendar = (Calendar)this.FindControl("calendar");
                        calendar.SelectedDates.Clear();
                    }
                    valInvalidDate.ClientValidationFunction = "ValidateCustomDateFalse";
                }
                else
                {
                    valInvalidDate.IsValid = true;
                    if (!AjaxFunctionality)
                    {
                        Calendar calendar = (Calendar)this.FindControl("calendar");
                        calendar.SelectedDate = dtDate;
                    }

                    valInvalidDate.ClientValidationFunction = "ValidateCustomDateTrue";
                }
            }
            else
            {
                if (Required && !ReadOnly)
                {
                    RequiredFieldValidator reqDate = (RequiredFieldValidator)this.FindControl("reqDate");
                    reqDate.Validate();
                }
            }
        }

        protected void CustomValidatorJavascriptValidation()
        {

            StringBuilder strBuilder = new StringBuilder();

            strBuilder.Append("function ValidateCustomDate" + this.ClientID + "(events, args)" + Environment.NewLine);
            strBuilder.Append("{" + Environment.NewLine);
            strBuilder.Append("   var txtValue = document.getElementById('" + txtDate.ClientID + "').value" + Environment.NewLine);
            strBuilder.Append(@" var validformat=/^\d{2}\/\d{2}\/\d{4}$/" + Environment.NewLine);
            strBuilder.Append("    var returnval = false" + Environment.NewLine);
            strBuilder.Append("   if (validformat.test(txtValue))" + Environment.NewLine);
            strBuilder.Append("    {" + Environment.NewLine);
            strBuilder.Append("        var dayfield = txtValue.split('/')[0]" + Environment.NewLine);
            strBuilder.Append("        var monthfield = txtValue.split('/')[1]" + Environment.NewLine);
            strBuilder.Append("        var yearfield = txtValue.split('/')[2]" + Environment.NewLine);
            strBuilder.Append("        var dayobj = new Date(yearfield, monthfield-1, dayfield)" + Environment.NewLine);
            strBuilder.Append("        if ((dayobj.getMonth()+1==monthfield)||(dayobj.getDate() ==dayfield)||(dayobj.getFullYear() ==yearfield))" + Environment.NewLine);
            strBuilder.Append("        {" + Environment.NewLine);
            strBuilder.Append("            returnval = true" + Environment.NewLine);
            strBuilder.Append("        }" + Environment.NewLine);
            strBuilder.Append("    }" + Environment.NewLine);
            strBuilder.Append("    args.IsValid = returnval" + Environment.NewLine);
            strBuilder.Append("}" + Environment.NewLine);

            this.Page.ClientScript.RegisterClientScriptBlock(this.Page.GetType(), "ValidateCustomDate" + this.ClientID, strBuilder.ToString(), true);

            if (LessOrEqualThanNow)
            {
                strBuilder = new StringBuilder();
                strBuilder.Append("function ValidateDateLessThanNow" + this.ClientID + "(events, args)" + Environment.NewLine);
                strBuilder.Append("{" + Environment.NewLine);
                strBuilder.Append("   var txtValue = document.getElementById('" + txtDate.ClientID + "').value" + Environment.NewLine);
                strBuilder.Append(@" var validformat=/^\d{2}\/\d{2}\/\d{4}$/" + Environment.NewLine);
                strBuilder.Append("    var returnval = true" + Environment.NewLine);
                strBuilder.Append("   if (validformat.test(txtValue))" + Environment.NewLine);
                strBuilder.Append("    {" + Environment.NewLine);
                strBuilder.Append("        var dayfield = txtValue.split('/')[0]" + Environment.NewLine);
                strBuilder.Append("        var monthfield = txtValue.split('/')[1]" + Environment.NewLine);
                strBuilder.Append("        var yearfield = txtValue.split('/')[2]" + Environment.NewLine);
                strBuilder.Append("        var dayobj = new Date(yearfield, monthfield-1, dayfield)" + Environment.NewLine);
                strBuilder.Append("        if ((dayobj.getMonth()+1==monthfield)||(dayobj.getDate() ==dayfield)||(dayobj.getFullYear() ==yearfield))" + Environment.NewLine);
                strBuilder.Append("        {" + Environment.NewLine);
                strBuilder.Append("            var now = new Date()" + Environment.NewLine);
                strBuilder.Append("            if (dayobj > now)" + Environment.NewLine);
                strBuilder.Append("            {" + Environment.NewLine);
                strBuilder.Append("                returnval = false" + Environment.NewLine);
                strBuilder.Append("            }" + Environment.NewLine);              
                strBuilder.Append("        }" + Environment.NewLine);
                strBuilder.Append("    }" + Environment.NewLine);
                strBuilder.Append("    args.IsValid = returnval" + Environment.NewLine);
                strBuilder.Append("}" + Environment.NewLine);

                this.Page.ClientScript.RegisterClientScriptBlock(this.Page.GetType(), "ValidateDateLessThanNow" + this.ClientID, strBuilder.ToString(), true);
            }
        }
    }
}
