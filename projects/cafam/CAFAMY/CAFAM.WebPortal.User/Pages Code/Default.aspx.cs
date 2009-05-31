using System;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace CAFAM.WebPortal.User
{
    public class _Default : System.Web.UI.Page
    {
        protected Label lblHelloWorld;

        protected void Page_Load(object sender, EventArgs e)
        {
            System.Security.Principal.WindowsIdentity identity = System.Security.Principal.WindowsIdentity.GetCurrent();
            lblHelloWorld.Text = identity.Name;
        }
    }
}
