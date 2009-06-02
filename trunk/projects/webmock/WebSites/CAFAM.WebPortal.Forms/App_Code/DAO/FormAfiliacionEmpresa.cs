using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

//using SharpCore.Data;

namespace DAO 
{
    [Serializable]
	public sealed class FormAfiliacionEmpresa {
		#region Fields
		private string nit;
		private string nombreRazonSocial;
		private string ciudad;
		private string codigoCiudad;
		private string direccion;
		private string telefono1;
		private string telefono2;
		private string aA;
		private string fax;
		private string correoElectronico;
		private bool entidadDocente;
		private string nombreGerenteRepresentanteLegal;
		private string nombreJefePersonal;
		private string nroEscrituraConstitucion;
		private string nroNotaria;
		private string fechaConstitución;
		private string tipoEmpresa;
		private string claseSociedad;
		private string nombreRUT;
		private string codigo;
		private string porcentajeSubsidioFamiliar;
		private string porcentajeSENA;
		private string porcentajeICBF;
		private string porcentajeESAP;
		private string porcentajeInstitutosTecnicos;
		private bool filialOtraEmpresaAfiliada;
        private string nombreFilialOtraEmpresaAfiliada;
		private string ubicacionCiudadCasaMatriz;
		private string sustitucionNit;
		private string sustitucionNombreRazonSocial;
		private bool ciaAfiliadaCajaCompensacion;
		private string nombreCiaAfiliadaCajaCompensacion;
		private string motivoDesafiliacionCaja;
		private string numeroTotalTrabajadores;
		private string valorUltimaNomina;
		private string correspondienteAlMes;
		#endregion
		
		#region Constructors
		/// <summary>
		/// Initializes a new instance of the AfiliacionEmpresa class.
		/// </summary>
		public FormAfiliacionEmpresa() {
		}
		
		/// <summary>
		/// Initializes a new instance of the AfiliacionEmpresa class.
		/// </summary>
		public FormAfiliacionEmpresa(string nit, string nombreRazonSocial,
            string ciudad, string codigoCiudad,string Direccion,
            string telefono1, string telefono2, string aA,
            string fax, string correoElectronico,
            bool entidadDocente, string nombreGerenteRepresentanteLegal,
            string nombreJefePersonal, string nroEscrituraConstitucion,
            string nroNotaria, string fechaConstitucion,
            string tipoEmpresa, string claseSociedad, string nombreRUT,
            string codigo, string porcentajeSubsidioFamiliar,
            string porcentajeSENA, string porcentajeICBF,
            string porcentajeESAP, string porcentajeInstitutosTecnicos,
            bool filialOtraEmpresaAfiliada, string nombreFilialOtraEmpresaAfiliada,
            string ubicacionCiudadCasaMatriz, string sustitucionNit,
            string sustitucionNombreRazonSocial, bool ciaAfiliadaCajaCompensacion,
            string nombreCiaAfiliadaCajaCompensacion,
            string motivoDesafiliacionCaja, string numeroTotalTrabajadores,
            string valorUltimaNomina, string correspondienteAlMes)
        {
			this.Nit = nit;
		    this.NombreRazonSocial = nombreRazonSocial;
			this.ciudad = ciudad;
			this.codigoCiudad = codigoCiudad;
            this.direccion = Direccion;
			this.telefono1 = telefono1;
			this.telefono2 = telefono2;
			this.aA = aA;
			this.fax = fax;
			this.correoElectronico = correoElectronico;
			this.entidadDocente = entidadDocente;
			this.nombreGerenteRepresentanteLegal = nombreGerenteRepresentanteLegal;
			this.nombreJefePersonal = nombreJefePersonal;
			this.nroEscrituraConstitucion = nroEscrituraConstitucion;
			this.nroNotaria = nroNotaria;
            this.fechaConstitución = fechaConstitucion;
			this.tipoEmpresa = tipoEmpresa;
			this.claseSociedad = claseSociedad;
			this.nombreRUT = nombreRUT;
			this.codigo = codigo;
			this.porcentajeSubsidioFamiliar = porcentajeSubsidioFamiliar;
			this.porcentajeSENA = porcentajeSENA;
			this.porcentajeICBF = porcentajeICBF;
			this.porcentajeESAP = porcentajeESAP;
			this.porcentajeInstitutosTecnicos = porcentajeInstitutosTecnicos;
			this.filialOtraEmpresaAfiliada = filialOtraEmpresaAfiliada;
			this.nombreFilialOtraEmpresaAfiliada = nombreFilialOtraEmpresaAfiliada;
			this.ubicacionCiudadCasaMatriz = ubicacionCiudadCasaMatriz;
			this.sustitucionNit = sustitucionNit;
			this.sustitucionNombreRazonSocial = sustitucionNombreRazonSocial;
			this.ciaAfiliadaCajaCompensacion = ciaAfiliadaCajaCompensacion;
			this.nombreCiaAfiliadaCajaCompensacion = nombreCiaAfiliadaCajaCompensacion;
			this.motivoDesafiliacionCaja = motivoDesafiliacionCaja;
			this.numeroTotalTrabajadores = numeroTotalTrabajadores;
			this.valorUltimaNomina = valorUltimaNomina;
			this.correspondienteAlMes = correspondienteAlMes;
		}
		#endregion
		
		#region Properties
		/// <summary>
		/// Gets or sets the Nit value.
		/// </summary>
		public string Nit {
			get { return nit; }
			set { nit = value; }
		}
		
		/// <summary>
		/// Gets or sets the NombreRazonSocial value.
		/// </summary>
		public string NombreRazonSocial {
			get { return nombreRazonSocial; }
			set { nombreRazonSocial = value; }
		}
		
		/// <summary>
		/// Gets or sets the Ciudad value.
		/// </summary>
		public string Ciudad {
			get { return ciudad; }
			set { ciudad = value; }
		}
		
		/// <summary>
		/// Gets or sets the CodigoCiudad value.
		/// </summary>
		public string CodigoCiudad {
			get { return codigoCiudad; }
			set { codigoCiudad = value; }
		}
		
		/// <summary>
		/// Gets or sets the Direccion value.
		/// </summary>
		public string Direccion {
			get { return direccion; }
            set { direccion = value; }
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
		/// Gets or sets the AA value.
		/// </summary>
		public string AA {
			get { return aA; }
			set { aA = value; }
		}
		
		/// <summary>
		/// Gets or sets the Fax value.
		/// </summary>
		public string Fax {
			get { return fax; }
			set { fax = value; }
		}
		
		/// <summary>
		/// Gets or sets the CorreoElectronico value.
		/// </summary>
		public string CorreoElectronico {
			get { return correoElectronico; }
			set { correoElectronico = value; }
		}
		
		/// <summary>
		/// Gets or sets the EntidadDocente value.
		/// </summary>
		public bool EntidadDocente {
			get { return entidadDocente; }
			set { entidadDocente = value; }
		}
		
		/// <summary>
		/// Gets or sets the NombreGerenteRepresentanteLegal value.
		/// </summary>
		public string NombreGerenteRepresentanteLegal {
			get { return nombreGerenteRepresentanteLegal; }
			set { nombreGerenteRepresentanteLegal = value; }
		}
		
		/// <summary>
		/// Gets or sets the NombreJefePersonal value.
		/// </summary>
		public string NombreJefePersonal {
			get { return nombreJefePersonal; }
			set { nombreJefePersonal = value; }
		}
		
		/// <summary>
		/// Gets or sets the NroEscrituraConstitucion value.
		/// </summary>
		public string NroEscrituraConstitucion {
			get { return nroEscrituraConstitucion; }
			set { nroEscrituraConstitucion = value; }
		}
		
		/// <summary>
		/// Gets or sets the NroNotaria value.
		/// </summary>
		public string NroNotaria {
			get { return nroNotaria; }
			set { nroNotaria = value; }
		}
		
		/// <summary>
		/// Gets or sets the FechaConstitución value.
		/// </summary>
		public string FechaConstitución {
			get { return fechaConstitución; }
			set { fechaConstitución = value; }
		}
		
		/// <summary>
		/// Gets or sets the TipoEmpresa value.
		/// </summary>
		public string TipoEmpresa {
			get { return tipoEmpresa; }
			set { tipoEmpresa = value; }
		}
		
		/// <summary>
		/// Gets or sets the ClaseSociedad value.
		/// </summary>
		public string ClaseSociedad {
			get { return claseSociedad; }
			set { claseSociedad = value; }
		}
		
		/// <summary>
		/// Gets or sets the NombreRUT value.
		/// </summary>
		public string NombreRUT {
			get { return nombreRUT; }
			set { nombreRUT = value; }
		}
		
		/// <summary>
		/// Gets or sets the Código value.
		/// </summary>
		public string Código {
			get { return codigo; }
			set { codigo = value; }
		}
		
		/// <summary>
		/// Gets or sets the PorcentajeSubsidioFamiliar value.
		/// </summary>
		public string PorcentajeSubsidioFamiliar {
			get { return porcentajeSubsidioFamiliar; }
			set { porcentajeSubsidioFamiliar = value; }
		}
		
		/// <summary>
		/// Gets or sets the PorcentajeSENA value.
		/// </summary>
		public string PorcentajeSENA {
			get { return porcentajeSENA; }
			set { porcentajeSENA = value; }
		}
		
		/// <summary>
		/// Gets or sets the PorcentajeICBF value.
		/// </summary>
		public string PorcentajeICBF {
			get { return porcentajeICBF; }
			set { porcentajeICBF = value; }
		}
		
		/// <summary>
		/// Gets or sets the PorcentajeESAP value.
		/// </summary>
		public string PorcentajeESAP {
			get { return porcentajeESAP; }
			set { porcentajeESAP = value; }
		}
		
		/// <summary>
		/// Gets or sets the PorcentajeInstitutosTecnicos value.
		/// </summary>
		public string PorcentajeInstitutosTecnicos {
			get { return porcentajeInstitutosTecnicos; }
			set { porcentajeInstitutosTecnicos = value; }
		}
		
		/// <summary>
		/// Gets or sets the FilialOtraEmpresaAfiliada value.
		/// </summary>
		public bool FilialOtraEmpresaAfiliada {
			get { return filialOtraEmpresaAfiliada; }
			set { filialOtraEmpresaAfiliada = value; }
		}
		
		/// <summary>
		/// Gets or sets the NombreFilialOtraEmpresaAfiliada value.
		/// </summary>
		public string NombreFilialOtraEmpresaAfiliada {
			get { return nombreFilialOtraEmpresaAfiliada; }
			set { nombreFilialOtraEmpresaAfiliada = value; }
		}
		
		/// <summary>
		/// Gets or sets the UbicacionCiudadCasaMatriz value.
		/// </summary>
		public string UbicacionCiudadCasaMatriz {
			get { return ubicacionCiudadCasaMatriz; }
			set { ubicacionCiudadCasaMatriz = value; }
		}
		
		/// <summary>
		/// Gets or sets the SustitucionNit value.
		/// </summary>
		public string SustitucionNit {
			get { return sustitucionNit; }
			set { sustitucionNit = value; }
		}
		
		/// <summary>
		/// Gets or sets the SustitucionNombreRazonSocial value.
		/// </summary>
		public string SustitucionNombreRazonSocial {
			get { return sustitucionNombreRazonSocial; }
			set { sustitucionNombreRazonSocial = value; }
		}
		
		/// <summary>
		/// Gets or sets the CiaAfiliadaCajaCompensacion value.
		/// </summary>
		public bool CiaAfiliadaCajaCompensacion {
			get { return ciaAfiliadaCajaCompensacion; }
			set { ciaAfiliadaCajaCompensacion = value; }
		}
		
		/// <summary>
		/// Gets or sets the NombreCiaAfiliadaCajaCompensacion value.
		/// </summary>
		public string NombreCiaAfiliadaCajaCompensacion {
			get { return nombreCiaAfiliadaCajaCompensacion; }
			set { nombreCiaAfiliadaCajaCompensacion = value; }
		}
		
		/// <summary>
		/// Gets or sets the MotivoDesafiliacionCaja value.
		/// </summary>
		public string MotivoDesafiliacionCaja {
			get { return motivoDesafiliacionCaja; }
			set { motivoDesafiliacionCaja = value; }
		}
		
		/// <summary>
		/// Gets or sets the NumeroTotalTrabajadores value.
		/// </summary>
		public string NumeroTotalTrabajadores {
			get { return numeroTotalTrabajadores; }
			set { numeroTotalTrabajadores = value; }
		}
		
		/// <summary>
		/// Gets or sets the ValorUltimaNomina value.
		/// </summary>
		public string ValorUltimaNomina {
			get { return valorUltimaNomina; }
			set { valorUltimaNomina = value; }
		}
		
		/// <summary>
		/// Gets or sets the CorrespondienteAlMes value.
		/// </summary>
		public string CorrespondienteAlMes {
			get { return correspondienteAlMes; }
			set { correspondienteAlMes = value; }
		}
		#endregion
		
	}
}
