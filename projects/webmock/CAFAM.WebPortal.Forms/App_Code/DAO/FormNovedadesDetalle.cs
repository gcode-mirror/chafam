using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace DAO 
{
	public sealed class FormNovedadesDetalle {
		#region Fields
		private int iD;
		private int iD_Novedad;
		private string dEPENDIDTYPE;
		private string dEPENDIDNUM;
		private string dEPENDPARENTIDTYPE;
		private string dEPENDPARENTIDNUM;
		private string dEPENDPARENTGENDER;
		private DateTime dEPENDBIRTHDATE;
		private string dEPENDFIRSTSURENAME;
		private string dEPENDSECONDSURENAME;
		private string dEPENDFIRSTNAME;
		private string dEPENDSECONDNAME;
		private string dEPENDKINDSHIP;
		private string dEPENDHANDICAPP;
		#endregion
		
		#region Constructors
		/// <summary>
		/// Initializes a new instance of the TblNovedadesDetalle class.
		/// </summary>
		public FormNovedadesDetalle() {
		}
		
		/// <summary>
		/// Initializes a new instance of the TblNovedadesDetalle class.
		/// </summary>
		public FormNovedadesDetalle(int iD_Novedad, string dEPENDIDTYPE, string dEPENDIDNUM, string dEPENDPARENTIDTYPE, string dEPENDPARENTIDNUM, string dEPENDPARENTGENDER, DateTime dEPENDBIRTHDATE, string dEPENDFIRSTSURENAME, string dEPENDSECONDSURENAME, string dEPENDFIRSTNAME, string dEPENDSECONDNAME, string dEPENDKINDSHIP, string dEPENDHANDICAPP) {
			this.iD_Novedad = iD_Novedad;
			this.dEPENDIDTYPE = dEPENDIDTYPE;
			this.dEPENDIDNUM = dEPENDIDNUM;
			this.dEPENDPARENTIDTYPE = dEPENDPARENTIDTYPE;
			this.dEPENDPARENTIDNUM = dEPENDPARENTIDNUM;
			this.dEPENDPARENTGENDER = dEPENDPARENTGENDER;
			this.dEPENDBIRTHDATE = dEPENDBIRTHDATE;
			this.dEPENDFIRSTSURENAME = dEPENDFIRSTSURENAME;
			this.dEPENDSECONDSURENAME = dEPENDSECONDSURENAME;
			this.dEPENDFIRSTNAME = dEPENDFIRSTNAME;
			this.dEPENDSECONDNAME = dEPENDSECONDNAME;
			this.dEPENDKINDSHIP = dEPENDKINDSHIP;
			this.dEPENDHANDICAPP = dEPENDHANDICAPP;
		}
		
		/// <summary>
		/// Initializes a new instance of the TblNovedadesDetalle class.
		/// </summary>
		public FormNovedadesDetalle(int iD, int iD_Novedad, string dEPENDIDTYPE, string dEPENDIDNUM, string dEPENDPARENTIDTYPE, string dEPENDPARENTIDNUM, string dEPENDPARENTGENDER, DateTime dEPENDBIRTHDATE, string dEPENDFIRSTSURENAME, string dEPENDSECONDSURENAME, string dEPENDFIRSTNAME, string dEPENDSECONDNAME, string dEPENDKINDSHIP, string dEPENDHANDICAPP) {
			this.iD = iD;
			this.iD_Novedad = iD_Novedad;
			this.dEPENDIDTYPE = dEPENDIDTYPE;
			this.dEPENDIDNUM = dEPENDIDNUM;
			this.dEPENDPARENTIDTYPE = dEPENDPARENTIDTYPE;
			this.dEPENDPARENTIDNUM = dEPENDPARENTIDNUM;
			this.dEPENDPARENTGENDER = dEPENDPARENTGENDER;
			this.dEPENDBIRTHDATE = dEPENDBIRTHDATE;
			this.dEPENDFIRSTSURENAME = dEPENDFIRSTSURENAME;
			this.dEPENDSECONDSURENAME = dEPENDSECONDSURENAME;
			this.dEPENDFIRSTNAME = dEPENDFIRSTNAME;
			this.dEPENDSECONDNAME = dEPENDSECONDNAME;
			this.dEPENDKINDSHIP = dEPENDKINDSHIP;
			this.dEPENDHANDICAPP = dEPENDHANDICAPP;
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
		/// Gets or sets the ID_Novedad value.
		/// </summary>
		public int ID_Novedad {
			get { return iD_Novedad; }
			set { iD_Novedad = value; }
		}
		
		/// <summary>
		/// Gets or sets the DEPENDIDTYPE value.
		/// </summary>
		public string DEPENDIDTYPE {
			get { return dEPENDIDTYPE; }
			set { dEPENDIDTYPE = value; }
		}
		
		/// <summary>
		/// Gets or sets the DEPENDIDNUM value.
		/// </summary>
		public string DEPENDIDNUM {
			get { return dEPENDIDNUM; }
			set { dEPENDIDNUM = value; }
		}
		
		/// <summary>
		/// Gets or sets the DEPENDPARENTIDTYPE value.
		/// </summary>
		public string DEPENDPARENTIDTYPE {
			get { return dEPENDPARENTIDTYPE; }
			set { dEPENDPARENTIDTYPE = value; }
		}
		
		/// <summary>
		/// Gets or sets the DEPENDPARENTIDNUM value.
		/// </summary>
		public string DEPENDPARENTIDNUM {
			get { return dEPENDPARENTIDNUM; }
			set { dEPENDPARENTIDNUM = value; }
		}
		
		/// <summary>
		/// Gets or sets the DEPENDPARENTGENDER value.
		/// </summary>
		public string DEPENDPARENTGENDER {
			get { return dEPENDPARENTGENDER; }
			set { dEPENDPARENTGENDER = value; }
		}
		
		/// <summary>
		/// Gets or sets the DEPENDBIRTHDATE value.
		/// </summary>
		public DateTime DEPENDBIRTHDATE {
			get { return dEPENDBIRTHDATE; }
			set { dEPENDBIRTHDATE = value; }
		}
		
		/// <summary>
		/// Gets or sets the DEPENDFIRSTSURENAME value.
		/// </summary>
		public string DEPENDFIRSTSURENAME {
			get { return dEPENDFIRSTSURENAME; }
			set { dEPENDFIRSTSURENAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the DEPENDSECONDSURENAME value.
		/// </summary>
		public string DEPENDSECONDSURENAME {
			get { return dEPENDSECONDSURENAME; }
			set { dEPENDSECONDSURENAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the DEPENDFIRSTNAME value.
		/// </summary>
		public string DEPENDFIRSTNAME {
			get { return dEPENDFIRSTNAME; }
			set { dEPENDFIRSTNAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the DEPENDSECONDNAME value.
		/// </summary>
		public string DEPENDSECONDNAME {
			get { return dEPENDSECONDNAME; }
			set { dEPENDSECONDNAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the DEPENDKINDSHIP value.
		/// </summary>
		public string DEPENDKINDSHIP {
			get { return dEPENDKINDSHIP; }
			set { dEPENDKINDSHIP = value; }
		}
		
		/// <summary>
		/// Gets or sets the DEPENDHANDICAPP value.
		/// </summary>
		public string DEPENDHANDICAPP {
			get { return dEPENDHANDICAPP; }
			set { dEPENDHANDICAPP = value; }
		}
		#endregion
		
		#region Methods
        
        public void Insert() {
            
            SqlCommand cmdSQLCommand = new SqlCommand();
            cmdSQLCommand.CommandText = "[tblNovedadesDetalleInsert]";
            cmdSQLCommand.CommandType = CommandType.StoredProcedure;

            cmdSQLCommand.Connection = DAO.ConnectionManager.getCnn();

            try
            {

                cmdSQLCommand.Parameters.Add(new SqlParameter("@iD_Novedad", SqlDbType.Int, 4, ParameterDirection.Input, true, 10, 0, "", DataRowVersion.Proposed, iD_Novedad));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDIDTYPE", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dEPENDIDTYPE));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDIDNUM", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dEPENDIDNUM));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDPARENTIDTYPE", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dEPENDPARENTIDTYPE));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDPARENTIDNUM", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dEPENDPARENTIDNUM));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDPARENTGENDER", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dEPENDPARENTGENDER));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDBIRTHDATE", SqlDbType.DateTime, 8, ParameterDirection.Input, true, 23, 3, "", DataRowVersion.Proposed, dEPENDBIRTHDATE));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDFIRSTSURENAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dEPENDFIRSTSURENAME));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDSECONDSURENAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dEPENDSECONDSURENAME));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDFIRSTNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dEPENDFIRSTNAME));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDSECONDNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dEPENDSECONDNAME));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDKINDSHIP", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dEPENDKINDSHIP));
                cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDHANDICAPP", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dEPENDHANDICAPP));

                ID = Int32.Parse(cmdSQLCommand.ExecuteScalar().ToString());

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
		
        ///// <summary>
        ///// Selects all records from the tblNovedadesDetalle table.
        ///// </summary>
        //public static List<FormNovedadesDetalle> SelectAll() {
        //    using (SqlDataReader dataReader = SqlClientUtility.ExecuteReader("tblNovedadesDetalleSelectAll")) {
        //        List<FormNovedadesDetalle> tblNovedadesDetalleList = new List<FormNovedadesDetalle>();
        //        while (dataReader.Read()) {
        //            FormNovedadesDetalle tblNovedadesDetalle = MakeTblNovedadesDetalle(dataReader);
        //            tblNovedadesDetalleList.Add(tblNovedadesDetalle);
        //        }
        //        return tblNovedadesDetalleList;
        //    }
        //}
		
        ///// <summary>
        ///// Creates a new instance of the tblNovedadesDetalle class and populates it with data from the specified SqlDataReader.
        ///// </summary>
        //private static FormNovedadesDetalle MakeTblNovedadesDetalle(SqlDataReader dataReader) {
        //    FormNovedadesDetalle tblNovedadesDetalle = new FormNovedadesDetalle();
			
        //    if (dataReader.IsDBNull(0) == false) {
        //        tblNovedadesDetalle.ID = dataReader.GetInt32(0);
        //    }
        //    if (dataReader.IsDBNull(1) == false) {
        //        tblNovedadesDetalle.ID_Novedad = dataReader.GetInt32(1);
        //    }
        //    if (dataReader.IsDBNull(2) == false) {
        //        tblNovedadesDetalle.DEPENDIDTYPE = dataReader.GetString(2);
        //    }
        //    if (dataReader.IsDBNull(3) == false) {
        //        tblNovedadesDetalle.DEPENDIDNUM = dataReader.GetString(3);
        //    }
        //    if (dataReader.IsDBNull(4) == false) {
        //        tblNovedadesDetalle.DEPENDPARENTIDTYPE = dataReader.GetString(4);
        //    }
        //    if (dataReader.IsDBNull(5) == false) {
        //        tblNovedadesDetalle.DEPENDPARENTIDNUM = dataReader.GetString(5);
        //    }
        //    if (dataReader.IsDBNull(6) == false) {
        //        tblNovedadesDetalle.DEPENDPARENTGENDER = dataReader.GetString(6);
        //    }
        //    if (dataReader.IsDBNull(7) == false) {
        //        tblNovedadesDetalle.DEPENDBIRTHDATE = dataReader.GetDateTime(7);
        //    }
        //    if (dataReader.IsDBNull(8) == false) {
        //        tblNovedadesDetalle.DEPENDFIRSTSURENAME = dataReader.GetString(8);
        //    }
        //    if (dataReader.IsDBNull(9) == false) {
        //        tblNovedadesDetalle.DEPENDSECONDSURENAME = dataReader.GetString(9);
        //    }
        //    if (dataReader.IsDBNull(10) == false) {
        //        tblNovedadesDetalle.DEPENDFIRSTNAME = dataReader.GetString(10);
        //    }
        //    if (dataReader.IsDBNull(11) == false) {
        //        tblNovedadesDetalle.DEPENDSECONDNAME = dataReader.GetString(11);
        //    }
        //    if (dataReader.IsDBNull(12) == false) {
        //        tblNovedadesDetalle.DEPENDKINDSHIP = dataReader.GetString(12);
        //    }
        //    if (dataReader.IsDBNull(13) == false) {
        //        tblNovedadesDetalle.DEPENDHANDICAPP = dataReader.GetString(13);
        //    }

        //    return tblNovedadesDetalle;
        //}
		#endregion
	}
}
