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

namespace CAFAM.WebPortal.Quotes
{
    public class Events : System.Web.UI.Page
    {
        protected Label lblError;
        protected DropDownList ddlDestino;
        protected HtmlTable tableParameters;
        protected DropDownList ddlLugarDelEvento;
        protected TextBox txtCantidadPersonasMin;
        protected TextBox txtCantidadPersonasMax;
        protected Label lblPeopleQuantityError;
        protected HtmlTable tableMelgar;
        protected DropDownList ddlPlanMelgar;
        protected DropDownList ddlAcomodacionMelgar;
        protected TextBox txtCantidadDiasMelgar;
        protected TextBox txtCantidadNochesMelgar;
        protected HtmlTable tableBogota;
        protected TextBox txtCantidadBogota;
        protected DropDownList ddlTipoPlanBogota;
        protected DropDownList ddlPlanBogota;
        protected TextBox txtCantidadDiasBogota;
        protected TextBox txtEmpresa;
        protected TextBox txtPersonaQueSolicita;
        protected TextBox txtCorreoElectronico;
        protected CheckBox chkAfiliadoCafam;
        protected CheckBox chkContacto;
        protected Button btnCotizar;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                lblError.Visible = false;
                lblPeopleQuantityError.Visible = false;

                if (!IsPostBack)
                {
                    BLL.Quotes.Events.DestinoBLL destinoBLL = new CAFAM.WebPortal.BLL.Quotes.Events.DestinoBLL(SPContext.Current.Web);
                    ddlDestino.DataSource = destinoBLL.GetDestinoList();
                    ddlDestino.DataTextField = "Nombre";
                    ddlDestino.DataValueField = "Nombre";
                    ddlDestino.DataBind();
                    ddlDestino.Items.Insert(0, new ListItem("Seleccione una opción", ""));
                }

                ddlDestino.SelectedIndexChanged += new EventHandler(ddlDestino_SelectedIndexChanged);
                txtCantidadPersonasMin.TextChanged += new EventHandler(txtCantidadPersonas_TextChanged);
                txtCantidadPersonasMax.TextChanged += new EventHandler(txtCantidadPersonas_TextChanged);
            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

        protected void txtCantidadPersonas_TextChanged(object sender, EventArgs e)
        {
            try
            {
                if(!string.IsNullOrEmpty(txtCantidadPersonasMin.Text) && !string.IsNullOrEmpty(txtCantidadPersonasMax.Text))
                {
                    if(ddlDestino.SelectedValue == "Melgar")
                    {
                        BLL.Quotes.Events.AcomodacionBLL acomodacionBLL = new CAFAM.WebPortal.BLL.Quotes.Events.AcomodacionBLL(SPContext.Current.Web);
                        DataSet acomodacionDS = acomodacionBLL.GetAcomodacionListByAlojamientoAndPeopleQuantity(ddlLugarDelEvento.SelectedValue, 
                            txtCantidadPersonasMax.Text, txtCantidadPersonasMin.Text);

                        if(acomodacionDS.CreateDataReader().FieldCount != 0)
                        {
                            tableMelgar.Visible = true;
                        }
                        else
                        {
                            lblPeopleQuantityError.Visible= true;
                        }
                    }
                    else
                    {
                        BLL.Quotes.Events.TipoPlanBLL tipoPlanBLL = new CAFAM.WebPortal.BLL.Quotes.Events.TipoPlanBLL(SPContext.Current.Web);
                        DataSet tipoPlanDS = tipoPlanBLL.GetTipoPlanListByAlojamientoAndPeopleQuantity(ddlLugarDelEvento.SelectedValue,
                            txtCantidadPersonasMax.Text, txtCantidadPersonasMin.Text);

                        //if(
                    }
                }
            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }

        protected void ddlDestino_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty (ddlDestino.SelectedValue))
                {
                    tableParameters.Visible = true;
                    BLL.Quotes.Events.AlojamientoBLL alojamientoBLL = new CAFAM.WebPortal.BLL.Quotes.Events.AlojamientoBLL(SPContext.Current.Web);
                    ddlLugarDelEvento.DataSource = alojamientoBLL.GetAlojamientoListByDestino(ddlDestino.SelectedValue);
                    ddlLugarDelEvento.DataValueField = "Nombre";
                    ddlLugarDelEvento.DataTextField = "Nombre";
                    ddlLugarDelEvento.DataBind();
                }
                else
                {
                    tableParameters.Visible = false;
                }
            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }


        protected void Borrar()
        {
            try
            {
            }
            catch (Exception ex)
            {
                CAFAM.WebPortal.ErrorLogger.ErrorLogger.Log(ex, ref lblError, ConfigurationSettings.AppSettings["LogInEventViewer"]);
            }
        }
    }
}
