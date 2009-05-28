using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Inicio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DAO.FormNovedadesDetalle novDetalle = new DAO.FormNovedadesDetalle();

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
        novDetalle.Insert();

        lblDatosGenerales.Text = novDetalle.ID.ToString();

    }
}
