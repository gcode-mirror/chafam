using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace DAO
{
	public  class FormNovedadesTrabajador {
		#region Fields
		private int iD;
		private DateTime dATEINS;
		private string cOMPNIT;
		private string cOMPSUBNIT;
		private string cOMPNAME;
		private string eMPIDTYPE;
		private string eMPIDNUM;
		private string eMPBRANCH;
		private string eMPFIRSTSURNAME;
		private string eMPSECONDSURNAME;
		private string eMPFIRSTNAME;
		private string eMPSECONDNAME;
		private string eMPMARITALSTATE;
		private string eMPBIRTHDATE;
		private string eMPGENDER;
		private string eMPJOININGDATE;
		private string eMPPOSITION;
		private string eMPMONTHHOUR;
		private string eMPBASICSALARY;
		private string eMPSALECOMMISSION;
		private string eMPCITY;
		private string eMPADDRESS;
		private string eMPEMAIL;
		private string eMPPHONENUMB1;
		private string eMPPHONENUMB2;
		private string eMPOWNER;
		private string eMPAGRICULTUREW;
		private string eMPCOMPNIT;
		private string eMPCOMPSUBNIT;
		private string eMPCOMPNAME;
		private string eMPCOMPMONTHHOUR;
		private string eMPCOMPBASICSALARY;
		private string eMPCOMPSALECOMMISSION;
		private string pARTNERIDTYPE;
		private string pARTNERIDNUM;
		private string pARTNERLIVETOGETHER;
		private string pARTNERRELATIONSHIP;
		private string pARTNERFIRSTSURNAME;
		private string pARTNERSECONDSURNAME;
		private string pARTNERFIRSTNAME;
		private string pARTNERSECONDNAME;
		private string pARTNERBIRTHDATE;
		private string pARTNERADDRESS;
		private string pARTNERCITY;
		private string pARTNERPHONENUMB;
		private string pARTNEROCCUPATION;
		private string pARTNEROCCUPSUBSIDY;
		private string pARTNEROCCUPNIT;
		private string pARTNEROCCUPCOMPANYNAME;
		private string pARTNEROCCUPBASICSALARY;
		private string pARENTIDTYPE;
		private string pARENTIDNUM;
		private string pARENTLIVETOGETHER;
		private string pARENTFIRSTSURNAME;
		private string pARENTSECONDSURNAME;
		private string pARENTFIRSTNAME;
		private string pARENTSECONDNAME;
		private string pARENTBIRTHDATE;
		private string pARENTOCCUPATION;
		private string pARENTADDRESS;
		private string pARENTCITY;
		private string pARENTPHONENUMB;
		private string pARENTEMPLOYEESUBSIDY;
		private string pARENTEMPLOYEESONNAME;
		private string pARENTEMPLOYEENIT;
		private string pARENTEMPLOYEECOMPNAME;
		private string pARENTEMPLOYEEBASICSALARY;
		#endregion
		
		#region Constructors
		public FormNovedadesTrabajador() {
		}
		
		public FormNovedadesTrabajador(DateTime dATEINS, string cOMPNIT, string cOMPSUBNIT, string cOMPNAME, string eMPIDTYPE, string eMPIDNUM, string eMPBRANCH, string eMPFIRSTSURNAME, string eMPSECONDSURNAME, string eMPFIRSTNAME, string eMPSECONDNAME, string eMPMARITALSTATE, string eMPBIRTHDATE, string eMPGENDER, string eMPJOININGDATE, string eMPPOSITION, string eMPMONTHHOUR, string eMPBASICSALARY, string eMPSALECOMMISSION, string eMPCITY, string eMPADDRESS, string eMPEMAIL, string eMPPHONENUMB1, string eMPPHONENUMB2, string eMPOWNER, string eMPAGRICULTUREW, string eMPCOMPNIT, string eMPCOMPSUBNIT, string eMPCOMPNAME, string eMPCOMPMONTHHOUR, string eMPCOMPBASICSALARY, string eMPCOMPSALECOMMISSION, string pARTNERIDTYPE, string pARTNERIDNUM, string pARTNERLIVETOGETHER, string pARTNERRELATIONSHIP, string pARTNERFIRSTSURNAME, string pARTNERSECONDSURNAME, string pARTNERFIRSTNAME, string pARTNERSECONDNAME, string pARTNERBIRTHDATE, string pARTNERADDRESS, string pARTNERCITY, string pARTNERPHONENUMB, string pARTNEROCCUPATION, string pARTNEROCCUPSUBSIDY, string pARTNEROCCUPNIT, string pARTNEROCCUPCOMPANYNAME, string pARTNEROCCUPBASICSALARY, string pARENTIDTYPE, string pARENTIDNUM, string pARENTLIVETOGETHER, string pARENTFIRSTSURNAME, string pARENTSECONDSURNAME, string pARENTFIRSTNAME, string pARENTSECONDNAME, string pARENTBIRTHDATE, string pARENTOCCUPATION, string pARENTADDRESS, string pARENTCITY, string pARENTPHONENUMB, string pARENTEMPLOYEESUBSIDY, string pARENTEMPLOYEESONNAME, string pARENTEMPLOYEENIT, string pARENTEMPLOYEECOMPNAME, string pARENTEMPLOYEEBASICSALARY) {
			this.dATEINS = dATEINS;
			this.cOMPNIT = cOMPNIT;
			this.cOMPSUBNIT = cOMPSUBNIT;
			this.cOMPNAME = cOMPNAME;
			this.eMPIDTYPE = eMPIDTYPE;
			this.eMPIDNUM = eMPIDNUM;
			this.eMPBRANCH = eMPBRANCH;
			this.eMPFIRSTSURNAME = eMPFIRSTSURNAME;
			this.eMPSECONDSURNAME = eMPSECONDSURNAME;
			this.eMPFIRSTNAME = eMPFIRSTNAME;
			this.eMPSECONDNAME = eMPSECONDNAME;
			this.eMPMARITALSTATE = eMPMARITALSTATE;
			this.eMPBIRTHDATE = eMPBIRTHDATE;
			this.eMPGENDER = eMPGENDER;
			this.eMPJOININGDATE = eMPJOININGDATE;
			this.eMPPOSITION = eMPPOSITION;
			this.eMPMONTHHOUR = eMPMONTHHOUR;
			this.eMPBASICSALARY = eMPBASICSALARY;
			this.eMPSALECOMMISSION = eMPSALECOMMISSION;
			this.eMPCITY = eMPCITY;
			this.eMPADDRESS = eMPADDRESS;
			this.eMPEMAIL = eMPEMAIL;
			this.eMPPHONENUMB1 = eMPPHONENUMB1;
			this.eMPPHONENUMB2 = eMPPHONENUMB2;
			this.eMPOWNER = eMPOWNER;
			this.eMPAGRICULTUREW = eMPAGRICULTUREW;
			this.eMPCOMPNIT = eMPCOMPNIT;
			this.eMPCOMPSUBNIT = eMPCOMPSUBNIT;
			this.eMPCOMPNAME = eMPCOMPNAME;
			this.eMPCOMPMONTHHOUR = eMPCOMPMONTHHOUR;
			this.eMPCOMPBASICSALARY = eMPCOMPBASICSALARY;
			this.eMPCOMPSALECOMMISSION = eMPCOMPSALECOMMISSION;
			this.pARTNERIDTYPE = pARTNERIDTYPE;
			this.pARTNERIDNUM = pARTNERIDNUM;
			this.pARTNERLIVETOGETHER = pARTNERLIVETOGETHER;
			this.pARTNERRELATIONSHIP = pARTNERRELATIONSHIP;
			this.pARTNERFIRSTSURNAME = pARTNERFIRSTSURNAME;
			this.pARTNERSECONDSURNAME = pARTNERSECONDSURNAME;
			this.pARTNERFIRSTNAME = pARTNERFIRSTNAME;
			this.pARTNERSECONDNAME = pARTNERSECONDNAME;
			this.pARTNERBIRTHDATE = pARTNERBIRTHDATE;
			this.pARTNERADDRESS = pARTNERADDRESS;
			this.pARTNERCITY = pARTNERCITY;
			this.pARTNERPHONENUMB = pARTNERPHONENUMB;
			this.pARTNEROCCUPATION = pARTNEROCCUPATION;
			this.pARTNEROCCUPSUBSIDY = pARTNEROCCUPSUBSIDY;
			this.pARTNEROCCUPNIT = pARTNEROCCUPNIT;
			this.pARTNEROCCUPCOMPANYNAME = pARTNEROCCUPCOMPANYNAME;
			this.pARTNEROCCUPBASICSALARY = pARTNEROCCUPBASICSALARY;
			this.pARENTIDTYPE = pARENTIDTYPE;
			this.pARENTIDNUM = pARENTIDNUM;
			this.pARENTLIVETOGETHER = pARENTLIVETOGETHER;
			this.pARENTFIRSTSURNAME = pARENTFIRSTSURNAME;
			this.pARENTSECONDSURNAME = pARENTSECONDSURNAME;
			this.pARENTFIRSTNAME = pARENTFIRSTNAME;
			this.pARENTSECONDNAME = pARENTSECONDNAME;
			this.pARENTBIRTHDATE = pARENTBIRTHDATE;
			this.pARENTOCCUPATION = pARENTOCCUPATION;
			this.pARENTADDRESS = pARENTADDRESS;
			this.pARENTCITY = pARENTCITY;
			this.pARENTPHONENUMB = pARENTPHONENUMB;
			this.pARENTEMPLOYEESUBSIDY = pARENTEMPLOYEESUBSIDY;
			this.pARENTEMPLOYEESONNAME = pARENTEMPLOYEESONNAME;
			this.pARENTEMPLOYEENIT = pARENTEMPLOYEENIT;
			this.pARENTEMPLOYEECOMPNAME = pARENTEMPLOYEECOMPNAME;
			this.pARENTEMPLOYEEBASICSALARY = pARENTEMPLOYEEBASICSALARY;
		}
		
        public FormNovedadesTrabajador(int iD, DateTime dATEINS, string cOMPNIT, string cOMPSUBNIT, string cOMPNAME, string eMPIDTYPE, string eMPIDNUM, string eMPBRANCH, string eMPFIRSTSURNAME, string eMPSECONDSURNAME, string eMPFIRSTNAME, string eMPSECONDNAME, string eMPMARITALSTATE, string eMPBIRTHDATE, string eMPGENDER, string eMPJOININGDATE, string eMPPOSITION, string eMPMONTHHOUR, string eMPBASICSALARY, string eMPSALECOMMISSION, string eMPCITY, string eMPADDRESS, string eMPEMAIL, string eMPPHONENUMB1, string eMPPHONENUMB2, string eMPOWNER, string eMPAGRICULTUREW, string eMPCOMPNIT, string eMPCOMPSUBNIT, string eMPCOMPNAME, string eMPCOMPMONTHHOUR, string eMPCOMPBASICSALARY, string eMPCOMPSALECOMMISSION, string pARTNERIDTYPE, string pARTNERIDNUM, string pARTNERLIVETOGETHER, string pARTNERRELATIONSHIP, string pARTNERFIRSTSURNAME, string pARTNERSECONDSURNAME, string pARTNERFIRSTNAME, string pARTNERSECONDNAME, string pARTNERBIRTHDATE, string pARTNERADDRESS, string pARTNERCITY, string pARTNERPHONENUMB, string pARTNEROCCUPATION, string pARTNEROCCUPSUBSIDY, string pARTNEROCCUPNIT, string pARTNEROCCUPCOMPANYNAME, string pARTNEROCCUPBASICSALARY, string pARENTIDTYPE, string pARENTIDNUM, string pARENTLIVETOGETHER, string pARENTFIRSTSURNAME, string pARENTSECONDSURNAME, string pARENTFIRSTNAME, string pARENTSECONDNAME, string pARENTBIRTHDATE, string pARENTOCCUPATION, string pARENTADDRESS, string pARENTCITY, string pARENTPHONENUMB, string pARENTEMPLOYEESUBSIDY, string pARENTEMPLOYEESONNAME, string pARENTEMPLOYEENIT, string pARENTEMPLOYEECOMPNAME, string pARENTEMPLOYEEBASICSALARY)
        {
			this.iD = iD;
			this.dATEINS = dATEINS;
			this.cOMPNIT = cOMPNIT;
			this.cOMPSUBNIT = cOMPSUBNIT;
			this.cOMPNAME = cOMPNAME;
			this.eMPIDTYPE = eMPIDTYPE;
			this.eMPIDNUM = eMPIDNUM;
			this.eMPBRANCH = eMPBRANCH;
			this.eMPFIRSTSURNAME = eMPFIRSTSURNAME;
			this.eMPSECONDSURNAME = eMPSECONDSURNAME;
			this.eMPFIRSTNAME = eMPFIRSTNAME;
			this.eMPSECONDNAME = eMPSECONDNAME;
			this.eMPMARITALSTATE = eMPMARITALSTATE;
			this.eMPBIRTHDATE = eMPBIRTHDATE;
			this.eMPGENDER = eMPGENDER;
			this.eMPJOININGDATE = eMPJOININGDATE;
			this.eMPPOSITION = eMPPOSITION;
			this.eMPMONTHHOUR = eMPMONTHHOUR;
			this.eMPBASICSALARY = eMPBASICSALARY;
			this.eMPSALECOMMISSION = eMPSALECOMMISSION;
			this.eMPCITY = eMPCITY;
			this.eMPADDRESS = eMPADDRESS;
			this.eMPEMAIL = eMPEMAIL;
			this.eMPPHONENUMB1 = eMPPHONENUMB1;
			this.eMPPHONENUMB2 = eMPPHONENUMB2;
			this.eMPOWNER = eMPOWNER;
			this.eMPAGRICULTUREW = eMPAGRICULTUREW;
			this.eMPCOMPNIT = eMPCOMPNIT;
			this.eMPCOMPSUBNIT = eMPCOMPSUBNIT;
			this.eMPCOMPNAME = eMPCOMPNAME;
			this.eMPCOMPMONTHHOUR = eMPCOMPMONTHHOUR;
			this.eMPCOMPBASICSALARY = eMPCOMPBASICSALARY;
			this.eMPCOMPSALECOMMISSION = eMPCOMPSALECOMMISSION;
			this.pARTNERIDTYPE = pARTNERIDTYPE;
			this.pARTNERIDNUM = pARTNERIDNUM;
			this.pARTNERLIVETOGETHER = pARTNERLIVETOGETHER;
			this.pARTNERRELATIONSHIP = pARTNERRELATIONSHIP;
			this.pARTNERFIRSTSURNAME = pARTNERFIRSTSURNAME;
			this.pARTNERSECONDSURNAME = pARTNERSECONDSURNAME;
			this.pARTNERFIRSTNAME = pARTNERFIRSTNAME;
			this.pARTNERSECONDNAME = pARTNERSECONDNAME;
			this.pARTNERBIRTHDATE = pARTNERBIRTHDATE;
			this.pARTNERADDRESS = pARTNERADDRESS;
			this.pARTNERCITY = pARTNERCITY;
			this.pARTNERPHONENUMB = pARTNERPHONENUMB;
			this.pARTNEROCCUPATION = pARTNEROCCUPATION;
			this.pARTNEROCCUPSUBSIDY = pARTNEROCCUPSUBSIDY;
			this.pARTNEROCCUPNIT = pARTNEROCCUPNIT;
			this.pARTNEROCCUPCOMPANYNAME = pARTNEROCCUPCOMPANYNAME;
			this.pARTNEROCCUPBASICSALARY = pARTNEROCCUPBASICSALARY;
			this.pARENTIDTYPE = pARENTIDTYPE;
			this.pARENTIDNUM = pARENTIDNUM;
			this.pARENTLIVETOGETHER = pARENTLIVETOGETHER;
			this.pARENTFIRSTSURNAME = pARENTFIRSTSURNAME;
			this.pARENTSECONDSURNAME = pARENTSECONDSURNAME;
			this.pARENTFIRSTNAME = pARENTFIRSTNAME;
			this.pARENTSECONDNAME = pARENTSECONDNAME;
			this.pARENTBIRTHDATE = pARENTBIRTHDATE;
			this.pARENTOCCUPATION = pARENTOCCUPATION;
			this.pARENTADDRESS = pARENTADDRESS;
			this.pARENTCITY = pARENTCITY;
			this.pARENTPHONENUMB = pARENTPHONENUMB;
			this.pARENTEMPLOYEESUBSIDY = pARENTEMPLOYEESUBSIDY;
			this.pARENTEMPLOYEESONNAME = pARENTEMPLOYEESONNAME;
			this.pARENTEMPLOYEENIT = pARENTEMPLOYEENIT;
			this.pARENTEMPLOYEECOMPNAME = pARENTEMPLOYEECOMPNAME;
			this.pARENTEMPLOYEEBASICSALARY = pARENTEMPLOYEEBASICSALARY;
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
		/// Gets or sets the DATEINS value.
		/// </summary>
		public DateTime DATEINS {
			get { return dATEINS; }
			set { dATEINS = value; }
		}
		
		/// <summary>
		/// Gets or sets the COMPNIT value.
		/// </summary>
		public string COMPNIT {
			get { return cOMPNIT; }
			set { cOMPNIT = value; }
		}
		
		/// <summary>
		/// Gets or sets the COMPSUBNIT value.
		/// </summary>
		public string COMPSUBNIT {
			get { return cOMPSUBNIT; }
			set { cOMPSUBNIT = value; }
		}
		
		/// <summary>
		/// Gets or sets the COMPNAME value.
		/// </summary>
		public string COMPNAME {
			get { return cOMPNAME; }
			set { cOMPNAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPIDTYPE value.
		/// </summary>
		public string EMPIDTYPE {
			get { return eMPIDTYPE; }
			set { eMPIDTYPE = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPIDNUM value.
		/// </summary>
		public string EMPIDNUM {
			get { return eMPIDNUM; }
			set { eMPIDNUM = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPBRANCH value.
		/// </summary>
		public string EMPBRANCH {
			get { return eMPBRANCH; }
			set { eMPBRANCH = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPFIRSTSURNAME value.
		/// </summary>
		public string EMPFIRSTSURNAME {
			get { return eMPFIRSTSURNAME; }
			set { eMPFIRSTSURNAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPSECONDSURNAME value.
		/// </summary>
		public string EMPSECONDSURNAME {
			get { return eMPSECONDSURNAME; }
			set { eMPSECONDSURNAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPFIRSTNAME value.
		/// </summary>
		public string EMPFIRSTNAME {
			get { return eMPFIRSTNAME; }
			set { eMPFIRSTNAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPSECONDNAME value.
		/// </summary>
		public string EMPSECONDNAME {
			get { return eMPSECONDNAME; }
			set { eMPSECONDNAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPMARITALSTATE value.
		/// </summary>
		public string EMPMARITALSTATE {
			get { return eMPMARITALSTATE; }
			set { eMPMARITALSTATE = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPBIRTHDATE value.
		/// </summary>
		public string EMPBIRTHDATE {
			get { return eMPBIRTHDATE; }
			set { eMPBIRTHDATE = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPGENDER value.
		/// </summary>
		public string EMPGENDER {
			get { return eMPGENDER; }
			set { eMPGENDER = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPJOININGDATE value.
		/// </summary>
		public string EMPJOININGDATE {
			get { return eMPJOININGDATE; }
			set { eMPJOININGDATE = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPPOSITION value.
		/// </summary>
		public string EMPPOSITION {
			get { return eMPPOSITION; }
			set { eMPPOSITION = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPMONTHHOUR value.
		/// </summary>
		public string EMPMONTHHOUR {
			get { return eMPMONTHHOUR; }
			set { eMPMONTHHOUR = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPBASICSALARY value.
		/// </summary>
		public string EMPBASICSALARY {
			get { return eMPBASICSALARY; }
			set { eMPBASICSALARY = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPSALECOMMISSION value.
		/// </summary>
		public string EMPSALECOMMISSION {
			get { return eMPSALECOMMISSION; }
			set { eMPSALECOMMISSION = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPCITY value.
		/// </summary>
		public string EMPCITY {
			get { return eMPCITY; }
			set { eMPCITY = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPADDRESS value.
		/// </summary>
		public string EMPADDRESS {
			get { return eMPADDRESS; }
			set { eMPADDRESS = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPEMAIL value.
		/// </summary>
		public string EMPEMAIL {
			get { return eMPEMAIL; }
			set { eMPEMAIL = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPPHONENUMB1 value.
		/// </summary>
		public string EMPPHONENUMB1 {
			get { return eMPPHONENUMB1; }
			set { eMPPHONENUMB1 = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPPHONENUMB2 value.
		/// </summary>
		public string EMPPHONENUMB2 {
			get { return eMPPHONENUMB2; }
			set { eMPPHONENUMB2 = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPOWNER value.
		/// </summary>
		public string EMPOWNER {
			get { return eMPOWNER; }
			set { eMPOWNER = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPAGRICULTUREW value.
		/// </summary>
		public string EMPAGRICULTUREW {
			get { return eMPAGRICULTUREW; }
			set { eMPAGRICULTUREW = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPCOMPNIT value.
		/// </summary>
		public string EMPCOMPNIT {
			get { return eMPCOMPNIT; }
			set { eMPCOMPNIT = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPCOMPSUBNIT value.
		/// </summary>
		public string EMPCOMPSUBNIT {
			get { return eMPCOMPSUBNIT; }
			set { eMPCOMPSUBNIT = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPCOMPNAME value.
		/// </summary>
		public string EMPCOMPNAME {
			get { return eMPCOMPNAME; }
			set { eMPCOMPNAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPCOMPMONTHHOUR value.
		/// </summary>
		public string EMPCOMPMONTHHOUR {
			get { return eMPCOMPMONTHHOUR; }
			set { eMPCOMPMONTHHOUR = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPCOMPBASICSALARY value.
		/// </summary>
		public string EMPCOMPBASICSALARY {
			get { return eMPCOMPBASICSALARY; }
			set { eMPCOMPBASICSALARY = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPCOMPSALECOMMISSION value.
		/// </summary>
		public string EMPCOMPSALECOMMISSION {
			get { return eMPCOMPSALECOMMISSION; }
			set { eMPCOMPSALECOMMISSION = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERIDTYPE value.
		/// </summary>
		public string PARTNERIDTYPE {
			get { return pARTNERIDTYPE; }
			set { pARTNERIDTYPE = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERIDNUM value.
		/// </summary>
		public string PARTNERIDNUM {
			get { return pARTNERIDNUM; }
			set { pARTNERIDNUM = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERLIVETOGETHER value.
		/// </summary>
		public string PARTNERLIVETOGETHER {
			get { return pARTNERLIVETOGETHER; }
			set { pARTNERLIVETOGETHER = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERRELATIONSHIP value.
		/// </summary>
		public string PARTNERRELATIONSHIP {
			get { return pARTNERRELATIONSHIP; }
			set { pARTNERRELATIONSHIP = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERFIRSTSURNAME value.
		/// </summary>
		public string PARTNERFIRSTSURNAME {
			get { return pARTNERFIRSTSURNAME; }
			set { pARTNERFIRSTSURNAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERSECONDSURNAME value.
		/// </summary>
		public string PARTNERSECONDSURNAME {
			get { return pARTNERSECONDSURNAME; }
			set { pARTNERSECONDSURNAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERFIRSTNAME value.
		/// </summary>
		public string PARTNERFIRSTNAME {
			get { return pARTNERFIRSTNAME; }
			set { pARTNERFIRSTNAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERSECONDNAME value.
		/// </summary>
		public string PARTNERSECONDNAME {
			get { return pARTNERSECONDNAME; }
			set { pARTNERSECONDNAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERBIRTHDATE value.
		/// </summary>
		public string PARTNERBIRTHDATE {
			get { return pARTNERBIRTHDATE; }
			set { pARTNERBIRTHDATE = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERADDRESS value.
		/// </summary>
		public string PARTNERADDRESS {
			get { return pARTNERADDRESS; }
			set { pARTNERADDRESS = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERCITY value.
		/// </summary>
		public string PARTNERCITY {
			get { return pARTNERCITY; }
			set { pARTNERCITY = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERPHONENUMB value.
		/// </summary>
		public string PARTNERPHONENUMB {
			get { return pARTNERPHONENUMB; }
			set { pARTNERPHONENUMB = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNEROCCUPATION value.
		/// </summary>
		public string PARTNEROCCUPATION {
			get { return pARTNEROCCUPATION; }
			set { pARTNEROCCUPATION = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNEROCCUPSUBSIDY value.
		/// </summary>
		public string PARTNEROCCUPSUBSIDY {
			get { return pARTNEROCCUPSUBSIDY; }
			set { pARTNEROCCUPSUBSIDY = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNEROCCUPNIT value.
		/// </summary>
		public string PARTNEROCCUPNIT {
			get { return pARTNEROCCUPNIT; }
			set { pARTNEROCCUPNIT = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNEROCCUPCOMPANYNAME value.
		/// </summary>
		public string PARTNEROCCUPCOMPANYNAME {
			get { return pARTNEROCCUPCOMPANYNAME; }
			set { pARTNEROCCUPCOMPANYNAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNEROCCUPBASICSALARY value.
		/// </summary>
		public string PARTNEROCCUPBASICSALARY {
			get { return pARTNEROCCUPBASICSALARY; }
			set { pARTNEROCCUPBASICSALARY = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTIDTYPE value.
		/// </summary>
		public string PARENTIDTYPE {
			get { return pARENTIDTYPE; }
			set { pARENTIDTYPE = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTIDNUM value.
		/// </summary>
		public string PARENTIDNUM {
			get { return pARENTIDNUM; }
			set { pARENTIDNUM = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTLIVETOGETHER value.
		/// </summary>
		public string PARENTLIVETOGETHER {
			get { return pARENTLIVETOGETHER; }
			set { pARENTLIVETOGETHER = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTFIRSTSURNAME value.
		/// </summary>
		public string PARENTFIRSTSURNAME {
			get { return pARENTFIRSTSURNAME; }
			set { pARENTFIRSTSURNAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTSECONDSURNAME value.
		/// </summary>
		public string PARENTSECONDSURNAME {
			get { return pARENTSECONDSURNAME; }
			set { pARENTSECONDSURNAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTFIRSTNAME value.
		/// </summary>
		public string PARENTFIRSTNAME {
			get { return pARENTFIRSTNAME; }
			set { pARENTFIRSTNAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTSECONDNAME value.
		/// </summary>
		public string PARENTSECONDNAME {
			get { return pARENTSECONDNAME; }
			set { pARENTSECONDNAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTBIRTHDATE value.
		/// </summary>
		public string PARENTBIRTHDATE {
			get { return pARENTBIRTHDATE; }
			set { pARENTBIRTHDATE = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTOCCUPATION value.
		/// </summary>
		public string PARENTOCCUPATION {
			get { return pARENTOCCUPATION; }
			set { pARENTOCCUPATION = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTADDRESS value.
		/// </summary>
		public string PARENTADDRESS {
			get { return pARENTADDRESS; }
			set { pARENTADDRESS = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTCITY value.
		/// </summary>
		public string PARENTCITY {
			get { return pARENTCITY; }
			set { pARENTCITY = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTPHONENUMB value.
		/// </summary>
		public string PARENTPHONENUMB {
			get { return pARENTPHONENUMB; }
			set { pARENTPHONENUMB = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTEMPLOYEESUBSIDY value.
		/// </summary>
		public string PARENTEMPLOYEESUBSIDY {
			get { return pARENTEMPLOYEESUBSIDY; }
			set { pARENTEMPLOYEESUBSIDY = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTEMPLOYEESONNAME value.
		/// </summary>
		public string PARENTEMPLOYEESONNAME {
			get { return pARENTEMPLOYEESONNAME; }
			set { pARENTEMPLOYEESONNAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTEMPLOYEENIT value.
		/// </summary>
		public string PARENTEMPLOYEENIT {
			get { return pARENTEMPLOYEENIT; }
			set { pARENTEMPLOYEENIT = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTEMPLOYEECOMPNAME value.
		/// </summary>
		public string PARENTEMPLOYEECOMPNAME {
			get { return pARENTEMPLOYEECOMPNAME; }
			set { pARENTEMPLOYEECOMPNAME = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTEMPLOYEEBASICSALARY value.
		/// </summary>
		public string PARENTEMPLOYEEBASICSALARY {
			get { return pARENTEMPLOYEEBASICSALARY; }
			set { pARENTEMPLOYEEBASICSALARY = value; }
		}
		#endregion
		
		#region Methods
		public void Insert() {


            SqlCommand cmdSQLCommand = new SqlCommand();
            cmdSQLCommand.CommandText = "[tblNovedadesTrabajadoresInsert]";
            cmdSQLCommand.CommandType = CommandType.StoredProcedure;

            cmdSQLCommand.Connection = DAO.ConnectionManager.getCnn();
            //iD = (int)cmdSQLCommand.ExecuteScalar("tblNovedadesTrabajadoresInsert", dATEINS, cOMPNIT, cOMPSUBNIT, cOMPNAME, eMPIDTYPE, eMPIDNUM, eMPBRANCH, eMPFIRSTSURNAME, eMPSECONDSURNAME, eMPFIRSTNAME, eMPSECONDNAME, eMPMARITALSTATE, eMPBIRTHDATE, eMPGENDER, eMPJOININGDATE, eMPPOSITION, eMPMONTHHOUR, eMPBASICSALARY, eMPSALECOMMISSION, eMPCITY, eMPADDRESS, eMPEMAIL, eMPPHONENUMB1, eMPPHONENUMB2, eMPOWNER, eMPAGRICULTUREW, eMPCOMPNIT, eMPCOMPSUBNIT, eMPCOMPNAME, eMPCOMPMONTHHOUR, eMPCOMPBASICSALARY, eMPCOMPSALECOMMISSION, pARTNERIDTYPE, pARTNERIDNUM, pARTNERLIVETOGETHER, pARTNERRELATIONSHIP, pARTNERFIRSTSURNAME, pARTNERSECONDSURNAME, pARTNERFIRSTNAME, pARTNERSECONDNAME, pARTNERBIRTHDATE, pARTNERADDRESS, pARTNERCITY, pARTNERPHONENUMB, pARTNEROCCUPATION, pARTNEROCCUPSUBSIDY, pARTNEROCCUPNIT, pARTNEROCCUPCOMPANYNAME, pARTNEROCCUPBASICSALARY, pARENTIDTYPE, pARENTIDNUM, pARENTLIVETOGETHER, pARENTFIRSTSURNAME, pARENTSECONDSURNAME, pARENTFIRSTNAME, pARENTSECONDNAME, pARENTBIRTHDATE, pARENTOCCUPATION, pARENTADDRESS, pARENTCITY, pARENTPHONENUMB, pARENTEMPLOYEESUBSIDY, pARENTEMPLOYEESONNAME, pARENTEMPLOYEENIT, pARENTEMPLOYEECOMPNAME, pARENTEMPLOYEEBASICSALARY);
		}
		
        ///// <summary>
        ///// Selects all records from the tblNovedadesTrabajadores table.
        ///// </summary>
        //public static List<TblNovedadesTrabajadore> SelectAll() {
        //    using (SqlDataReader dataReader = SqlClientUtility.ExecuteReader("tblNovedadesTrabajadoresSelectAll")) {
        //        List<TblNovedadesTrabajadore> tblNovedadesTrabajadoreList = new List<TblNovedadesTrabajadore>();
        //        while (dataReader.Read()) {
        //            TblNovedadesTrabajadore tblNovedadesTrabajadore = MakeTblNovedadesTrabajadore(dataReader);
        //            tblNovedadesTrabajadoreList.Add(tblNovedadesTrabajadore);
        //        }
        //        return tblNovedadesTrabajadoreList;
        //    }
        //}
		
        ///// <summary>
        ///// Creates a new instance of the tblNovedadesTrabajadores class and populates it with data from the specified SqlDataReader.
        ///// </summary>
        //private static TblNovedadesTrabajadore MakeTblNovedadesTrabajadore(SqlDataReader dataReader) {
        //    TblNovedadesTrabajadore tblNovedadesTrabajadore = new TblNovedadesTrabajadore();
			
        //    if (dataReader.IsDBNull(0) == false) {
        //        tblNovedadesTrabajadore.ID = dataReader.GetInt32(0);
        //    }
        //    if (dataReader.IsDBNull(1) == false) {
        //        tblNovedadesTrabajadore.DATEINS = dataReader.GetDateTime(1);
        //    }
        //    if (dataReader.IsDBNull(2) == false) {
        //        tblNovedadesTrabajadore.COMPNIT = dataReader.GetString(2);
        //    }
        //    if (dataReader.IsDBNull(3) == false) {
        //        tblNovedadesTrabajadore.COMPSUBNIT = dataReader.GetString(3);
        //    }
        //    if (dataReader.IsDBNull(4) == false) {
        //        tblNovedadesTrabajadore.COMPNAME = dataReader.GetString(4);
        //    }
        //    if (dataReader.IsDBNull(5) == false) {
        //        tblNovedadesTrabajadore.EMPIDTYPE = dataReader.GetString(5);
        //    }
        //    if (dataReader.IsDBNull(6) == false) {
        //        tblNovedadesTrabajadore.EMPIDNUM = dataReader.GetString(6);
        //    }
        //    if (dataReader.IsDBNull(7) == false) {
        //        tblNovedadesTrabajadore.EMPBRANCH = dataReader.GetString(7);
        //    }
        //    if (dataReader.IsDBNull(8) == false) {
        //        tblNovedadesTrabajadore.EMPFIRSTSURNAME = dataReader.GetString(8);
        //    }
        //    if (dataReader.IsDBNull(9) == false) {
        //        tblNovedadesTrabajadore.EMPSECONDSURNAME = dataReader.GetString(9);
        //    }
        //    if (dataReader.IsDBNull(10) == false) {
        //        tblNovedadesTrabajadore.EMPFIRSTNAME = dataReader.GetString(10);
        //    }
        //    if (dataReader.IsDBNull(11) == false) {
        //        tblNovedadesTrabajadore.EMPSECONDNAME = dataReader.GetString(11);
        //    }
        //    if (dataReader.IsDBNull(12) == false) {
        //        tblNovedadesTrabajadore.EMPMARITALSTATE = dataReader.GetString(12);
        //    }
        //    if (dataReader.IsDBNull(13) == false) {
        //        tblNovedadesTrabajadore.EMPBIRTHDATE = dataReader.GetString(13);
        //    }
        //    if (dataReader.IsDBNull(14) == false) {
        //        tblNovedadesTrabajadore.EMPGENDER = dataReader.GetString(14);
        //    }
        //    if (dataReader.IsDBNull(15) == false) {
        //        tblNovedadesTrabajadore.EMPJOININGDATE = dataReader.GetString(15);
        //    }
        //    if (dataReader.IsDBNull(16) == false) {
        //        tblNovedadesTrabajadore.EMPPOSITION = dataReader.GetString(16);
        //    }
        //    if (dataReader.IsDBNull(17) == false) {
        //        tblNovedadesTrabajadore.EMPMONTHHOUR = dataReader.GetString(17);
        //    }
        //    if (dataReader.IsDBNull(18) == false) {
        //        tblNovedadesTrabajadore.EMPBASICSALARY = dataReader.GetString(18);
        //    }
        //    if (dataReader.IsDBNull(19) == false) {
        //        tblNovedadesTrabajadore.EMPSALECOMMISSION = dataReader.GetString(19);
        //    }
        //    if (dataReader.IsDBNull(20) == false) {
        //        tblNovedadesTrabajadore.EMPCITY = dataReader.GetString(20);
        //    }
        //    if (dataReader.IsDBNull(21) == false) {
        //        tblNovedadesTrabajadore.EMPADDRESS = dataReader.GetString(21);
        //    }
        //    if (dataReader.IsDBNull(22) == false) {
        //        tblNovedadesTrabajadore.EMPEMAIL = dataReader.GetString(22);
        //    }
        //    if (dataReader.IsDBNull(23) == false) {
        //        tblNovedadesTrabajadore.EMPPHONENUMB1 = dataReader.GetString(23);
        //    }
        //    if (dataReader.IsDBNull(24) == false) {
        //        tblNovedadesTrabajadore.EMPPHONENUMB2 = dataReader.GetString(24);
        //    }
        //    if (dataReader.IsDBNull(25) == false) {
        //        tblNovedadesTrabajadore.EMPOWNER = dataReader.GetString(25);
        //    }
        //    if (dataReader.IsDBNull(26) == false) {
        //        tblNovedadesTrabajadore.EMPAGRICULTUREW = dataReader.GetString(26);
        //    }
        //    if (dataReader.IsDBNull(27) == false) {
        //        tblNovedadesTrabajadore.EMPCOMPNIT = dataReader.GetString(27);
        //    }
        //    if (dataReader.IsDBNull(28) == false) {
        //        tblNovedadesTrabajadore.EMPCOMPSUBNIT = dataReader.GetString(28);
        //    }
        //    if (dataReader.IsDBNull(29) == false) {
        //        tblNovedadesTrabajadore.EMPCOMPNAME = dataReader.GetString(29);
        //    }
        //    if (dataReader.IsDBNull(30) == false) {
        //        tblNovedadesTrabajadore.EMPCOMPMONTHHOUR = dataReader.GetString(30);
        //    }
        //    if (dataReader.IsDBNull(31) == false) {
        //        tblNovedadesTrabajadore.EMPCOMPBASICSALARY = dataReader.GetString(31);
        //    }
        //    if (dataReader.IsDBNull(32) == false) {
        //        tblNovedadesTrabajadore.EMPCOMPSALECOMMISSION = dataReader.GetString(32);
        //    }
        //    if (dataReader.IsDBNull(33) == false) {
        //        tblNovedadesTrabajadore.PARTNERIDTYPE = dataReader.GetString(33);
        //    }
        //    if (dataReader.IsDBNull(34) == false) {
        //        tblNovedadesTrabajadore.PARTNERIDNUM = dataReader.GetString(34);
        //    }
        //    if (dataReader.IsDBNull(35) == false) {
        //        tblNovedadesTrabajadore.PARTNERLIVETOGETHER = dataReader.GetString(35);
        //    }
        //    if (dataReader.IsDBNull(36) == false) {
        //        tblNovedadesTrabajadore.PARTNERRELATIONSHIP = dataReader.GetString(36);
        //    }
        //    if (dataReader.IsDBNull(37) == false) {
        //        tblNovedadesTrabajadore.PARTNERFIRSTSURNAME = dataReader.GetString(37);
        //    }
        //    if (dataReader.IsDBNull(38) == false) {
        //        tblNovedadesTrabajadore.PARTNERSECONDSURNAME = dataReader.GetString(38);
        //    }
        //    if (dataReader.IsDBNull(39) == false) {
        //        tblNovedadesTrabajadore.PARTNERFIRSTNAME = dataReader.GetString(39);
        //    }
        //    if (dataReader.IsDBNull(40) == false) {
        //        tblNovedadesTrabajadore.PARTNERSECONDNAME = dataReader.GetString(40);
        //    }
        //    if (dataReader.IsDBNull(41) == false) {
        //        tblNovedadesTrabajadore.PARTNERBIRTHDATE = dataReader.GetString(41);
        //    }
        //    if (dataReader.IsDBNull(42) == false) {
        //        tblNovedadesTrabajadore.PARTNERADDRESS = dataReader.GetString(42);
        //    }
        //    if (dataReader.IsDBNull(43) == false) {
        //        tblNovedadesTrabajadore.PARTNERCITY = dataReader.GetString(43);
        //    }
        //    if (dataReader.IsDBNull(44) == false) {
        //        tblNovedadesTrabajadore.PARTNERPHONENUMB = dataReader.GetString(44);
        //    }
        //    if (dataReader.IsDBNull(45) == false) {
        //        tblNovedadesTrabajadore.PARTNEROCCUPATION = dataReader.GetString(45);
        //    }
        //    if (dataReader.IsDBNull(46) == false) {
        //        tblNovedadesTrabajadore.PARTNEROCCUPSUBSIDY = dataReader.GetString(46);
        //    }
        //    if (dataReader.IsDBNull(47) == false) {
        //        tblNovedadesTrabajadore.PARTNEROCCUPNIT = dataReader.GetString(47);
        //    }
        //    if (dataReader.IsDBNull(48) == false) {
        //        tblNovedadesTrabajadore.PARTNEROCCUPCOMPANYNAME = dataReader.GetString(48);
        //    }
        //    if (dataReader.IsDBNull(49) == false) {
        //        tblNovedadesTrabajadore.PARTNEROCCUPBASICSALARY = dataReader.GetString(49);
        //    }
        //    if (dataReader.IsDBNull(50) == false) {
        //        tblNovedadesTrabajadore.PARENTIDTYPE = dataReader.GetString(50);
        //    }
        //    if (dataReader.IsDBNull(51) == false) {
        //        tblNovedadesTrabajadore.PARENTIDNUM = dataReader.GetString(51);
        //    }
        //    if (dataReader.IsDBNull(52) == false) {
        //        tblNovedadesTrabajadore.PARENTLIVETOGETHER = dataReader.GetString(52);
        //    }
        //    if (dataReader.IsDBNull(53) == false) {
        //        tblNovedadesTrabajadore.PARENTFIRSTSURNAME = dataReader.GetString(53);
        //    }
        //    if (dataReader.IsDBNull(54) == false) {
        //        tblNovedadesTrabajadore.PARENTSECONDSURNAME = dataReader.GetString(54);
        //    }
        //    if (dataReader.IsDBNull(55) == false) {
        //        tblNovedadesTrabajadore.PARENTFIRSTNAME = dataReader.GetString(55);
        //    }
        //    if (dataReader.IsDBNull(56) == false) {
        //        tblNovedadesTrabajadore.PARENTSECONDNAME = dataReader.GetString(56);
        //    }
        //    if (dataReader.IsDBNull(57) == false) {
        //        tblNovedadesTrabajadore.PARENTBIRTHDATE = dataReader.GetString(57);
        //    }
        //    if (dataReader.IsDBNull(58) == false) {
        //        tblNovedadesTrabajadore.PARENTOCCUPATION = dataReader.GetString(58);
        //    }
        //    if (dataReader.IsDBNull(59) == false) {
        //        tblNovedadesTrabajadore.PARENTADDRESS = dataReader.GetString(59);
        //    }
        //    if (dataReader.IsDBNull(60) == false) {
        //        tblNovedadesTrabajadore.PARENTCITY = dataReader.GetString(60);
        //    }
        //    if (dataReader.IsDBNull(61) == false) {
        //        tblNovedadesTrabajadore.PARENTPHONENUMB = dataReader.GetString(61);
        //    }
        //    if (dataReader.IsDBNull(62) == false) {
        //        tblNovedadesTrabajadore.PARENTEMPLOYEESUBSIDY = dataReader.GetString(62);
        //    }
        //    if (dataReader.IsDBNull(63) == false) {
        //        tblNovedadesTrabajadore.PARENTEMPLOYEESONNAME = dataReader.GetString(63);
        //    }
        //    if (dataReader.IsDBNull(64) == false) {
        //        tblNovedadesTrabajadore.PARENTEMPLOYEENIT = dataReader.GetString(64);
        //    }
        //    if (dataReader.IsDBNull(65) == false) {
        //        tblNovedadesTrabajadore.PARENTEMPLOYEECOMPNAME = dataReader.GetString(65);
        //    }
        //    if (dataReader.IsDBNull(66) == false) {
        //        tblNovedadesTrabajadore.PARENTEMPLOYEEBASICSALARY = dataReader.GetString(66);
        //    }

        //    return tblNovedadesTrabajadore;
        //}
		#endregion
	}
}
