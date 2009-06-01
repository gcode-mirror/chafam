using System;
using System.Collections.Generic;
using System.Configuration;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace CAFAM.WebPortal.Forms
{
    public class ConnectionManager
    {
        private static string stringConection;
        private static System.Data.SqlClient.SqlConnection conn = null;


        static ConnectionManager()
        {
            stringConection = System.Configuration.ConfigurationSettings.AppSettings["conexion"].ToString();
        }

        public static System.Data.SqlClient.SqlConnection getCnn()
        {
           return new SqlConnection(stringConection);
        }

    }
}
