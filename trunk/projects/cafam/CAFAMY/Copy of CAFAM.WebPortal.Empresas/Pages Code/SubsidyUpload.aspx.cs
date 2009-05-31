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
using System.Collections;
using System.Collections.Generic;
using System.IO;

namespace Cafam.WebPortal.Empresas
{
    public class SubsidyUpload : System.Web.UI.Page
    {
        //protected Label lblHelloWorld;
        protected Label lblErrorMessage;
        protected RadioButtonList rblAction;
        protected Panel pnlHelpList;
        protected FileUpload flUpload;
        protected Button btnCargar;

        protected Hashtable Hash;

        protected void BuildFormHlpList ()
        {
            try
            {
                // Open List
                SPWeb web = SPContext.Current.Web;
                SPList list = web.Lists["SubsidyFileBinding"];
                ArrayList ItemList;
                
                Hash = new Hashtable();

                // Iterate List
                foreach (SPListItem Item in list.Items)
                {                    
                    string sFType = Item["FormFileType"].ToString();
                    if (!Hash.ContainsKey (sFType))
                    {
                        ItemList = new ArrayList();
                        Hash.Add(sFType, ItemList);
                    } else
                        ItemList = (ArrayList)Hash[sFType];

                    ItemList.Add(Item);                    
                }
            }
            catch (Exception Ex)
            {
                lblErrorMessage.Text = Ex.Message;
            }            
        }

        protected string CleanLkpItem (string value)
        {
            if (value == null) return null;

            return value.Substring(value.IndexOf(";#") + 2);
        }

        protected string GetURL(SPListItem it, string FldName)
        {
            try
            {
                if (it[FldName] == null) return "";

                SPFieldUrlValue fieldValue = new SPFieldUrlValue(it[FldName].ToString());
                //string linkTitle = fieldValue.Description;
                string linkUrl = fieldValue.Url;

                return linkUrl;
            }
            catch
            {
                return "";
            }
        }

        protected Control BuildRow (SPListItem it)
        {
            Table tbl = new Table();
            TableRow rw = new TableRow();
            TableCell td1 = new TableCell();
            TableCell td2 = new TableCell();
            TableCell td3 = new TableCell();

            tbl.Attributes.Add("width", "100%");
            td2.Attributes.Add("width", "100%");

            ImageButton ExcelBtn = new ImageButton();
            ExcelBtn.ImageUrl = "~/_layouts/images/icono_excel.jpg";
            ExcelBtn.AlternateText = "Planilla en blanco";
            ExcelBtn.Attributes.Add("height", "32px");
            ExcelBtn.Attributes.Add("width", "32px");         
            ExcelBtn.OnClientClick = "window.open('" + GetURL(it, "BlankForm") + "', 'Planilla'); return (false);";
            
            td1.Controls.Add(ExcelBtn);
            
            Literal Lit = new Literal();
            Lit.Text = it["Title"].ToString();
            td2.Controls.Add(Lit);

            ImageButton HelpBtn = new ImageButton();
            HelpBtn.ImageUrl = "~/_layouts/images/FeatureCafam.gif";
            HelpBtn.AlternateText = "Instructivo de carga";
            HelpBtn.Attributes.Add("height", "32px");
            HelpBtn.Attributes.Add("width", "32px");
            HelpBtn.OnClientClick = "window.open('" + GetURL(it, "HelpFile") + "', 'Instructivo'); return (false);";

            td3.Controls.Add(HelpBtn);

            rw.Controls.Add(td1);
            rw.Controls.Add(td2);
            rw.Controls.Add(td3);
            tbl.Controls.Add(rw);
            return tbl;
        }

        protected void BuildFormHlpLayout()
        {
            Table tbl = new Table();
            TableRow rw;
            TableCell td;
            Literal Lit;

            tbl.Attributes.Add("width", "100%");
            try
            {
                foreach (string key in Hash.Keys)
                {
                    if (rblAction.SelectedValue.Equals(CleanLkpItem(key)))
                    {
                        rw = new TableRow();
                        td = new TableCell();
                        td.CssClass = "grid-header";

                        Lit = new Literal();
                        Lit.Text = CleanLkpItem(key);

                        td.Controls.Add(Lit);
                        rw.Controls.Add(td);
                        tbl.Controls.Add(rw);

                        bool Alt = false;
                        foreach (SPListItem it in (ArrayList)Hash[key])
                        {
                            rw = new TableRow();
                            td = new TableCell();
                            if (Alt)
                                td.CssClass = "alternating-row";
                            else
                                td.CssClass = "row";

                            td.Controls.Add(BuildRow(it));

                            rw.Controls.Add(td);
                            tbl.Controls.Add(rw);

                            Alt = !Alt;
                        }
                    }
                }
                pnlHelpList.Controls.Add (tbl);
            }
            catch (Exception Ex)
            {
                lblErrorMessage.Text = Ex.Message;
            }                        
        }        

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    SPWeb web = SPContext.Current.Web;
                    rblAction.DataSource = web.Lists["SubsidyFileTypes"].Items.GetDataTable();
                    rblAction.DataTextField = "Title";
                    rblAction.DataValueField = "Title";
                    rblAction.DataBind();
                    if (rblAction.Items.Count > 0)
                        rblAction.SelectedIndex = 0;
                }

                rblAction.SelectedIndexChanged += new EventHandler(rblAction_SelectedIndexChanged);
                btnCargar.Click += new EventHandler(btnCargar_Click);

                BuildFormHlpList();
                BuildFormHlpLayout();
            }
            catch (Exception Ex)
            {
                lblErrorMessage.Text = Ex.Message;
            }
        }

        string EnsureBar(string sFileRoute)
        {
            if (string.IsNullOrEmpty(sFileRoute))
                return sFileRoute;

            if (sFileRoute.LastIndexOf('\\') == sFileRoute.Length - 1)
                        sFileRoute += "\\";

            return (sFileRoute);
        }

        void btnCargar_Click(object sender, EventArgs e)
        {
            try
            {
                if (flUpload.HasFile) 
                {
                    string sFileRoute = ConfigurationSettings.AppSettings["SubsidyRepositoryRoute"];
                    if (string.IsNullOrEmpty(sFileRoute))
                    {
                        lblErrorMessage.Text = "Hubo un problema de configuracion de repositorio de formularios";
                        return;
                    }

                    sFileRoute = EnsureBar(sFileRoute);
                    
                    DateTime dt = DateTime.Now;

                    string GeneratedName = 
                        dt.Year +
                        dt.Month.ToString().PadLeft(2, '0') +
                        dt.Day.ToString().PadLeft(2, '0') + 
                        dt.Hour.ToString().PadLeft(2, '0') + 
                        dt.Minute.ToString().PadLeft(2, '0') +
                        dt.Second.ToString().PadLeft(2, '0') + '_' + 
                        Path.GetFileName(flUpload.FileName);

                    flUpload.SaveAs (sFileRoute + GeneratedName);
                    lblErrorMessage.Text = "Archivo " + flUpload.FileName + " subido exitosamente";
                }
            }
            catch (Exception Ex)
            {
                lblErrorMessage.Text = "Error: " + Ex.Message;
            }
        }

        void rblAction_SelectedIndexChanged(object sender, EventArgs e)
        {
            //throw new NotImplementedException();
            /*BuildFormHlpList();
            BuildFormHlpLayout();*/
        }
    }
}