using System;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Microsoft.SharePoint;

namespace Cafam.WebPortal.Empresas
{
    public class HelloWorld : System.Web.UI.Page
    {
        protected Label lblHelloWorld;

        protected void Page_Load(object sender, EventArgs e)
        {
            lblHelloWorld.Text = "Ohh Yeah!";
        }
    }
}
	  /*protected DropDownList ddlTiposUsr;
	  protected Button btnAceptar;
	  

        protected void Page_Load(object sender, EventArgs e)
	  {
		SPWeb web = SPContext.Current.Web;

		CAFAM.WebPortal.BLL.IdentificationTypeBLL idTypeBLL = new CAFAM.WebPortal.BLL.IdentificationTypeBLL(web);
		DataSet idTypeListDS = idTypeBLL.GetIdentificationTypeList();

		ddlTiposUsr.DataSource = idTypeListDS;
		ddlTiposUsr.DataTextField = "Title";
		ddlTiposUsr.DataValueField = "Title";
		ddlTiposUsr.DataBind();

		lblHelloWorld.Text = "ahora no hay nada"; 
       
	  }

	  protected override void OnInit(EventArgs e)
	  {
		btnAceptar.Click += new EventHandler(btnAceptar_Click);
		
	  }

	  protected void btnAceptar_Click(object sender, EventArgs e)
        {
		//CAFAM.WebPortal.Entities.User newUsr = new CAFAM.WebPortal.Entities.User();
		//BLL.UserBLL usrBLL = new CAFAM.WebPortal.BLL.UserBLL(web);
		//newUsr = usrBLL.GetUser("Empresa");
		
		lblHelloWorld.Text = "el tipo de usuario es"; 
        }

	

    }*/
