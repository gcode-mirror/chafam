using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using System.Web.UI;
using Microsoft.ApplicationBlocks.Data;

namespace CAFAM.WebPortal.Commons
{
    public class FormsConfig
    {
        public const string FORM_PLAYER_URL = "_layouts/FormServer.aspx";
        public const string FORM_PLAYER_XSNPARAMNAME = "XsnLocation=";

        public static string GetServer(System.Web.UI.Page Pge)
        {
            return Pge.Request.Url.AbsoluteUri.Substring(0,
                Pge.Request.Url.AbsoluteUri.IndexOf(Pge.Request.Url.LocalPath));
        }

        public static string GetFrmName(XmlNode Node)
        {
            string sCurrName = null;
            try
            {
                sCurrName = Node.Attributes["name"].Value;
            }
            catch { }
            return sCurrName;
        }

        public static string GetURL(string sFormName, System.Web.UI.Page Pge)
        {
            using (new Impersonator(WAL.GetEncKey("ImpUserName"), WAL.GetEncKey("ImpDomain"), WAL.GetEncKey("ImpPwd")))
            {
                //FormServerTemplates
                if (string.IsNullOrEmpty(sFormName))
                    return null;
                string xmlConfigPath = ConfigurationSettings.AppSettings["FormsFieldsDefinitionXMLURL"];
                if (string.IsNullOrEmpty(xmlConfigPath))
                    return null;

                try
                {
                    XmlDocument XMLTemp = new XmlDocument();
                    XMLTemp.Load(xmlConfigPath);

                    string sCurrentNodeName = null;

                    // Get the corresponding URL now
                    sFormName = sFormName.Trim().ToUpper();
                    XmlNodeList NodeList = XMLTemp.GetElementsByTagName("Form");
                    foreach (XmlNode xNode in NodeList)
                    {
                        sCurrentNodeName = GetFrmName(xNode);

                        if (!string.IsNullOrEmpty(sCurrentNodeName))

                            if (!string.IsNullOrEmpty(sCurrentNodeName))
                            {
                                sCurrentNodeName = sCurrentNodeName.Trim().ToUpper();

                                if (sCurrentNodeName.Equals(sFormName))
                                {
                                    Guid GUID = Guid.NewGuid();
                                    string sGUID = GUID.ToString();

                                    string ServerUrl = FormsConfig.GetServer(Pge);
                                    string sFinalURL = null;

                                    string sFormTempURL = xNode.Attributes["FormUrl"].Value.Trim();
                                    if (!sFormTempURL.Contains("FormServerTemplates"))
                                    {
                                        sFinalURL = sFormTempURL + "&FGUID=" + sGUID + "&FORM=" + sFormName;
                                    }
                                    else
                                    {
                                        sFinalURL = ServerUrl + "/" + FORM_PLAYER_URL + "?" + FORM_PLAYER_XSNPARAMNAME +
                                             ServerUrl + "/" + sFormTempURL.Replace('#', '&') +
                                             "&FGUID=" + sGUID + "&FORM=" + sFormName;
                                    }

                                    string sStoredInsert = ConfigurationSettings.AppSettings["CaptchaInsertStoredProc"];
                                    if (string.IsNullOrEmpty(sStoredInsert))
                                        return null;

                                    SqlParameter[] sqlPrm = new SqlParameter[2];
                                    sqlPrm[0] = new SqlParameter("@GUID", SqlDbType.UniqueIdentifier);
                                    sqlPrm[0].Value = GUID;
                                    sqlPrm[0].Direction = ParameterDirection.Input;
                                    sqlPrm[1] = new SqlParameter("@FormName", SqlDbType.VarChar);
                                    sqlPrm[1].Value = sFormName;
                                    sqlPrm[1].Direction = ParameterDirection.Input;
                                    int n = SqlHelper.ExecuteNonQuery(ConfigurationSettings.AppSettings["SQLConnectionString"], CommandType.StoredProcedure, sStoredInsert, sqlPrm);

                                    return (sFinalURL);
                                }
                            }
                    }
                }
                catch
                {
                }
            }
            return null;
        }
    }
}
