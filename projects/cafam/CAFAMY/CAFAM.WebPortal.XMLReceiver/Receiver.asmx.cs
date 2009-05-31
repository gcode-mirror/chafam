using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;
using Microsoft.ApplicationBlocks.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace CAFAM.WebPortal.XMLReceiver
{
    /// <summary>
    /// Summary description for Receiver
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Receiver : System.Web.Services.WebService
    {

        [WebMethod]
        public void SaveToDB(string xml)
        {

            //System.IO.File.AppendAllText("C:\\la\\XML.txt", "---------------\r\n" + xml);
            int iErrCod = 0;
            string SQLScript;
            string Error = null;

            SQLScript = FieldsDefinitionParser.CreateSQLScript(xml, ref iErrCod);
            //if (SQLSt == null)
            //{
            //    System.IO.File.AppendAllText("C:\\XMLReceiverDocs\\ErrorLog.txt", "Error Ocurred: Code " + iErrCod.ToString());
            //}
            //else
            if (string.IsNullOrEmpty(SQLScript))
                throw new Exception ("Script could not be created");

            try
            {
                SqlHelper.ExecuteNonQuery(ConfigurationSettings.AppSettings["SQLConnectionString"], CommandType.Text, SQLScript);
            }
            catch(Exception ex)
            {
                throw new Exception ("Script could not be executed");
            }
        }

        [WebMethod]
        public void SaveToDBNew(string xml)
        {
            using (SqlConnection sqlConnection = new SqlConnection(ConfigurationSettings.AppSettings["SQLConnectionString"]))
            {
                try
                {
                    sqlConnection.Open();
                    FieldsParser information = new FieldsParser(xml);
                    string formName = information.GetFormName();
                    SqlWriter sqlWriter = new SqlWriter();
                    sqlWriter.ParseXmlConfigData(ConfigurationSettings.AppSettings["FormsFieldsDefinitionXMLFile"], formName);
                    information.ExplodeXML(sqlWriter.MasterNodeName, sqlWriter.DetailNodeNames);
                    sqlWriter.SqlConn = sqlConnection;
                    sqlWriter.Write(information, formName);
                }
                catch (Exception exception)
                {
                    Console.WriteLine(exception.ToString());
                }
                finally
                {
                    sqlConnection.Close();
                }
            }
        }
    }
}

