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

namespace CAFAM.WebPortal.User
{
    public class FormServerExt : System.Web.UI.Page
    {
        protected Label lblHelloWorld;

        protected void Page_Load(object sender, EventArgs e)
        {
            string formID = Request.QueryString["FormID"];
            string fGUID = Request.QueryString["FGUID"];
            string form = Request.QueryString["FORM"];

            string url = ConfigurationManager.AppSettings[string.Format("Form{0}", formID)];

            string userNameToEncrypt = string.Empty;

            if (SPContext.Current.Web.CurrentUser.LoginName != ConfigurationManager.AppSettings["AnonUserName"])
            {
                userNameToEncrypt = SPContext.Current.Web.CurrentUser.LoginName;
            }
            string userName = Server.UrlEncode(Commons.CryptographicService.Encrypt(userNameToEncrypt));

            string urlBefore = url.Substring(0, url.IndexOf("?") + 1);
            string urlAfter = url.Substring(url.IndexOf("?") + 1);

            Response.Redirect(string.Format("{0}UserName={1}&FGUID={2}&FORM={3}&{4}", urlBefore, userName, fGUID, form, urlAfter));
        }
    }
}
