using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;
using CAFAM.WebPortal.DAO;
using System.Data;

namespace CAFAM.WebPortal.Forms
{
    public partial class rptVisualizadorReporte : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            FormAfiliacionEmpresa AfiliacionEmpresa = (FormAfiliacionEmpresa)Session["AfiliacionEmpresa"];
            IList<FormAfiliacionEmpresa> lstAfiliacionEmpresa = new List<FormAfiliacionEmpresa>();
            lstAfiliacionEmpresa.Add(AfiliacionEmpresa);
          
            ReportDataSource datasource = new ReportDataSource("DataSet1_Empresas", lstAfiliacionEmpresa);
            rptVisualizadorReport.LocalReport.DataSources.Clear();
            rptVisualizadorReport.LocalReport.DataSources.Add(datasource);
            rptVisualizadorReport.LocalReport.Refresh();
        }
    }
}
