using System;
using System.IO;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;
using System.Data;
using System.Configuration;
using CAFAM.WebPortal.Commons;
//using Microsoft.Sharepoint;

namespace CAFAM.WebPortal.Forms
{
    public partial class rptSuspensionTrabajadores : System.Web.UI.Page
    {
        public ReportViewer rptvwrSuspensionTrabajadores;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            EntSuspensionTrabajadores entSuspensionTrabajadores = new EntSuspensionTrabajadores();
            
            IList<EntSuspensionTrabajadores> lstSuspensionTrabajadores = new List<EntSuspensionTrabajadores>();
            lstSuspensionTrabajadores.Add(entSuspensionTrabajadores);
            
            ReportDataSource datasource = new ReportDataSource("DataSet_SuspensionTrabajadores", lstSuspensionTrabajadores);
            
            using (new Impersonator(WAL.GetEncKey("ImpUserName"), WAL.GetEncKey("ImpDomain"), WAL.GetEncKey("ImpPwd")))
            {
                //File.Copy ()
                rptvwrSuspensionTrabajadores.LocalReport.ReportPath = ConfigurationSettings.AppSettings["ReportsPath"] + "\\rptSuspensionTrabajadores.rdlc";
                rptvwrSuspensionTrabajadores.LocalReport.DataSources.Clear();
                rptvwrSuspensionTrabajadores.LocalReport.DataSources.Add(datasource);
                rptvwrSuspensionTrabajadores.LocalReport.Refresh();
            };
        }
    }
}