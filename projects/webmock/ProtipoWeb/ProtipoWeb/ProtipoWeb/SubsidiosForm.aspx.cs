using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProtipoWeb
{
    public partial class SubsidiosForm : System.Web.UI.Page
    {
        private IList<PayEntity> lstentityPays;
        public IList<PayEntity> lstEntitys
        {
            get
            {
                return (List<PayEntity>)this.ViewState["lstPayEntity"];

            }
        }
        private IList<Parents> lstparents;
        public IList<Parents> LstParents
        {
            get
            {
                return (List<Parents>)this.ViewState["LstParents"];

            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.ViewState["lstPayEntity"] = new List<PayEntity>();
                this.ViewState["LstParents"] = new List<Parents>();
                MyWizard.StartNextButtonText = "Siguiente";
                MyWizard.StepNextButtonText = "Siguiente";
                MyWizard.StepPreviousButtonText = "Anterior";
                MyWizard.FinishPreviousButtonText = "Anterior";
                MyWizard.FinishCompleteButtonText = "Imprimir";
            }

        }

        protected void btnCargar_Click(object sender, EventArgs e)
        {
            if (this.lstEntitys.Count < 2)
            {
                string strPayEntityPhone = "";
                string strDireccionPayEntity = "";
                string strNit = "";
                string strRazonSocial = "";
                strDireccionPayEntity = drpAddressPayEntity1.SelectedItem.Text + " " +
                                    txtAddress1.Text + " " +
                                    drpAddressPayEntity2.SelectedItem.Text + " " +
                                    drpAddressPayEntity3.SelectedItem.Text + " " +
                                    txtNumberPayEntity1.Text + " " +
                                    drpNumberPayEntity1.SelectedItem.Text + " " +
                                    txtNumberPayEntity2.Text + " " +
                                    drpLocationPayEntity1.SelectedItem.Text + " " +
                                    txtLocationPayEntity1.Text + " " +
                                    drpLocationPayEntity2.SelectedItem.Text + " " +
                                    txtLocationPayEntity2.Text;
                strPayEntityPhone = txtPayEntityPhone.Text;
                strNit = txtNit.Text;
                strRazonSocial = txtRazonSocial.Text;


                PayEntity entidad = new PayEntity
                {
                    Direccion = strDireccionPayEntity,
                    Nit = strNit,
                    Telefono = strPayEntityPhone,
                    RazonSocial = strRazonSocial
                };
                lstEntitys.Add(entidad);
                this.GridViewEntidadesPagadoras.DataSource = lstEntitys;
                this.GridViewEntidadesPagadoras.DataBind();
                this.ViewState["lstPayEntity"] = lstEntitys;

            }
        }


        protected void OnNext(object sender, WizardNavigationEventArgs e)
        {
            // Collect the input data if going to the last page
            if (MyWizard.WizardSteps[e.NextStepIndex].StepType == WizardStepType.Finish)
            {
                // Show a Ready-to-go message
            }

            /*
            // Test
            if (LastName.Text == "Esposito")
            {
                e.Cancel = true;
                return;
            }
            */
        }

        protected void imgButton_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgButtonEjemplo = (ImageButton)sender;
            switch (imgButtonEjemplo.ID)
            {
                case "imgButton_2":
                    if (this.ImgEjemplo_2.Visible == true)
                    {
                        this.ImgEjemplo_2.Visible = false;
                    }
                    else
                        this.ImgEjemplo_2.Visible = true;
                    break;
                case "imgButton":
                    if (this.imgEjemplo.Visible == true)
                    {
                        this.imgEjemplo.Visible = false;
                    }
                    else
                        this.imgEjemplo.Visible = true;
                    break;
                case "imgButton_3":
                    if (this.ImgEjemplo_3.Visible == true)
                    {
                        this.ImgEjemplo_3.Visible = false;
                    }
                    else
                        this.ImgEjemplo_3.Visible = true;
                    break;
                default:
                    break;
                    
            }
            

        }
        protected void OnActiveStepChanged(object sender, EventArgs e)
        {
        }
        protected void OnFinish(object sender, WizardNavigationEventArgs e)
        {
            // Add the employee
            // TODO:: add ADO.NET code here

            // Show a message

            FinalMsg.Text = "La Operación ha sido completada exitosamente";
        }


        protected void btnCargarParents_Click(object sender, EventArgs e)
        {
            if (this.LstParents.Count < 4)
            {
                string strFirstSurname = txtFirstSurNameParent.Text;
                string strSecondSurname = txtSecondSurNameParent.Text;
                string strFirstName = txtFirstNameParent.Text;
                string strIdentity = rdOptionCCParent.Checked ? "TI" : rdOptionCEParent.Checked ? "CE" : "CC";
                string strNumberIdentity = txtNumberParent.Text;
                string strBirthday = txtBirthdayParent.Text;
                string strSex = rdSexParentMale.Checked ? "Masculino" : "Femenino";
                string strParentType = drpParent.SelectedItem.Text;
                string strhelpless = chkHelpless.Checked ? "SI" : "NO";
                string strOccupationType = rdOccupationEmployeed.Checked ? "Trabaja" : rdOccupationHome.Checked ? "Hogar" : "Estudia";

                Parents entidad = new Parents
                {
                    Birthday = strBirthday,
                    FirstName = strFirstName,
                    FirstSurname = strFirstSurname,
                    helpless = strhelpless,
                    Identity = strIdentity,
                    NumberIdentity = strNumberIdentity,
                    OccupationType = strOccupationType,
                    ParentType = strParentType,
                    SecondSurname = strSecondSurname,
                    Sex = strSex
                };

                this.LstParents.Add(entidad);
                this.grdParents.DataSource = this.LstParents;
                this.grdParents.DataBind();
                this.ViewState["LstParents"] = this.LstParents;

            }
        }



    }
    [Serializable]
    public class PayEntity
    {
        public string Telefono { get; set; }
        public string Direccion { get; set; }
        public string Nit { get; set; }
        public string RazonSocial { get; set; }
        public PayEntity()
        {

        }
    }

    [Serializable]
    public class Parents
    {
        public string FirstSurname { get; set; }
        public string SecondSurname { get; set; }
        public string FirstName { get; set; }
        public string Identity { get; set; }
        public string NumberIdentity { get; set; }
        public string Birthday { get; set; }
        public string Sex { get; set; }
        public string ParentType { get; set; }
        public string helpless { get; set; }
        public string OccupationType { get; set; }
        public string CompleteName { get { return this.FirstSurname + " " + this.SecondSurname + ", " + this.FirstName; } }


        public Parents()
        {

        }
    }

}
