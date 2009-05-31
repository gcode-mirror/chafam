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
using System.Text.RegularExpressions;

namespace CAFAM.WebPortal.WebUI
{
    public class TelephoneControl : CompositeControl
    {
        private TextBox txtTel = new TextBox();

        #region Properties
        public bool Required { get; set; }
        public string ValidationGroup { get; set; }
        public string ValidatorsCSSClass { get; set; }
        public string ValidatorExtenderClass { get; set; }
        public string TextBoxCSSClass { get; set; }

        public string Tel
        {
            get
            {
                string textTel = txtTel.Text;
                string returnVale = string.Empty;

                for (int i = 0; i <= textTel.Length -1; i++)
                {
                    int intOut;

                    if(int.TryParse(textTel.Substring(i, 1), out  intOut))
                    {
                        returnVale += intOut.ToString();
                    }
                }

                return returnVale;
            }
            set
            {
                txtTel.Text = value;
            }
        }
        #endregion

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            CreateControls();
        }

        private void CreateControls()
        {
            Table table = new Table();
            table.CellPadding = 0;
            table.CellSpacing = 0;
            table.BorderWidth = 0;

            TableRow row = new TableRow();
            TableCell cell = new TableCell();

            txtTel.ID = "txtTel";
            txtTel.MaxLength = 14;
            txtTel.CssClass = TextBoxCSSClass;
            cell.Controls.Add(txtTel);

            TableCell cell1 = new TableCell();

            CreateValidators(cell1);

            row.Cells.Add(cell);         
            table.Rows.Add(row);

            TableRow row1 = new TableRow();
            row1.Cells.Add(cell1);
            table.Rows.Add(row1);

            this.Controls.Add(table);
        }

        private void CreateValidators(TableCell cell)
        {
            if (Required)
            {
                RequiredFieldValidator reqTel = new RequiredFieldValidator();
                reqTel.ID = "reqTel";
                reqTel.ControlToValidate = txtTel.ID;
                reqTel.CssClass = ValidatorsCSSClass;
                reqTel.ValidationGroup = ValidationGroup;
                reqTel.Text = "Requerido";
                reqTel.Display = ValidatorDisplay.Dynamic;
                cell.Controls.Add(reqTel);
                //ValidatorCalloutExtender valExreqTel = new ValidatorCalloutExtender();
                //valExreqTel.ID = "valExreqTel";
                //valExreqTel.TargetControlID = reqTel.ID;
                //valExreqTel.HighlightCssClass = ValidatorExtenderClass;
                //cell.Controls.Add(valExreqTel);
            }

            RegularExpressionValidator regExpMinTel = new RegularExpressionValidator();
            regExpMinTel.ID = "regExpMinTel";
            regExpMinTel.ControlToValidate = txtTel.ID;
            regExpMinTel.CssClass = ValidatorsCSSClass;
            regExpMinTel.ValidationGroup = ValidationGroup;
            //regExpMinTel.Text = "Debe ingresar al menos 7 caracteres válidos";
            regExpMinTel.Text = "Dato inválido. Ejemplos de formatos aceptados: (57)(1)646-8000, 6468000, 646 8000.";            
            regExpMinTel.Display = ValidatorDisplay.Dynamic;
            regExpMinTel.ValidationExpression = @"^[\d\(\)\-\s._+]{7,}$";
            cell.Controls.Add(regExpMinTel);
            //ValidatorCalloutExtender valExregExpMinTel = new ValidatorCalloutExtender();
            //valExregExpMinTel.ID = "valExreqTel";
            //valExregExpMinTel.TargetControlID = regExpMinTel.ID;
            //valExregExpMinTel.HighlightCssClass = ValidatorExtenderClass;
            //cell.Controls.Add(valExregExpMinTel);
        }

        public bool Compare(string telToCompare)
        {
            string telControl;
            if (Tel.Length >= 7)
            {
                telControl = Tel.Substring(Tel.Length - 7);
            }
            else
            {
                telControl = Tel;
            }

            return telControl == telToCompare;
        }
    }
}
