using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;

using System.Data;

namespace CAFAM.WebPortal.Forms
{
    public partial class rptAfiliacionEmpresas : System.Web.UI.Page
    {
        protected ReportViewer rptVisualizadorReport;

        protected void Page_Load(object sender, EventArgs e)
        {

            EntAfiliacionEmpresa AfiliacionEmpresa = (EntAfiliacionEmpresa)Session["AfiliacionEmpresa"];
            DataSet thisDataSet = RecolectarDatos(AfiliacionEmpresa);
            ReportDataSource datasource = new ReportDataSource("DataSet1_Empresas", thisDataSet.Tables[0]);

            rptVisualizadorReport.LocalReport.DataSources.Add(datasource);
            rptVisualizadorReport.DataBind();
            rptVisualizadorReport.LocalReport.Refresh();
        }

        protected DataSet RecolectarDatos(EntAfiliacionEmpresa AfiliacionEmpresa)
        {
            DataSet m_oDs2 = new DataSet();
            DataTable oDt = new DataTable("Empresas");
            DataRow oRow;

            //-- Create the table                  
            oDt.Columns.Add("Nit",System.Type.GetType("System.String"));
            oDt.Columns.Add("NombreRazonSocial",System.Type.GetType("System.String"));
            oDt.Columns.Add("ciudad",System.Type.GetType("System.String"));
            oDt.Columns.Add("codigoCiudad",System.Type.GetType("System.String"));
            oDt.Columns.Add("direccion",System.Type.GetType("System.String"));
            oDt.Columns.Add("telefono1",System.Type.GetType("System.String"));
            oDt.Columns.Add("telefono2",System.Type.GetType("System.String"));
            oDt.Columns.Add("aA",System.Type.GetType("System.String"));
            oDt.Columns.Add("fax",System.Type.GetType("System.String"));
            oDt.Columns.Add("correoElectronico",System.Type.GetType("System.String"));
            oDt.Columns.Add("entidadDocente",System.Type.GetType("System.String"));
            oDt.Columns.Add("nombreGerenteRepresentanteLegal",System.Type.GetType("System.String"));
            oDt.Columns.Add("nombreJefePersonal", System.Type.GetType("System.String"));
            oDt.Columns.Add("nroEscrituraConstitucion", System.Type.GetType("System.String"));
            oDt.Columns.Add("nroNotaria", System.Type.GetType("System.String"));
            oDt.Columns.Add("fechaConstitución", System.Type.GetType("System.String"));
            oDt.Columns.Add("tipoEmpresa", System.Type.GetType("System.String"));
            oDt.Columns.Add("claseSociedad", System.Type.GetType("System.String"));
            oDt.Columns.Add("nombreRUT", System.Type.GetType("System.String"));
            oDt.Columns.Add("codigo", System.Type.GetType("System.String"));
            oDt.Columns.Add("porcentajeSubsidioFamiliar", System.Type.GetType("System.String"));
            oDt.Columns.Add("porcentajeSENA", System.Type.GetType("System.String"));
            oDt.Columns.Add("porcentajeICBF", System.Type.GetType("System.String"));
            oDt.Columns.Add("porcentajeESAP", System.Type.GetType("System.String"));
            oDt.Columns.Add("porcentajeInstitutosTecnicos", System.Type.GetType("System.String"));
            oDt.Columns.Add("filialOtraEmpresaAfiliada", System.Type.GetType("System.String"));
            oDt.Columns.Add("nombreFilialOtraEmpresaAfiliada", System.Type.GetType("System.String"));
            oDt.Columns.Add("ubicacionCiudadCasaMatriz", System.Type.GetType("System.String"));
            oDt.Columns.Add("sustitucionNit", System.Type.GetType("System.String"));
            oDt.Columns.Add("sustitucionNombreRazonSocial", System.Type.GetType("System.String"));
            oDt.Columns.Add("ciaAfiliadaCajaCompensacion", System.Type.GetType("System.String"));
            oDt.Columns.Add("nombreCiaAfiliadaCajaCompensacion", System.Type.GetType("System.String"));
            oDt.Columns.Add("motivoDesafiliacionCaja", System.Type.GetType("System.String"));
            oDt.Columns.Add("numeroTotalTrabajadores", System.Type.GetType("System.String"));
            oDt.Columns.Add("valorUltimaNomina", System.Type.GetType("System.String"));
            oDt.Columns.Add("correspondienteAlMes", System.Type.GetType("System.String"));

            m_oDs2.Tables.Add(oDt);

            //-- Add the rows
            oRow = m_oDs2.Tables["Empresas"].NewRow();

            oRow["Nit"] = AfiliacionEmpresa.Nit;
            oRow["NombreRazonSocial"] = AfiliacionEmpresa.NombreRazonSocial;
            oRow["ciudad"] = AfiliacionEmpresa.Ciudad;
            oRow["codigoCiudad"] = AfiliacionEmpresa.CodigoCiudad;
            oRow["direccion"] = AfiliacionEmpresa.Direccion;
            oRow["telefono1"] = AfiliacionEmpresa.Telefono1;
            oRow["telefono2"] = AfiliacionEmpresa.Telefono2;
            oRow["aA"] = AfiliacionEmpresa.AA;
            oRow["fax"] = AfiliacionEmpresa.Fax;
            oRow["correoElectronico"] = AfiliacionEmpresa.CorreoElectronico;
            oRow["entidadDocente"] = AfiliacionEmpresa.EntidadDocente==true?"Si":"No";
            oRow["nombreGerenteRepresentanteLegal"] = AfiliacionEmpresa.NombreGerenteRepresentanteLegal;
            oRow["nombreJefePersonal"] = AfiliacionEmpresa.NombreJefePersonal;
            oRow["nroEscrituraConstitucion"] = AfiliacionEmpresa.NroEscrituraConstitucion;
            oRow["nroNotaria"] = AfiliacionEmpresa.NroNotaria;
            oRow["fechaConstitución"] = AfiliacionEmpresa.FechaConstitución;
            oRow["tipoEmpresa"] = AfiliacionEmpresa.TipoEmpresa;
            oRow["claseSociedad"] = AfiliacionEmpresa.ClaseSociedad;
            oRow["nombreRUT"] = AfiliacionEmpresa.NombreRUT;
            oRow["codigo"] = AfiliacionEmpresa.CodigoCiudad;
            oRow["porcentajeSubsidioFamiliar"] = AfiliacionEmpresa.PorcentajeSubsidioFamiliar;
            oRow["porcentajeSENA"] = AfiliacionEmpresa.PorcentajeSENA;
            oRow["porcentajeICBF"] = AfiliacionEmpresa.PorcentajeICBF;
            oRow["porcentajeESAP"] = AfiliacionEmpresa.PorcentajeESAP;
            oRow["porcentajeInstitutosTecnicos"] = AfiliacionEmpresa.PorcentajeInstitutosTecnicos;
            oRow["filialOtraEmpresaAfiliada"] = AfiliacionEmpresa.FilialOtraEmpresaAfiliada==true?"Si":"No";
            oRow["nombreFilialOtraEmpresaAfiliada"] = AfiliacionEmpresa.NombreFilialOtraEmpresaAfiliada;
            oRow["ubicacionCiudadCasaMatriz"] = AfiliacionEmpresa.UbicacionCiudadCasaMatriz;
            oRow["sustitucionNit"] = AfiliacionEmpresa.SustitucionNit;
            oRow["sustitucionNombreRazonSocial"] = AfiliacionEmpresa.SustitucionNombreRazonSocial;
            oRow["ciaAfiliadaCajaCompensacion"] = AfiliacionEmpresa.CiaAfiliadaCajaCompensacion==true?"SI":"No";
            oRow["nombreCiaAfiliadaCajaCompensacion"] = AfiliacionEmpresa.NombreCiaAfiliadaCajaCompensacion;
            oRow["motivoDesafiliacionCaja"] = AfiliacionEmpresa.MotivoDesafiliacionCaja;
            oRow["numeroTotalTrabajadores"] = AfiliacionEmpresa.NumeroTotalTrabajadores;
            oRow["valorUltimaNomina"] = AfiliacionEmpresa.ValorUltimaNomina;
            oRow["correspondienteAlMes"] = AfiliacionEmpresa.CorrespondienteAlMes;

                m_oDs2.Tables["Empresas"].Rows.Add(oRow);
                oRow = m_oDs2.Tables["Empresas"].NewRow();

            return m_oDs2;
            

            
            
        }
    }
}
