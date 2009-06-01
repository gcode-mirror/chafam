using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace DAO {
	public sealed class FormSuspensionTrabajadore {
		#region Fields
		private int id;
		private string   currentUser;
		private DateTime dateIns;
		private string   nIT;
		private string   sUBNIT;
		private string   razonSocial;
		#endregion
		
		#region Constructors
		/// <summary>
		/// Initializes a new instance of the TblFormSuspensionTrabajadore class.
		/// </summary>
		public FormSuspensionTrabajadore() {
		}
		
		/// <summary>
		/// Initializes a new instance of the TblFormSuspensionTrabajadore class.
		/// </summary>
		public FormSuspensionTrabajadore(string currentUser, DateTime dateIns, string nIT, string sUBNIT, string razonSocial) {
			this.currentUser = currentUser;
			this.dateIns = dateIns;
			this.nIT = nIT;
			this.sUBNIT = sUBNIT;
			this.razonSocial = razonSocial;
		}
		
		/// <summary>
		/// Initializes a new instance of the TblFormSuspensionTrabajadore class.
		/// </summary>
		public FormSuspensionTrabajadore(int id, string currentUser, DateTime dateIns, string nIT, string sUBNIT, string razonSocial) {
			this.id = id;
			this.currentUser = currentUser;
			this.dateIns = dateIns;
			this.nIT = nIT;
			this.sUBNIT = sUBNIT;
			this.razonSocial = razonSocial;
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
		/// Gets or sets the CurrentUser value.
		/// </summary>
		public string CurrentUser {
			get { return currentUser; }
			set { currentUser = value; }
		}
		
		/// <summary>
		/// Gets or sets the DateIns value.
		/// </summary>
		public DateTime DateIns {
			get { return dateIns; }
			set { dateIns = value; }
		}
		
		/// <summary>
		/// Gets or sets the NIT value.
		/// </summary>
		public string NIT {
			get { return nIT; }
			set { nIT = value; }
		}
		
		/// <summary>
		/// Gets or sets the SUBNIT value.
		/// </summary>
		public string SUBNIT {
			get { return sUBNIT; }
			set { sUBNIT = value; }
		}
		
		/// <summary>
		/// Gets or sets the RazonSocial value.
		/// </summary>
		public string RazonSocial {
			get { return razonSocial; }
			set { razonSocial = value; }
		}
		#endregion
		
		#region Methods

        public void Insert()
        {
            SqlCommand cmdSQLCommand = new SqlCommand();
            cmdSQLCommand.CommandText = "[tblSuspensionTrabajadoresInsert]";
            cmdSQLCommand.CommandType = CommandType.StoredProcedure;
            cmdSQLCommand.Connection = DAO.ConnectionManager.getCnn();

            try
            {
                cmdSQLCommand.Parameters.Add(new SqlParameter("@CurrentUser", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 10, 0, "", DataRowVersion.Proposed, currentUser));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@DateIns", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dateIns));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@NIT", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, nIT));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@SUBNIT", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, sUBNIT));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@RazonSocial", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, razonSocial));

                Id = Int32.Parse(cmdSQLCommand.ExecuteScalar().ToString());
            }
            catch (Exception ex)
            {
                throw new Exception(String.Format("ProyectoDAL::Insertar::Ha ocurrido un Error. Mensaje:{0}", ex.Message), ex);
            }
            finally
            {
                cmdSQLCommand.Dispose();
            }
        }
			
		#endregion
	}
}
