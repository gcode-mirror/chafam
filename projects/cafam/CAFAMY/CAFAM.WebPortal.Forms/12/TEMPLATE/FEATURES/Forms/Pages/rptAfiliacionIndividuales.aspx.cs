using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;
using System.Data;
using CAFAM.WebPortal.Commons;
using System.Configuration;

namespace CAFAM.WebPortal.Forms
{
    public partial class rptAfiliacionIndividuales : System.Web.UI.Page
    {
        protected ReportViewer rptVisualizadorReport;

        protected void Page_Load(object sender, EventArgs e)
        {
            EntAfiliacionIndividuales AfiliacionIndividuales = (EntAfiliacionIndividuales)Session["AfiliacionIndividuales"];
            DataSet thisDataSet = RecolectarDatos(AfiliacionIndividuales);
            ReportDataSource datasource = new ReportDataSource("DataSet1_Individualess", thisDataSet.Tables[0]);

            using (new Impersonator(WAL.GetEncKey("ImpUserName"), WAL.GetEncKey("ImpDomain"), WAL.GetEncKey("ImpPwd")))
            {
                rptVisualizadorReport.LocalReport.ReportPath = ConfigurationSettings.AppSettings["ReportsPath"] + "\\rptAfiliacionIndividuales.rdlc";
                rptVisualizadorReport.LocalReport.DataSources.Add(datasource);
                rptVisualizadorReport.DataBind();
                rptVisualizadorReport.LocalReport.Refresh();
            }
        }

        protected DataSet RecolectarDatos(EntAfiliacionIndividuales AfiliacionIndividuales)
        {
            DataSet m_oDs2 = new DataSet();
            return m_oDs2;

            // Collect data here
        }
    }
}
