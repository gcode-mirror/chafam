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

namespace CAFAM.WebPortal.FormsHelpers
{
    /// <summary>
    /// Summary description for InscripcionCafamiguitos
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class InscripcionCafamiguitos : System.Web.Services.WebService
    {

        [WebMethod]
        public string GetInscriptionNumber()
        {
            System.Data.SqlClient.SqlDataReader reader = SqlHelper.ExecuteReader(
                System.Configuration.ConfigurationManager.AppSettings["SQLConnectionString"],
                CommandType.StoredProcedure, "uspFormInscripcionCafamiguitos_GetNewInscriptionNumber");

            reader.Read();
        
            string inscriptionNumber = reader["InscriptionNumber"].ToString();

            reader.Close();

            return inscriptionNumber;
        }
    }
}
