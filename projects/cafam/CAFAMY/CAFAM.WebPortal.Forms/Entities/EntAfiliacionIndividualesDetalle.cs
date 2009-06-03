using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

using SharpCore.Data;

namespace CAFAM.WebPortal.Forms {
	public sealed class EntAfiliacionIndividualesDetalle {
		#region Fields
		private int id;
		private string pacNIdentificacion;
		private string pacPrimerApellido;
		private string pacSegundoApellido;
		private string pacPrimerNombre;
		private string pacSegundoNombre;
		private string pacSexo;
		private string pacFechadeNacimiento;
		private string pacParentesco;
		private string pacObservaciones;
		#endregion
		
		#region Constructors
		/// <summary>
		/// Initializes a new instance of the TblAfiliacionIndividualesDetalle class.
		/// </summary>
		public EntAfiliacionIndividualesDetalle() {
		}
		
		/// <summary>
		/// Initializes a new instance of the TblAfiliacionIndividualesDetalle class.
		/// </summary>
		public EntAfiliacionIndividualesDetalle(string pacNIdentificacion, string pacPrimerApellido, string pacSegundoApellido, string pacPrimerNombre, string pacSegundoNombre, string pacSexo, string pacFechadeNacimiento, string pacParentesco, string pacObservaciones) {
			this.pacNIdentificacion = pacNIdentificacion;
			this.pacPrimerApellido = pacPrimerApellido;
			this.pacSegundoApellido = pacSegundoApellido;
			this.pacPrimerNombre = pacPrimerNombre;
			this.pacSegundoNombre = pacSegundoNombre;
			this.pacSexo = pacSexo;
			this.pacFechadeNacimiento = pacFechadeNacimiento;
			this.pacParentesco = pacParentesco;
			this.pacObservaciones = pacObservaciones;
		}
		
		/// <summary>
		/// Initializes a new instance of the TblAfiliacionIndividualesDetalle class.
		/// </summary>
		public EntAfiliacionIndividualesDetalle(int id, string pacNIdentificacion, string pacPrimerApellido, string pacSegundoApellido, string pacPrimerNombre, string pacSegundoNombre, string pacSexo, string pacFechadeNacimiento, string pacParentesco, string pacObservaciones) {
			this.id = id;
			this.pacNIdentificacion = pacNIdentificacion;
			this.pacPrimerApellido = pacPrimerApellido;
			this.pacSegundoApellido = pacSegundoApellido;
			this.pacPrimerNombre = pacPrimerNombre;
			this.pacSegundoNombre = pacSegundoNombre;
			this.pacSexo = pacSexo;
			this.pacFechadeNacimiento = pacFechadeNacimiento;
			this.pacParentesco = pacParentesco;
			this.pacObservaciones = pacObservaciones;
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
		/// Gets or sets the PacNIdentificacion value.
		/// </summary>
		public string PacNIdentificacion {
			get { return pacNIdentificacion; }
			set { pacNIdentificacion = value; }
		}
		
		/// <summary>
		/// Gets or sets the PacPrimerApellido value.
		/// </summary>
		public string PacPrimerApellido {
			get { return pacPrimerApellido; }
			set { pacPrimerApellido = value; }
		}
		
		/// <summary>
		/// Gets or sets the PacSegundoApellido value.
		/// </summary>
		public string PacSegundoApellido {
			get { return pacSegundoApellido; }
			set { pacSegundoApellido = value; }
		}
		
		/// <summary>
		/// Gets or sets the PacPrimerNombre value.
		/// </summary>
		public string PacPrimerNombre {
			get { return pacPrimerNombre; }
			set { pacPrimerNombre = value; }
		}
		
		/// <summary>
		/// Gets or sets the PacSegundoNombre value.
		/// </summary>
		public string PacSegundoNombre {
			get { return pacSegundoNombre; }
			set { pacSegundoNombre = value; }
		}
		
		/// <summary>
		/// Gets or sets the PacSexo value.
		/// </summary>
		public string PacSexo {
			get { return pacSexo; }
			set { pacSexo = value; }
		}
		
		/// <summary>
		/// Gets or sets the PacFechadeNacimiento value.
		/// </summary>
		public string PacFechadeNacimiento {
			get { return pacFechadeNacimiento; }
			set { pacFechadeNacimiento = value; }
		}
		
		/// <summary>
		/// Gets or sets the PacParentesco value.
		/// </summary>
		public string PacParentesco {
			get { return pacParentesco; }
			set { pacParentesco = value; }
		}
		
		/// <summary>
		/// Gets or sets the PacObservaciones value.
		/// </summary>
		public string PacObservaciones {
			get { return pacObservaciones; }
			set { pacObservaciones = value; }
		}
		#endregion
	
	}
}