using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace CAFAM.WebPortal.XMLReceiver
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
        }
    }
}
