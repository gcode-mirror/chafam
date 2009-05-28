using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProtipoWeb
{

    public partial class CotizadorSeguroSoat : System.Web.UI.Page
    {
        public string Cotizacion;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                CargarCombos();
            }
        }
        protected void btnNuevaCotizacion_Click(object sender, EventArgs e)
        {
            pnlAnswer.Visible = false;
            pnlPrincipal.Visible = true;
		CargarCombos();
		lblCilidraje.Visible = false;
		rdCilindraje.Visible = false;
        }
        protected void OnNext(object sender, EventArgs e)
        {
            pnlAnswer.Visible = true;
            pnlPrincipal.Visible = false;
            Tarifa tarifa = new Tarifa
            {
                CilindrajeTarifa = rdCilindraje.SelectedItem.Text,
                ClaseTarifa = rdItemClase.SelectedItem.Text,
                ModeloTarifa = rdModelo.SelectedItem.Text,
                Total = 400
            };
            lblClaseVehiculo.Text = tarifa.ClaseTarifa;
            lblmodeloVehiculo.Text = tarifa.ModeloTarifa;
            lblMonto.Text ="$ "+ tarifa.Total.ToString();
            lblCilinjdraje.Text = tarifa.CilindrajeTarifa;
            Cotizacion = tarifa.Cotizacion;
        }
	  //protected void OnExit(object sender, EventArgs e)
	  //{
	  //    Response.Redirect("CotizadorSeguroSoat.aspx");
	  //}
        #region LoadCombos
        private IList<Clase> CargarListaClase()
        {
            IList<Clase> lstClase = new List<Clase>();
            Clase itemClase = new Clase();
            itemClase.DescripcionClase = "Motos";
            itemClase.idClase = 1;
            lstClase.Add(itemClase);

            itemClase = new Clase();
            itemClase.DescripcionClase = "Camperos Camionetas";
            itemClase.idClase = 2;
            lstClase.Add(itemClase);

            itemClase = new Clase();
            itemClase.DescripcionClase = "Carga o Mixto";
            itemClase.idClase = 3;
            lstClase.Add(itemClase);

            itemClase = new Clase();
            itemClase.DescripcionClase = "Oficiales Especiales";
            itemClase.idClase = 4;
            lstClase.Add(itemClase);

            itemClase = new Clase();
            itemClase.DescripcionClase = "Autos Familiares";
            itemClase.idClase = 5;
            lstClase.Add(itemClase);

            itemClase = new Clase();
            itemClase.DescripcionClase = "Vehiculo 6 o mas Pasajeros";
            itemClase.idClase = 6;
            lstClase.Add(itemClase);

            itemClase = new Clase();
            itemClase.DescripcionClase = "Autos Negocio";
            itemClase.idClase = 7;
            lstClase.Add(itemClase);

            itemClase = new Clase();
            itemClase.DescripcionClase = "Bus Buseta Urbano Publico Intermunicipal";
            itemClase.idClase = 8;
            lstClase.Add(itemClase);

            return lstClase;
        }

        private IList<Modelo> CargarListaModelo()
        {
            IList<Modelo> lstModelo = new List<Modelo>();
            Modelo itemModelo = new Modelo();
            itemModelo.DescripcionModelo = "0-9 Años";
            itemModelo.idModelo = 1;
            lstModelo.Add(itemModelo);
            itemModelo = new Modelo();
            itemModelo.DescripcionModelo = "Mas de 10 Años";
            itemModelo.idModelo = 1;
            lstModelo.Add(itemModelo);

            return lstModelo;
        }
        private IList<Cilindraje> CargarListaCilindraje()
        {
            IList<Cilindraje> lstCilindraje = new List<Cilindraje>();
            Cilindraje itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "Menos de 100cc";
            itemCilindraje.idCilindraje = 1;
            itemCilindraje.idClase = 1;
            lstCilindraje.Add(itemCilindraje);

             itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "de 100 a 200cc";
            itemCilindraje.idCilindraje = 2;
            itemCilindraje.idClase = 1;
            lstCilindraje.Add(itemCilindraje);

            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "Mas de 200cc";
            itemCilindraje.idCilindraje = 3;
            itemCilindraje.idClase = 1;
            lstCilindraje.Add(itemCilindraje);

            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "Motocarro";
            itemCilindraje.idCilindraje = 4;
            itemCilindraje.idClase = 1;
            lstCilindraje.Add(itemCilindraje);

            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "Menos de 1500cc";
            itemCilindraje.idCilindraje = 5;
            itemCilindraje.idClase = 2;
            lstCilindraje.Add(itemCilindraje);

            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "1500 a 2500cc";
            itemCilindraje.idCilindraje = 6;
            itemCilindraje.idClase = 2;
            lstCilindraje.Add(itemCilindraje);

            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "Mas de 2500cc";
            itemCilindraje.idCilindraje = 7;
            itemCilindraje.idClase = 2;
            lstCilindraje.Add(itemCilindraje);

            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "Menos de 5 Toneladas";
            itemCilindraje.idCilindraje = 8;
            itemCilindraje.idClase = 3;
            lstCilindraje.Add(itemCilindraje);

            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "de 5 a 15 Toneladas";
            itemCilindraje.idCilindraje = 9;
            itemCilindraje.idClase = 3;
            lstCilindraje.Add(itemCilindraje);

            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "Mas de 15 Toneladas";
            itemCilindraje.idCilindraje = 10;
            itemCilindraje.idClase = 3;
            lstCilindraje.Add(itemCilindraje);

            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "Menos de 1500cc";
            itemCilindraje.idCilindraje = 11;
            itemCilindraje.idClase = 4;
            lstCilindraje.Add(itemCilindraje);

            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "1500 a 2500cc";
            itemCilindraje.idCilindraje = 12;
            itemCilindraje.idClase = 4;
            lstCilindraje.Add(itemCilindraje);

            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "Mas de 2500cc";
            itemCilindraje.idCilindraje = 13;
            itemCilindraje.idClase = 4;
            lstCilindraje.Add(itemCilindraje);


            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "Menos de 1500cc";
            itemCilindraje.idCilindraje = 17;
            itemCilindraje.idClase = 5;
            lstCilindraje.Add(itemCilindraje);

            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "1500 a 2500cc";
            itemCilindraje.idCilindraje = 18;
            itemCilindraje.idClase = 5;
            lstCilindraje.Add(itemCilindraje);

            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "Mas de 2500cc";
            itemCilindraje.idCilindraje = 19;
            itemCilindraje.idClase = 5;
            lstCilindraje.Add(itemCilindraje);

            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "Menos de 2500cc";
            itemCilindraje.idCilindraje = 20;
            itemCilindraje.idClase = 6;
            lstCilindraje.Add(itemCilindraje);

            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "2500 o Mas";
            itemCilindraje.idCilindraje = 21;
            itemCilindraje.idClase = 6;
            lstCilindraje.Add(itemCilindraje);

            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "Menos de 1500cc";
            itemCilindraje.idCilindraje = 24;
            itemCilindraje.idClase = 7;
            lstCilindraje.Add(itemCilindraje);

            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "1500 a 2500cc";
            itemCilindraje.idCilindraje = 25;
            itemCilindraje.idClase = 7;
            lstCilindraje.Add(itemCilindraje);

            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "Mas de 2500cc";
            itemCilindraje.idCilindraje = 26;
            itemCilindraje.idClase = 7;
            lstCilindraje.Add(itemCilindraje);


            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "Menos de 10 Pasajeros";
            itemCilindraje.idCilindraje = 30;
            itemCilindraje.idClase = 8;
            lstCilindraje.Add(itemCilindraje);

            itemCilindraje = new Cilindraje();
            itemCilindraje.DescripcionCilindraje = "10 o mas Pasajeros";
            itemCilindraje.idCilindraje = 31;
            itemCilindraje.idClase = 8;
            lstCilindraje.Add(itemCilindraje);

            return lstCilindraje;

        }
#endregion LoadCombos

        private IList<Cilindraje> CargarListaCilindraje(string ClaseSelected)
        {
            IList<Cilindraje> lstCilindraje = new List<Cilindraje>();

            foreach (Cilindraje item in CargarListaCilindraje())
            {
                if (ClaseSelected.Equals(item.idClase.ToString()))
                {
                    lstCilindraje.Add(item);
                }

            }
            return lstCilindraje;

        }
       
        private void CargarCombos()
        {

            rdItemClase.DataSource = CargarListaClase();
            rdItemClase.DataTextField = "DescripcionClase";
            rdItemClase.DataValueField = "IdClase";
            rdItemClase.DataBind();
            
            rdModelo.DataSource = CargarListaModelo();
            rdModelo.DataTextField = "DescripcionModelo";
            rdModelo.DataValueField = "idModelo";
            rdModelo.DataBind();
        }



        protected void rdItemClase_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rdItemClase.SelectedIndex != -1)
            {
		    rdCilindraje.Visible = true;
                string ClaseSelected = rdItemClase.SelectedItem.Value;//drpClase.SelectedValue;
                rdCilindraje.DataSource = CargarListaCilindraje(ClaseSelected);
                rdCilindraje.DataTextField = "DescripcionCilindraje";
                rdCilindraje.DataValueField = "idCilindraje";
                rdCilindraje.DataBind();
                lblCilidraje.Visible = true;

            }
        }

    }
    #region Entidades
    public class Tarifa
    {
        public string ClaseTarifa { get; set; }
        public string ModeloTarifa { get; set; }
        public string CilindrajeTarifa { get; set; }
        public double Total { get; set; }
        public string Cotizacion { get { return ClaseTarifa + " " + ModeloTarifa + " " + CilindrajeTarifa; } }
    }
    public class Clase
    {
        public int idClase { get; set; }
        public string DescripcionClase { get; set; }

    }
    public class Modelo
    {
        public int idModelo { get; set; }
        public string DescripcionModelo { get; set; }

    }
    public class Cilindraje
    {
        public int idCilindraje { get; set; }
        public string DescripcionCilindraje { get; set; }
        public int idClase { get; set; }
    }
    #endregion Entidades
}
