using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Inicio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DAO.FormNovedadesDetalle novDetalle = new DAO.FormNovedadesDetalle();
        DAO.FormAfiliacionEmpresa afiliacionEmpresa = new DAO.FormAfiliacionEmpresa();
        DAO.FormSuspensionTrabajadore d = new DAO.FormSuspensionTrabajadore();


        novDetalle.ID_Novedad = 10;
        novDetalle.DEPENDIDTYPE = "prueba";
        novDetalle.DEPENDIDNUM = "prueba";
        novDetalle.DEPENDPARENTIDTYPE = "prueba";
        novDetalle.DEPENDPARENTIDNUM = "prueba";
        novDetalle.DEPENDPARENTGENDER = "prueba";
        novDetalle.DEPENDBIRTHDATE = System.DateTime.Today;
        novDetalle.DEPENDFIRSTSURENAME = "prueba";
        novDetalle.DEPENDSECONDSURENAME = "prueba";
        novDetalle.DEPENDFIRSTNAME = "prueba";
        novDetalle.DEPENDSECONDNAME = "prueba";
        novDetalle.DEPENDKINDSHIP = "prueba";
        novDetalle.DEPENDHANDICAPP = "prueba";
        //novDetalle.Insert();      
        //lblDatosGenerales.Text = novDetalle.ID.ToString();
        
        Hashtable hash = new Hashtable();
        hash["hola"] = 4;
        hash["hola"] = 8;
        int val = (int)hash["hola"];
        lblDatosGenerales.Text = "Valor: " + val.ToString();
    }
}
