using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace CAFAM.WebPortal.Forms
{
    [Serializable]
    public sealed class EntSuspensionTrabajadoresDetalle
    {
		#region Fields
		private int iD;
		private int iDSusp;
		private string idType;
		private string idNumber;
		private string firstName;
		private string secondName;
		private string firstSurname;
		private string secondSurname;
		private string suspentionStart;
		private string suspentionStop;
		#endregion
		
		#region Constructors
		/// <summary>
		/// Initializes a new instance of the TblFormSuspensionTrabajadoresDetalle class.
		/// </summary>
		public EntSuspensionTrabajadoresDetalle() {
		}
		
		/// <summary>
		/// Initializes a new instance of the TblFormSuspensionTrabajadoresDetalle class.
		/// </summary>
		public EntSuspensionTrabajadoresDetalle(int iDSusp, string idType, string idNumber, string firstName, string secondName, string firstSurname, string secondSurname, string suspentionStart, string suspentionStop) {
			this.iDSusp = iDSusp;
			this.idType = idType;
			this.idNumber = idNumber;
			this.firstName = firstName;
			this.secondName = secondName;
			this.firstSurname = firstSurname;
			this.secondSurname = secondSurname;
			this.suspentionStart = suspentionStart;
			this.suspentionStop = suspentionStop;
		}
		
		/// <summary>
		/// Initializes a new instance of the TblFormSuspensionTrabajadoresDetalle class.
		/// </summary>
		public EntSuspensionTrabajadoresDetalle(int iD, int iDSusp, string idType, string idNumber, string firstName, string secondName, string firstSurname, string secondSurname, string suspentionStart, string suspentionStop) {
			this.iD = iD;
			this.iDSusp = iDSusp;
			this.idType = idType;
			this.idNumber = idNumber;
			this.firstName = firstName;
			this.secondName = secondName;
			this.firstSurname = firstSurname;
			this.secondSurname = secondSurname;
			this.suspentionStart = suspentionStart;
			this.suspentionStop = suspentionStop;
		}
		#endregion
		
		#region Properties
		/// <summary>
		/// Gets or sets the ID value.
		/// </summary>
		public int ID {
			get { return iD; }
			set { iD = value; }
		}
		
		/// <summary>
		/// Gets or sets the IDSusp value.
		/// </summary>
		public int IDSusp {
			get { return iDSusp; }
			set { iDSusp = value; }
		}
		
		/// <summary>
		/// Gets or sets the IdType value.
		/// </summary>
		public string IdType {
			get { return idType; }
			set { idType = value; }
		}
		
		/// <summary>
		/// Gets or sets the IdNumber value.
		/// </summary>
		public string IdNumber {
			get { return idNumber; }
			set { idNumber = value; }
		}
		
		/// <summary>
		/// Gets or sets the FirstName value.
		/// </summary>
		public string FirstName {
			get { return firstName; }
			set { firstName = value; }
		}
		
		/// <summary>
		/// Gets or sets the SecondName value.
		/// </summary>
		public string SecondName {
			get { return secondName; }
			set { secondName = value; }
		}
		
		/// <summary>
		/// Gets or sets the FirstSurname value.
		/// </summary>
		public string FirstSurname {
			get { return firstSurname; }
			set { firstSurname = value; }
		}
		
		/// <summary>
		/// Gets or sets the SecondSurname value.
		/// </summary>
		public string SecondSurname {
			get { return secondSurname; }
			set { secondSurname = value; }
		}
		
		/// <summary>
		/// Gets or sets the SuspentionStart value.
		/// </summary>
		public string SuspentionStart {
			get { return suspentionStart; }
			set { suspentionStart = value; }
		}
		
		/// <summary>
		/// Gets or sets the SuspentionStop value.
		/// </summary>
		public string SuspentionStop {
			get { return suspentionStop; }
			set { suspentionStop = value; }
		}
		#endregion
		
		#region Methods
		/// <summary>
		/// Saves a record to the tblFormSuspensionTrabajadoresDetalle table.
		/// </summary>

        public void Insert(SqlTransaction sqlTran, SqlConnection conn)
        {
            SqlCommand cmdSQLCommand = new SqlCommand("[tblFormSuspensionTrabajadoresDetalleInsert]", conn, sqlTran);
            cmdSQLCommand.CommandType = CommandType.StoredProcedure;

            try
            {
                cmdSQLCommand.Parameters.Add(new SqlParameter("@IDSusp", SqlDbType.Int, 4, ParameterDirection.Input, true, 10, 0, "", DataRowVersion.Proposed, iDSusp));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@IdType", SqlDbType.Int, 4, ParameterDirection.Input, true, 10, 0, "", DataRowVersion.Proposed, idType));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@IdNumber", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 10, 0, "", DataRowVersion.Proposed,idNumber));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@FirstName", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 10, 0, "", DataRowVersion.Proposed,firstName));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@SecondName", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 10, 0, "", DataRowVersion.Proposed,secondName));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@FirstSurname", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 10, 0, "", DataRowVersion.Proposed,firstSurname));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@SecondSurname", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 10, 0, "", DataRowVersion.Proposed,secondSurname));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@SuspentionStart", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 10, 0, "", DataRowVersion.Proposed,suspentionStart));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@SuspentionStop", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 10, 0, "", DataRowVersion.Proposed,suspentionStop));

                cmdSQLCommand.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw new Exception(String.Format("ProyectoDAL::Insertar::Ha ocurrido un Error. Mensaje:{0}", ex.Message), ex);
            }
        }
		#endregion
	}
}
