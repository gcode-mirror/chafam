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
using CAFAM.WebPortal.WebUI;

namespace CAFAM.WebPortal.Forms

{
    public class ListBinder
    {
	  const string SP_SITE = "http://prueba:Globant12@glb-vm:71/";

	  public static void BindIdentificationType(RadioButtonList rbList, string texto, string valor)
	  {
		try
		{
		    if (SPContext.Current != null)
		    {
			  using(Microsoft.SharePoint.SPWeb web = SPContext.Current.Web)
			  {
				BLL.IdentificationTypeBLL bll = new CAFAM.WebPortal.BLL.IdentificationTypeBLL(web);
				DataSet ds = bll.GetIdentificationTypeList();
				BindList(rbList, ds, texto, valor);
			  }
		    }
		    else
		    {
			  using(SPSite site = new SPSite(SP_SITE)){
				using(Microsoft.SharePoint.SPWeb web = site.OpenWeb())
				{
				    BLL.IdentificationTypeBLL bll = new CAFAM.WebPortal.BLL.IdentificationTypeBLL(web);
				    DataSet ds = bll.GetIdentificationTypeList();
				    BindList(rbList, ds, texto, valor);
				}
			  }
		    }
		}
		catch (Exception ex)
		{
		    throw ex;
		}
	  }

	  public static TelephoneControl BindTelephone(Panel p, string id, bool required, string validationGroup, string validatorCssClass, string txtBoxCssClass)
	  {
		TelephoneControl control = new TelephoneControl();
		control.ID = id;
		control.Required = required;
		if( validationGroup != null ) { 
		    control.ValidationGroup = validationGroup; 
		}

		if (validatorCssClass != null) { 
		    control.ValidatorsCSSClass = validatorCssClass; 
		}

		if (txtBoxCssClass != null )  { 
		    control.TextBoxCSSClass = txtBoxCssClass;	
		}

		p.Controls.Add(control);

		return control; 
        }


	  public static RadioButtonList BindMaritaStatus(RadioButtonList rbList, string texto, string valor)
	  {
		try
		{
		    if (SPContext.Current != null)
		    {
			  using (Microsoft.SharePoint.SPWeb web = SPContext.Current.Web)
			  {
				BLL.MaritalStateBLL bll = new CAFAM.WebPortal.BLL.MaritalStateBLL(web);
				DataSet ds = bll.GetMaritalStateList();
				BindList(rbList, ds, texto, valor);
			  }
		    }
		    else
		    {
			  using (SPSite site = new SPSite(SP_SITE))
			  {
				using (Microsoft.SharePoint.SPWeb web = site.OpenWeb())
				{
				    BLL.MaritalStateBLL bll = new CAFAM.WebPortal.BLL.MaritalStateBLL(web);
				    DataSet ds = bll.GetMaritalStateList();
				    BindList(rbList, ds, texto, valor);
				}
			  }
		    }
		}
		catch (Exception ex)
		{
		    throw ex;
		}
		return rbList;
	  }


	  private static void BindList(ListControl control, DataSet ds, string texto, string valor)
	  {
		try {

		    control.DataSource = ds;
		    control.DataTextField = texto;
		    control.DataValueField = valor;
		    control.DataBind();
		    control.Items[0].Selected = true;
		}
		catch (Exception ex)
		{
		}
	  }


	  public static AddressControl BindPanel(Panel p, string id, string label )
	  {
		try {
		    AddressControl address = new AddressControl();
		    address.ID = id;
		    address.FieldText = label;
		    address.TextBoxClass = "form_text";
		    address.FieldTextClass = "form_label";
		    address.ValidatorClass = "form_field_error_message";
		    address.TextBoxClass = "form_text";
		    p.Controls.Add(address);
		return address; 
		} catch (Exception ex ) {
		    return null; 
		}

	  }

	  public static  DateTimeCustomControl BindDate(Panel p)
	  {
		try {
		    DateTimeCustomControl datec = new DateTimeCustomControl();
		    datec.AjaxFunctionality = false;
		    datec.TextBoxCSSClass = "form_text";
		    datec.ValidatorsCSSClass = "form_field_error_message";
		    datec.Required = true;
		    p.Controls.Add(datec);

		    return datec; 
		} catch (Exception ex ) {
		    return null; 
		}
	  
	  }

    }
}
