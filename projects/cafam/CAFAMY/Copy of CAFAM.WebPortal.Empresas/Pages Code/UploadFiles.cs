using System;
using System.IO;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Microsoft.SharePoint;
using System.Net;
using CAFAM.WebPortal.DAO;

namespace Cafam.WebPortal.Empresas
{

    public class UploadFiles : System.Web.UI.Page
    {
	  protected FileUpload fileUpArchivo;
	  protected ImageButton imgAbrir;
	  protected ImageButton imgInsc_Trabajador;
	  protected ImageButton imgInsc_Conyuge;
	  protected ImageButton imgInsc_PersACargo;
	  protected ImageButton imgRetiro;
	  protected ImageButton imgSuspension;
	  protected Button btnUploadArchivo;
	  protected Label UploadStatusLabel;
	  protected GridView grdTemplates;

	  protected void Page_Load(object sender, EventArgs e)
	  {
		SPWeb web = SPContext.Current.Web;

		
		//SPSite oSiteCollection = SPContext.Current.Site;
		////SPList oList = web.Lists["TemplateUploadFile"];  //oSiteCollection.AllWebs["glb-vm"].Lists["TemplateUploadFile"];
		////Guid guidViewID = oList.Views["ObtenerTemplate"].ID;
		////SPView oViewSrc = oList.GetView(guidViewID);
		////SPViewFieldCollection collViewFields = oViewSrc.ViewFields;
		////SPListItemCollection collItemsSrc = oList.GetItems(oViewSrc);
		//SPView vew = SPContext.Current.ViewContext;
		

		CAFAM.WebPortal.BLL.IdentificationTypeBLL idTypeBLL = new CAFAM.WebPortal.BLL.IdentificationTypeBLL(web);
		DataSet idTypeListDS = idTypeBLL.GetIdentificationTypeList();
		DataSet dataSet = new DataSet();

		SPList oList = web.Lists["TemplateUploadFile"];
		Guid guidViewID = oList.Views["ObtenerTemplate"].ID;
		SPView oViewSrc = oList.GetView(guidViewID);

		dataSet.Merge(web.Lists["TemplateUploadFile"].GetItems(oViewSrc).GetDataTable());
    		
		grdTemplates.DataSource = dataSet;
		grdTemplates.DataBind();
		
		
		//foreach(SPListItemCollection  myItem  in web.Lists["TemplateUploadFile"])
		//{
		//    string myTitle = myItem["Title"].ToString();
		//    string myURL = myItem["name"].ToString();
		//    //myURL = "http://server/sitio/lists/mydoclib/mydoc.doc";
		//}

		//grdTemplates.DataSource = web.Lists["TemplateUploadFile"].GetItems(vew.Views["ObtenerTemplate"]).GetDataTable();

		//SPListItemCollection listItems = web.Lists["TemplateUploadFile"].Items;
		//int itemCount = listItems.Count;
	  	//grdTemplates.DataSource;
		//grdTemplates.DataBind();
	  }

	
	  //private void grdTemplates_ItemDataBound(object sender, System.Web.UI.WebControls.RepeaterItemEventArgs e)
	  //    {
	  //          if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
	  //          {
	  //                AccionRespuestaEncuesta are = (AccionRespuestaEncuesta)e.Item.DataItem;

	  //                string imagenAccion;
				
	  //                if (are.getEstadoAccion().Equals(EstadoAccion.CerradaConforme))
	  //                      imagenAccion = "imagenes/candado_cerrado.gif";
	  //                else
	  //                      imagenAccion = "imagenes/candado_abierto.gif";

	  //                ((System.Web.UI.WebControls.Image)e.Item.FindControl("imgEstado")).ImageUrl = imagenAccion;
	  //          }
	  //    }

	  protected override void OnInit(EventArgs e)
	  {
		btnUploadArchivo.Click += new EventHandler(btnUploadArchivo_Click);
	  }

	  protected void btnUploadArchivo_Click(object sender, EventArgs e)
        {
		UploadStatusLabel.Text = "subir archivos completado";
	  }

	  public void UploadDocumentAsync(string fileUpArchivo, string remoteFile)
	  {			    
		// Leemos el archivo
		FileStream fs = new FileStream(fileUpArchivo, FileMode.Open, FileAccess.Read);
		byte[] buffer = new byte[fs.Length];
		fs.Read(buffer, 0, Convert.ToInt32(fs.Length));
		fs.Close();

		//Subimos el archivo de manera asíncrona
		WebClient wc = new WebClient();
		wc.Credentials = System.Net.CredentialCache.DefaultCredentials;

		//Manejador de evento para obtener información sobre el progreso
		wc.UploadProgressChanged += new UploadProgressChangedEventHandler(UploadProgressChanged);
		//Manejador de evento para saber cuando se completo la subida del archivo
		wc.UploadDataCompleted += new UploadDataCompletedEventHandler(UploadDataCompleted);
		//Iniciamos la subida del archivo asincronamente
		wc.UploadDataAsync(new Uri(remoteFile), "PUT", buffer);
		//Podriamos cancelar la carga del archivo
		//wc.CancelAsync();
	  }

	  /// <summary>
	  /// Manejador de evento que recibe información sobre
	  /// el progreso de la carga asíncrona del fichero.
	  /// </summary>
	  void UploadProgressChanged(object sender, UploadProgressChangedEventArgs e)
	  {
		String msg = string.Format("Progreso: {0}%", e.ProgressPercentage);
		//Trace.WriteLine(msg);
	  }

	  /// <summary>
	  /// Manejador de evento que recibe información sobre
	  /// el resultado de la operación de carga del fichero
	  /// cuando esa se completa
	  /// </summary>
	  void UploadDataCompleted(object sender, UploadDataCompletedEventArgs e)
	  {
		if (e.Cancelled == true)
		{   
		    String msg = string.Format("Se cancelo la operación");
		    //Trace.WriteLine("Se cancelo la operación");
		}
		else if (e.Error != null)
		{
		    String msg = string.Format("Se produjo una excepción durante la operación: {0}",e.Error.ToString());
		    //Trace.WriteLine(msg);
		}
	  }
    }
}
