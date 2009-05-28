using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProtipoWeb
{
    public partial class FormaDePago : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Producto producto1 = new Producto() { Importe = "$100", NroPreVenta = "000001199", ProductoDescripcion = "10 noches con pasajes incluidos en Hotel Sheraton." };
            Producto producto2 = new Producto() { Importe = "$215.15", NroPreVenta = "000002015", ProductoDescripcion = "Hab Fliar con Desayuno." };
            Producto producto3 = new Producto() { Importe = "$1524.01", NroPreVenta = "000009845", ProductoDescripcion = "5 Noches en Hotel Plaza." };
            Producto producto4 = new Producto() { Importe = "$10,321", NroPreVenta = "000003215", ProductoDescripcion = "1 Noche con Excursión." };
            IList<Producto> lstProductos = new List<Producto>();
            lstProductos.Add(producto1);
            lstProductos.Add(producto2);
            lstProductos.Add(producto3);
            lstProductos.Add(producto4);
            grdProductos.DataSource = lstProductos;
            grdProductos.DataBind();
            lblTotalCompra.Text = "Total de Compra: $ 2150.25";




        }
        protected void imgButton_Click(object sender, ImageClickEventArgs e)
        {
            this.imgEjemplo.Visible = !imgEjemplo.Visible;


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
    }
    public class Producto
    {
        public string ProductoDescripcion{get;set;}
        public string NroPreVenta{get;set;}
        public string Importe{get;set;}
    }
}
