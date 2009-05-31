using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;
using Microsoft.SharePoint;
using System.Configuration;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.FormsHelpers
{
    /// <summary>
    /// Summary description for WebServiceProfiles
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebServiceProfiles : System.Web.Services.WebService
    {
      [WebMethod]
        public Entities.User GetProfile(string profile)
        {
            Entities.User entitiesUser = new Entities.User();
            if (!string.IsNullOrEmpty(profile))
            {
                SPSite site = new SPSite(ConfigurationManager.AppSettings["MOSSSite"]);
                BLL.UserBLL userBBL = new CAFAM.WebPortal.BLL.UserBLL(site.OpenWeb());
                entitiesUser = userBBL.GetUser(profile);
            }
            return entitiesUser;
      }
    }
}
