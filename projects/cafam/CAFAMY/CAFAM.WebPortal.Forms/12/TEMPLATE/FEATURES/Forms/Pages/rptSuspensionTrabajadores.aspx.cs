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
            EntSuspensionTrabajadores entSuspensionTrabajadores = (EntSuspensionTrabajadores)Session["SuspensionTrabajadores"];

            DataTable dtEmpresa = RecolectarDatosHeader (entSuspensionTrabajadores);
            DataTable dtTrabajadores = RecolectarDatosHeader (entSuspensionTrabajadores);

            ReportDataSource dsourceDatosEmpresa = new ReportDataSource("CAFAM_WebPortal_Forms_EntSuspensionTrabajadores", dtEmpresa);
            ReportDataSource dsourceDatosEmpleados = new ReportDataSource("CAFAM_WebPortal_Forms_EntSuspensionTrabajadoresDetalle", dtTrabajadores);

            using (new Impersonator(WAL.GetEncKey("ImpUserName"), WAL.GetEncKey("ImpDomain"), WAL.GetEncKey("ImpPwd")))
            {
                rptvwrSuspensionTrabajadores.LocalReport.ReportPath = ConfigurationSettings.AppSettings["ReportsPath"] + "\\rptSuspensionTrabajadores.rdlc";                
                rptvwrSuspensionTrabajadores.LocalReport.DataSources.Clear();
                rptvwrSuspensionTrabajadores.LocalReport.DataSources.Add(dsourceDatosEmpresa);
                rptvwrSuspensionTrabajadores.LocalReport.DataSources.Add(dsourceDatosEmpleados);
                rptvwrSuspensionTrabajadores.LocalReport.Refresh();
            };
        }

        protected DataTable RecolectarDatosHeader(EntSuspensionTrabajadores SuspensionTrabajadores)
        {
            System.Type stString = System.Type.GetType("System.String");

            DataTable dtEmpresa = new DataTable("CAFAM_WebPortal_Forms_EntSuspensionTrabajadores");
            dtEmpresa.Columns.Add("NIT", stString);
            dtEmpresa.Columns.Add("SUBNIT", stString);
            dtEmpresa.Columns.Add("RazonSocial", stString);

            DataRow myRow = dtEmpresa.NewRow();
            myRow["NIT"] = SuspensionTrabajadores.NIT;
            myRow["SUBNIT"] = SuspensionTrabajadores.SUBNIT;
            myRow["RazonSocial"] = SuspensionTrabajadores.RazonSocial;

            return dtEmpresa;
        }

        protected DataTable RecolectarDatosDetail(EntSuspensionTrabajadores SuspensionTrabajadores)
        {
            System.Type stString = System.Type.GetType("System.String");

            DataTable dtTrabajadores = new DataTable("CAFAM_WebPortal_Forms_EntSuspensionTrabajadoresDetalle");
            dtTrabajadores.Columns.Add("IdType", stString);
            dtTrabajadores.Columns.Add("IdNumber", stString);
            dtTrabajadores.Columns.Add("FirstName", stString);
            dtTrabajadores.Columns.Add("SecondName", stString);
            dtTrabajadores.Columns.Add("FirstSurname", stString);
            dtTrabajadores.Columns.Add("SecondSurname", stString);
            dtTrabajadores.Columns.Add("SuspentionStart", stString);
            dtTrabajadores.Columns.Add("SuspentionStop", stString);

            foreach (EntSuspensionTrabajadoresDetalle TrabDet in SuspensionTrabajadores.TrabajadoresDetalle)
            {
                DataRow myRow = dtTrabajadores.NewRow();
                myRow["IdType"] = TrabDet.IdType;
                myRow["IdNumber"] = TrabDet.IdNumber;
                myRow["FirstName"] = TrabDet.FirstName;
                myRow["SecondName"] = TrabDet.SecondName;
                myRow["FirstSurname"] = TrabDet.FirstSurname;
                myRow["SecondSurname"] = TrabDet.SecondSurname;
                myRow["SuspentionStart"] = TrabDet.SuspentionStart;
                myRow["SuspentionStop"] = TrabDet.SuspentionStop;
            }

            return dtTrabajadores;
        }
    }
}