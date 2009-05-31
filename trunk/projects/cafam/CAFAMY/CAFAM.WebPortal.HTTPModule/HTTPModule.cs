using System; 
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using Microsoft.SharePoint;
using System.Web.Security;
using System.Configuration;

namespace CAFAM.WebPortal.HTTPModule
{
    public class HTTPModule : IHttpModule
    {
        public void Dispose()
        {
        }

        private Page PageObject { get; set; }

        public void Init(HttpApplication context)
        {
            context.PreRequestHandlerExecute += new EventHandler(context_PreRequestHandlerExecute);
        }

        void context_PreRequestHandlerExecute(object sender, EventArgs e)
        {
            HttpApplication httpApplication = sender as HttpApplication;
            if (httpApplication != null && httpApplication.Context != null && httpApplication.Context.CurrentHandler != null)
            {
                Page page = httpApplication.Context.CurrentHandler as Page;
                if (page != null)
                {
                    PageObject = page;
                    page.LoadComplete+=new EventHandler(page_LoadComplete);
                }
            }
        }

        void page_LoadComplete(object sender, EventArgs e)
        {
            SPWeb web = SPContext.Current.Web;
            if (web != null && web.CurrentUser == null)
            {
                FormsAuthentication.SetAuthCookie(ConfigurationManager.AppSettings["AnonUserName"], true);
                PageObject.Response.Redirect(PageObject.Request.Url.AbsolutePath, true);
            }          
        }


    }
}
