using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

using SharpCore.Data;

namespace CAFAM.WebPortal.Forms {
	public sealed class EntAfiliacionIndividuales {
		#region Fields
		private int id;
		private string nITentidadasociadora;
		private string nombreEntidadAsociadora;
		private string ePS;
		private string fondodePensiones;
		private string tipodeIdentificacion;
		private string numerodeIdentificacion;
		private string primerApellido;
		private string segundoApellido;
		private string primerNombre;
		private string segundoNombre;
		private string ingresosmensuales;
		private string fechadenacimiento;
		private string sexo;
		private string estadoCivil;
		private string ciudad;
		private string direccionActual;
		private string estrato;
		private string barrio;
		private string telefono1;
		private string telefono2;
		private string correoElectronico;
		private string estudiosRealizados;
		private string tituloOtorgado;
		private string cnyTipodeIdentificacion;
		private string cnyNumerodeIdentificacion;
		private string cnyPrimerApellido;
		private string cnySegundoApellido;
		private string cnyPrimerNombre;
		private string cnySegundoNombre;
		private string cnyConviven;
		private string cnyFechadenacimiento;
		private string cnySexo;
		private string cnyPais;
		private string cnyCiudad;
		private string cnyDireccionactual;
		private string cnyEstrato;
		private string cnyBarrio;
		private string cnyCiudadConviven;
		private string cnyTelefono;
		private string cnyOcupacionactual;
		private string cnyLabEmpresadondelabora;
		private string cnyLabNIT;
		private bool cnyLabRecibesubsidio;
		private string cnyLabSueldomensual;
		private string cnyLabTelefono;
		private string cnyLabTipodeContrato;
		private string cnyLabTipodevinculacion;

        public List<EntAfiliacionIndividualesDetalle> PersonasACargo;
		#endregion
		
		#region Constructors
		/// <summary>
		/// Initializes a new instance of the TblAfiliacionIndividuale class.
		/// </summary>
		public EntAfiliacionIndividuales() {
		}
		
		/// <summary>
		/// Initializes a new instance of the TblAfiliacionIndividuale class.
		/// </summary>
		public EntAfiliacionIndividuales(string nITentidadasociadora, string nombreEntidadAsociadora, string ePS, string fondodePensiones, string tipodeIdentificacion, string numerodeIdentificacion, string primerApellido, string segundoApellido, string primerNombre, string segundoNombre, string ingresosmensuales, string fechadenacimiento, string sexo, string estadoCivil, string ciudad, string direccionActual, string estrato, string barrio, string telefono1, string telefono2, string correoElectronico, string estudiosRealizados, string tituloOtorgado, string cnyTipodeIdentificacion, string cnyNumerodeIdentificacion, string cnyPrimerApellido, string cnySegundoApellido, string cnyPrimerNombre, string cnySegundoNombre, string cnyConviven, string cnyFechadenacimiento, string cnySexo, string cnyPais, string cnyCiudad, string cnyDireccionactual, string cnyEstrato, string cnyBarrio, string cnyCiudadConviven, string cnyTelefono, string cnyOcupacionactual, string cnyLabEmpresadondelabora, string cnyLabNIT, bool cnyLabRecibesubsidio, string cnyLabSueldomensual, string cnyLabTelefono, string cnyLabTipodeContrato, string cnyLabTipodevinculacion) {
			this.nITentidadasociadora = nITentidadasociadora;
			this.nombreEntidadAsociadora = nombreEntidadAsociadora;
			this.ePS = ePS;
			this.fondodePensiones = fondodePensiones;
			this.tipodeIdentificacion = tipodeIdentificacion;
			this.numerodeIdentificacion = numerodeIdentificacion;
			this.primerApellido = primerApellido;
			this.segundoApellido = segundoApellido;
			this.primerNombre = primerNombre;
			this.segundoNombre = segundoNombre;
			this.ingresosmensuales = ingresosmensuales;
			this.fechadenacimiento = fechadenacimiento;
			this.sexo = sexo;
			this.estadoCivil = estadoCivil;
			this.ciudad = ciudad;
			this.direccionActual = direccionActual;
			this.estrato = estrato;
			this.barrio = barrio;
			this.telefono1 = telefono1;
			this.telefono2 = telefono2;
			this.correoElectronico = correoElectronico;
			this.estudiosRealizados = estudiosRealizados;
			this.tituloOtorgado = tituloOtorgado;
			this.cnyTipodeIdentificacion = cnyTipodeIdentificacion;
			this.cnyNumerodeIdentificacion = cnyNumerodeIdentificacion;
			this.cnyPrimerApellido = cnyPrimerApellido;
			this.cnySegundoApellido = cnySegundoApellido;
			this.cnyPrimerNombre = cnyPrimerNombre;
			this.cnySegundoNombre = cnySegundoNombre;
			this.cnyConviven = cnyConviven;
			this.cnyFechadenacimiento = cnyFechadenacimiento;
			this.cnySexo = cnySexo;
			this.cnyPais = cnyPais;
			this.cnyCiudad = cnyCiudad;
			this.cnyDireccionactual = cnyDireccionactual;
			this.cnyEstrato = cnyEstrato;
			this.cnyBarrio = cnyBarrio;
			this.cnyCiudadConviven = cnyCiudadConviven;
			this.cnyTelefono = cnyTelefono;
			this.cnyOcupacionactual = cnyOcupacionactual;
			this.cnyLabEmpresadondelabora = cnyLabEmpresadondelabora;
			this.cnyLabNIT = cnyLabNIT;
			this.cnyLabRecibesubsidio = cnyLabRecibesubsidio;
			this.cnyLabSueldomensual = cnyLabSueldomensual;
			this.cnyLabTelefono = cnyLabTelefono;
			this.cnyLabTipodeContrato = cnyLabTipodeContrato;
			this.cnyLabTipodevinculacion = cnyLabTipodevinculacion;
		}
		
		/// <summary>
		/// Initializes a new instance of the TblAfiliacionIndividuale class.
		/// </summary>
		public EntAfiliacionIndividuales(int id, string nITentidadasociadora, string nombreEntidadAsociadora, string ePS, string fondodePensiones, string tipodeIdentificacion, string numerodeIdentificacion, string primerApellido, string segundoApellido, string primerNombre, string segundoNombre, string ingresosmensuales, string fechadenacimiento, string sexo, string estadoCivil, string ciudad, string direccionActual, string estrato, string barrio, string telefono1, string telefono2, string correoElectronico, string estudiosRealizados, string tituloOtorgado, string cnyTipodeIdentificacion, string cnyNumerodeIdentificacion, string cnyPrimerApellido, string cnySegundoApellido, string cnyPrimerNombre, string cnySegundoNombre, string cnyConviven, string cnyFechadenacimiento, string cnySexo, string cnyPais, string cnyCiudad, string cnyDireccionactual, string cnyEstrato, string cnyBarrio, string cnyCiudadConviven, string cnyTelefono, string cnyOcupacionactual, string cnyLabEmpresadondelabora, string cnyLabNIT, bool cnyLabRecibesubsidio, string cnyLabSueldomensual, string cnyLabTelefono, string cnyLabTipodeContrato, string cnyLabTipodevinculacion) {
			this.id = id;
			this.nITentidadasociadora = nITentidadasociadora;
			this.nombreEntidadAsociadora = nombreEntidadAsociadora;
			this.ePS = ePS;
			this.fondodePensiones = fondodePensiones;
			this.tipodeIdentificacion = tipodeIdentificacion;
			this.numerodeIdentificacion = numerodeIdentificacion;
			this.primerApellido = primerApellido;
			this.segundoApellido = segundoApellido;
			this.primerNombre = primerNombre;
			this.segundoNombre = segundoNombre;
			this.ingresosmensuales = ingresosmensuales;
			this.fechadenacimiento = fechadenacimiento;
			this.sexo = sexo;
			this.estadoCivil = estadoCivil;
			this.ciudad = ciudad;
			this.direccionActual = direccionActual;
			this.estrato = estrato;
			this.barrio = barrio;
			this.telefono1 = telefono1;
			this.telefono2 = telefono2;
			this.correoElectronico = correoElectronico;
			this.estudiosRealizados = estudiosRealizados;
			this.tituloOtorgado = tituloOtorgado;
			this.cnyTipodeIdentificacion = cnyTipodeIdentificacion;
			this.cnyNumerodeIdentificacion = cnyNumerodeIdentificacion;
			this.cnyPrimerApellido = cnyPrimerApellido;
			this.cnySegundoApellido = cnySegundoApellido;
			this.cnyPrimerNombre = cnyPrimerNombre;
			this.cnySegundoNombre = cnySegundoNombre;
			this.cnyConviven = cnyConviven;
			this.cnyFechadenacimiento = cnyFechadenacimiento;
			this.cnySexo = cnySexo;
			this.cnyPais = cnyPais;
			this.cnyCiudad = cnyCiudad;
			this.cnyDireccionactual = cnyDireccionactual;
			this.cnyEstrato = cnyEstrato;
			this.cnyBarrio = cnyBarrio;
			this.cnyCiudadConviven = cnyCiudadConviven;
			this.cnyTelefono = cnyTelefono;
			this.cnyOcupacionactual = cnyOcupacionactual;
			this.cnyLabEmpresadondelabora = cnyLabEmpresadondelabora;
			this.cnyLabNIT = cnyLabNIT;
			this.cnyLabRecibesubsidio = cnyLabRecibesubsidio;
			this.cnyLabSueldomensual = cnyLabSueldomensual;
			this.cnyLabTelefono = cnyLabTelefono;
			this.cnyLabTipodeContrato = cnyLabTipodeContrato;
			this.cnyLabTipodevinculacion = cnyLabTipodevinculacion;
		}
		#endregion
		
		#region Properties
		/// <summary>
		/// Gets or sets the Id value.
		/// </summary>
		public int Id {
			get { return id; }
			set { id = value; }
		}
		
		/// <summary>
		/// Gets or sets the NITentidadasociadora value.
		/// </summary>
		public string NITentidadasociadora {
			get { return nITentidadasociadora; }
			set { nITentidadasociadora = value; }
		}
		
		/// <summary>
		/// Gets or sets the NombreEntidadAsociadora value.
		/// </summary>
		public string NombreEntidadAsociadora {
			get { return nombreEntidadAsociadora; }
			set { nombreEntidadAsociadora = value; }
		}
		
		/// <summary>
		/// Gets or sets the EPS value.
		/// </summary>
		public string EPS {
			get { return ePS; }
			set { ePS = value; }
		}
		
		/// <summary>
		/// Gets or sets the FondodePensiones value.
		/// </summary>
		public string FondodePensiones {
			get { return fondodePensiones; }
			set { fondodePensiones = value; }
		}
		
		/// <summary>
		/// Gets or sets the TipodeIdentificacion value.
		/// </summary>
		public string TipodeIdentificacion {
			get { return tipodeIdentificacion; }
			set { tipodeIdentificacion = value; }
		}
		
		/// <summary>
		/// Gets or sets the NumerodeIdentificacion value.
		/// </summary>
		public string NumerodeIdentificacion {
			get { return numerodeIdentificacion; }
			set { numerodeIdentificacion = value; }
		}
		
		/// <summary>
		/// Gets or sets the PrimerApellido value.
		/// </summary>
		public string PrimerApellido {
			get { return primerApellido; }
			set { primerApellido = value; }
		}
		
		/// <summary>
		/// Gets or sets the SegundoApellido value.
		/// </summary>
		public string SegundoApellido {
			get { return segundoApellido; }
			set { segundoApellido = value; }
		}
		
		/// <summary>
		/// Gets or sets the PrimerNombre value.
		/// </summary>
		public string PrimerNombre {
			get { return primerNombre; }
			set { primerNombre = value; }
		}
		
		/// <summary>
		/// Gets or sets the SegundoNombre value.
		/// </summary>
		public string SegundoNombre {
			get { return segundoNombre; }
			set { segundoNombre = value; }
		}
		
		/// <summary>
		/// Gets or sets the Ingresosmensuales value.
		/// </summary>
		public string Ingresosmensuales {
			get { return ingresosmensuales; }
			set { ingresosmensuales = value; }
		}
		
		/// <summary>
		/// Gets or sets the Fechadenacimiento value.
		/// </summary>
		public string Fechadenacimiento {
			get { return fechadenacimiento; }
			set { fechadenacimiento = value; }
		}
		
		/// <summary>
		/// Gets or sets the Sexo value.
		/// </summary>
		public string Sexo {
			get { return sexo; }
			set { sexo = value; }
		}
		
		/// <summary>
		/// Gets or sets the EstadoCivil value.
		/// </summary>
		public string EstadoCivil {
			get { return estadoCivil; }
			set { estadoCivil = value; }
		}
		
		/// <summary>
		/// Gets or sets the Ciudad value.
		/// </summary>
		public string Ciudad {
			get { return ciudad; }
			set { ciudad = value; }
		}
		
		/// <summary>
		/// Gets or sets the DireccionActual value.
		/// </summary>
		public string DireccionActual {
			get { return direccionActual; }
			set { direccionActual = value; }
		}
		
		/// <summary>
		/// Gets or sets the Estrato value.
		/// </summary>
		public string Estrato {
			get { return estrato; }
			set { estrato = value; }
		}
		
		/// <summary>
		/// Gets or sets the Barrio value.
		/// </summary>
		public string Barrio {
			get { return barrio; }
			set { barrio = value; }
		}
		
		/// <summary>
		/// Gets or sets the Telefono1 value.
		/// </summary>
		public string Telefono1 {
			get { return telefono1; }
			set { telefono1 = value; }
		}
		
		/// <summary>
		/// Gets or sets the Telefono2 value.
		/// </summary>
		public string Telefono2 {
			get { return telefono2; }
			set { telefono2 = value; }
		}
		
		/// <summary>
		/// Gets or sets the CorreoElectronico value.
		/// </summary>
		public string CorreoElectronico {
			get { return correoElectronico; }
			set { correoElectronico = value; }
		}
		
		/// <summary>
		/// Gets or sets the EstudiosRealizados value.
		/// </summary>
		public string EstudiosRealizados {
			get { return estudiosRealizados; }
			set { estudiosRealizados = value; }
		}
		
		/// <summary>
		/// Gets or sets the TituloOtorgado value.
		/// </summary>
		public string TituloOtorgado {
			get { return tituloOtorgado; }
			set { tituloOtorgado = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyTipodeIdentificacion value.
		/// </summary>
		public string CnyTipodeIdentificacion {
			get { return cnyTipodeIdentificacion; }
			set { cnyTipodeIdentificacion = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyNumerodeIdentificacion value.
		/// </summary>
		public string CnyNumerodeIdentificacion {
			get { return cnyNumerodeIdentificacion; }
			set { cnyNumerodeIdentificacion = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyPrimerApellido value.
		/// </summary>
		public string CnyPrimerApellido {
			get { return cnyPrimerApellido; }
			set { cnyPrimerApellido = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnySegundoApellido value.
		/// </summary>
		public string CnySegundoApellido {
			get { return cnySegundoApellido; }
			set { cnySegundoApellido = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyPrimerNombre value.
		/// </summary>
		public string CnyPrimerNombre {
			get { return cnyPrimerNombre; }
			set { cnyPrimerNombre = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnySegundoNombre value.
		/// </summary>
		public string CnySegundoNombre {
			get { return cnySegundoNombre; }
			set { cnySegundoNombre = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyConviven value.
		/// </summary>
		public string CnyConviven {
			get { return cnyConviven; }
			set { cnyConviven = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyFechadenacimiento value.
		/// </summary>
		public string CnyFechadenacimiento {
			get { return cnyFechadenacimiento; }
			set { cnyFechadenacimiento = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnySexo value.
		/// </summary>
		public string CnySexo {
			get { return cnySexo; }
			set { cnySexo = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyPais value.
		/// </summary>
		public string CnyPais {
			get { return cnyPais; }
			set { cnyPais = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyCiudad value.
		/// </summary>
		public string CnyCiudad {
			get { return cnyCiudad; }
			set { cnyCiudad = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyDireccionactual value.
		/// </summary>
		public string CnyDireccionactual {
			get { return cnyDireccionactual; }
			set { cnyDireccionactual = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyEstrato value.
		/// </summary>
		public string CnyEstrato {
			get { return cnyEstrato; }
			set { cnyEstrato = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyBarrio value.
		/// </summary>
		public string CnyBarrio {
			get { return cnyBarrio; }
			set { cnyBarrio = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyCiudadConviven value.
		/// </summary>
		public string CnyCiudadConviven {
			get { return cnyCiudadConviven; }
			set { cnyCiudadConviven = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyTelefono value.
		/// </summary>
		public string CnyTelefono {
			get { return cnyTelefono; }
			set { cnyTelefono = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyOcupacionactual value.
		/// </summary>
		public string CnyOcupacionactual {
			get { return cnyOcupacionactual; }
			set { cnyOcupacionactual = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyLabEmpresadondelabora value.
		/// </summary>
		public string CnyLabEmpresadondelabora {
			get { return cnyLabEmpresadondelabora; }
			set { cnyLabEmpresadondelabora = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyLabNIT value.
		/// </summary>
		public string CnyLabNIT {
			get { return cnyLabNIT; }
			set { cnyLabNIT = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyLabRecibesubsidio value.
		/// </summary>
		public bool CnyLabRecibesubsidio {
			get { return cnyLabRecibesubsidio; }
			set { cnyLabRecibesubsidio = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyLabSueldomensual value.
		/// </summary>
		public string CnyLabSueldomensual {
			get { return cnyLabSueldomensual; }
			set { cnyLabSueldomensual = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyLabTelefono value.
		/// </summary>
		public string CnyLabTelefono {
			get { return cnyLabTelefono; }
			set { cnyLabTelefono = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyLabTipodeContrato value.
		/// </summary>
		public string CnyLabTipodeContrato {
			get { return cnyLabTipodeContrato; }
			set { cnyLabTipodeContrato = value; }
		}
		
		/// <summary>
		/// Gets or sets the CnyLabTipodevinculacion value.
		/// </summary>
		public string CnyLabTipodevinculacion {
			get { return cnyLabTipodevinculacion; }
			set { cnyLabTipodevinculacion = value; }
		}
		#endregion
		
	}
}
