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
    	#endregion
	}
}
