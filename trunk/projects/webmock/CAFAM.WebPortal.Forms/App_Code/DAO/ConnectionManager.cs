using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace DAO
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

            conn = new SqlConnection(stringConection);
            conn.Open();

            try
            {
                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }
            }
            catch (System.Exception ex)
            {
                ex.Message.ToString();
            }
            return conn;
        }

        public static void closeCnn()
        {
            if (conn != null)
            {
                conn.Close();
            }
            try
            {
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    conn.Close();
                }
            }
            catch (System.Exception ex)
            {

            }
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }


        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
            }
            conn.Close();
            conn = null;
        }
    }
}
