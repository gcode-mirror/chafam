using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;
using System.Data;

namespace ProtipoWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

            DataSet thisDataSet = RecolectarDatos();
            ReportDataSource datasource = new ReportDataSource("DataSet1_Employees", thisDataSet.Tables[0]);
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(datasource);
            ReportViewer1.LocalReport.Refresh();

        }
        protected DataSet RecolectarDatos()
        {
            DataSet m_oDs2 = new DataSet();
            DataTable oDt = new DataTable("Employees");
            DataRow oRow;

            //-- Create the table
            oDt.Columns.Add("EmployeeID",
                System.Type.GetType("System.Int32"));
            oDt.Columns.Add("FirstName",
                System.Type.GetType("System.String"));
            oDt.Columns.Add("LastName",
                System.Type.GetType("System.String"));
            oDt.Constraints.Add("PK_Employees", oDt.Columns["EmployeeID"],
                true);
            oDt.Columns["EmployeeID"].AutoIncrement = true;
            oDt.Columns["EmployeeID"].AutoIncrementSeed = -1000;
            oDt.Columns["EmployeeID"].AutoIncrementStep = -1;
            m_oDs2.Tables.Add(oDt);

            //-- Add the rows
            oRow = m_oDs2.Tables["Employees"].NewRow();
            oRow["FirstName"] = "Lloyd";
            oRow["LastName"] = "Llamas";
            m_oDs2.Tables["Employees"].Rows.Add(oRow);
            oRow = m_oDs2.Tables["Employees"].NewRow();
            oRow["FirstName"] = "Layla";
            oRow["LastName"] = "Lewis";
            m_oDs2.Tables["Employees"].Rows.Add(oRow);

            return m_oDs2;
            

            
            
        }
    }
}
