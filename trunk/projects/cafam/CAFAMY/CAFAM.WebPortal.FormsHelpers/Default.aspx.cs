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

namespace CAFAM.WebPortal.FormsHelpers
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebServiceProfiles web = new WebServiceProfiles();
            lbl.Text = web.GetProfile("cafam\\sqlservisql92").Age.ToString();
        }
    }
}
