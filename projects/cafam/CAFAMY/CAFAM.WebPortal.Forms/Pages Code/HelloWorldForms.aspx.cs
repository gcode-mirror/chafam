using System;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Microsoft.SharePoint;

namespace Cafam.WebPortal.Forms
{
    public class HelloWorldForms : System.Web.UI.Page
    {
        protected Label lblHelloWorld;

        protected void Page_Load(object sender, EventArgs e)
        {
            lblHelloWorld.Text = "Feature de Formularios!";
        }
    }
}