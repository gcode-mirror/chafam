using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace DAO
{
    public sealed class FormNovedadesDetalle
    {
        #region Fields
        private int iD;
        private int iD_Novedad;
        private string dependidtype;
        private string dependidnum;
        private string dependparentidtype;
        private string dependparentidnum;
        private string dependparentgender;
        private DateTime dependbirthdate;
        private string dependfirstsurename;
        private string dependsecondsurename;
        private string dependfirstname;
        private string dependsecondname;
        private string dependkindship;
        private string dependhandicapp;
        #endregion

        #region Constructors
        /// <summary>
        /// Initializes a new instance of the TblNovedadesDetalle class.
        /// </summary>
        public FormNovedadesDetalle()
        {
        }

        /// <summary>
        /// Initializes a new instance of the TblNovedadesDetalle class.
        /// </summary>
        public FormNovedadesDetalle(int iD_Novedad, string dependidtype, string dependidnum, string dependparentidtype, string dependparentidnum, string dependparentgender, System.DateTime dependbirthdate, string dependfirstsurename, string dependsecondsurename, string dependfirstname, string dependsecondname, string dependkindship, string dependhandicapp)
        {
            this.iD_Novedad = iD_Novedad;
            this.dependidtype = dependidtype;        
            this.dependidnum = dependidnum;     
            this.dependparentidtype=dependparentidtype;
            this.dependparentidnum =dependparentidnum;
            this.dependparentgender =dependparentgender;
            this.dependbirthdate =dependbirthdate;
            this.dependfirstsurename =dependfirstsurename ;
            this.dependsecondsurename =dependsecondsurename;
            this.dependfirstname =dependfirstname;
            this.dependsecondname =dependsecondname;
            this.dependkindship =dependkindship;
            this.dependhandicapp = dependhandicapp; 
        }

        /// <summary>
        /// Initializes a new instance of the TblNovedadesDetalle class.
        /// </summary>
        public FormNovedadesDetalle(int iD, int iD_novedad, string dependidtype, string dependidnum, string dependparentidtype, string dependparentidnum, string dependparentgender, System.DateTime dependbirthdate, string dependfirstsurename, string dependsecondsurename, string dependfirstname, string dependsecondname, string dependkindship, string dependhandicapp)
        {
            this.iD = iD;
            this.iD_Novedad = iD_novedad;
            this.dependidtype = dependidtype;
            this.dependidnum = dependidnum;
            this.dependparentidtype = dependparentidtype;
            this.dependparentidnum = dependparentidnum;
            this.dependparentgender = dependparentgender;
            this.dependbirthdate = dependbirthdate;
            this.dependfirstsurename = dependfirstsurename;
            this.dependsecondsurename = dependsecondsurename;
            this.dependfirstname = dependfirstname;
            this.dependsecondname = dependsecondname;
            this.dependkindship = dependkindship;
            this.dependhandicapp = dependhandicapp;
        }
        #endregion

        #region Properties
        /// <summary>
        /// Gets or sets the ID value.
        /// </summary>
        public int ID
        {
            get { return iD; }
            set { iD = value; }
        }

        /// <summary>
        /// Gets or sets the ID_Novedad value.
        /// </summary>
        public int ID_Novedad
        {
            get { return iD_Novedad; }
            set { iD_Novedad = value; }
        }

        /// <summary>
        /// Gets or sets the DEPENDIDTYPE value.
        /// </summary>
        public string DEPENDIDTYPE
        {
            get { return dependidtype; }
            set { dependidtype = value; }
        }

        /// <summary>
        /// Gets or sets the DEPENDIDNUM value.
        /// </summary>
        public string DEPENDIDNUM
        {
            get { return dependidnum; }
            set { dependidnum = value; }
        }

        /// <summary>
        /// Gets or sets the DEPENDPARENTIDTYPE value.
        /// </summary>
        public string DEPENDPARENTIDTYPE
        {
            get { return dependparentidtype; }
            set { dependparentidtype = value; }
        }

        /// <summary>
        /// Gets or sets the DEPENDPARENTIDNUM value.
        /// </summary>
        public string DEPENDPARENTIDNUM
        {
            get { return dependparentidnum; }
            set { dependparentidnum = value; }
        }

        /// <summary>
        /// Gets or sets the DEPENDPARENTGENDER value.
        /// </summary>
        public string DEPENDPARENTGENDER
        {
            get { return dependparentgender; }
            set { dependparentgender = value; }
        }

        /// <summary>
        /// Gets or sets the DEPENDBIRTHDATE value.
        /// </summary>
        public DateTime DEPENDBIRTHDATE
        {
            get { return dependbirthdate; }
            set { dependbirthdate = value; }
        }

        /// <summary>
        /// Gets or sets the DEPENDFIRSTSURENAME value.
        /// </summary>
        public string DEPENDFIRSTSURENAME
        {
            get { return dependfirstsurename; }
            set { dependfirstsurename = value; }
        }

        /// <summary>
        /// Gets or sets the DEPENDSECONDSURENAME value.
        /// </summary>
        public string DEPENDSECONDSURENAME
        {
            get { return dependsecondsurename; }
            set { dependsecondsurename = value; }
        }

        /// <summary>
        /// Gets or sets the DEPENDFIRSTNAME value.
        /// </summary>
        public string DEPENDFIRSTNAME
        {
            get { return dependfirstname; }
            set { dependfirstname = value; }
        }

        /// <summary>
        /// Gets or sets the DEPENDSECONDNAME value.
        /// </summary>
        public string DEPENDSECONDNAME
        {
            get { return dependsecondname; }
            set { dependsecondname = value; }
        }

        /// <summary>
        /// Gets or sets the DEPENDKINDSHIP value.
        /// </summary>
        public string DEPENDKINDSHIP
        {
            get { return dependkindship; }
            set { dependkindship = value; }
        }

        /// <summary>
        /// Gets or sets the DEPENDHANDICAPP value.
        /// </summary>
        public string DEPENDHANDICAPP
        {
            get { return dependhandicapp; }
            set { dependhandicapp = value; }
        }
        #endregion

        #region Methods

        public void Insert(SqlTransaction sqlTran, SqlConnection conn)
        {
            try
            {
                    SqlCommand cmdSQLCommand = new SqlCommand("[tblNovedadesDetalleInsert]", conn, sqlTran);
                    cmdSQLCommand.CommandType = CommandType.StoredProcedure;

                    cmdSQLCommand.Parameters.Add(new SqlParameter("@iD_Novedad", SqlDbType.Int, 4, ParameterDirection.Input, true, 10, 0, "", DataRowVersion.Proposed, iD_Novedad));
                    cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDIDTYPE", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dependidtype));
                    cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDIDNUM", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dependidnum));
                    cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDPARENTIDTYPE", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dependparentidtype));
                    cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDPARENTIDNUM", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dependparentidnum));
                    cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDPARENTGENDER", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dependparentgender));
                    cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDBIRTHDATE", SqlDbType.DateTime, 8, ParameterDirection.Input, true, 23, 3, "", DataRowVersion.Proposed, dependbirthdate));
                    cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDFIRSTSURENAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dependfirstsurename));
                    cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDSECONDSURENAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dependsecondsurename));
                    cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDFIRSTNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dependfirstname));
                    cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDSECONDNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dependsecondname));
                    cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDKINDSHIP", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dependkindship));
                    cmdSQLCommand.Parameters.Add(new SqlParameter("@dEPENDHANDICAPP", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, dependhandicapp));
                    
                    cmdSQLCommand.ExecuteScalar();
            }
            catch (SqlException ex)
            {
                throw new Exception(String.Format("ProyectoDAL::Insertar::Ha ocurrido un Error. Mensaje:{0}", ex.Message), ex);

            }
        }

        #endregion
    }
}