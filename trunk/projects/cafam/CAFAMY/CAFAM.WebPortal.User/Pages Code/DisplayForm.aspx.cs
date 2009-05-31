using System;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using CAFAM.WebPortal.Commons;
using System.Xml;

namespace CAFAM.WebPortal.User
{
     public class _DisplayForm : System.Web.UI.Page
    {
         protected Label lblHelloWorld;
        protected FormView MyForm;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string sForm = Page.Request.Params["Form"];
            string sURL = FormsConfig.GetURL(sForm, Page);
            if (!string.IsNullOrEmpty(sURL))
            {
                lblHelloWorld.Text = sURL;
            }
            else
            {
                lblHelloWorld.Text = "No se pudo leer la URL!";
            }
        }
    }
}