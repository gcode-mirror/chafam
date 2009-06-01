using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace DAO
{
	public  class FormNovedadesTrabajador {
		#region Fields
		private int iD;
		private DateTime dateins;
		private string compnit;
		private string compsubnit;
		private string compname;
		private string empidtype;
		private string empidnum;
		private string empbranch;
		private string empfirstsurname;
		private string empsecondsurname;
		private string empfirstname;
		private string empsecondname;
		private string empmaritalstate;
		private string empbirthdate;
		private string empgender;
		private string empjoiningdate;
		private string empposition;
		private string empmonthhour;
		private string empbasicsalary;
		private string empsalecommission;
		private string empcity;
		private string empaddress;
		private string empemail;
		private string empphonenumb1;
		private string empphonenumb2;
		private string empowner;
		private string empagriculturew;
		private string empcompnit;
		private string empcompsubnit;
		private string empcompname;
		private string empcompmonthhour;
		private string empcompbasicsalary;
		private string empcompsalecommission;
		private string partneridtype;
		private string partneridnum;
		private string partnerlivetogether;
		private string partnerrelationship;
		private string partnerfirstsurname;
		private string partnersecondsurname;
		private string partnerfirstname;
		private string partnersecondname;
		private string partnerbirthdate;
		private string partneraddress;
		private string partnercity;
		private string partnerphonenumb;
		private string partneroccupation;
		private string partneroccupsubsidy;
		private string partneroccupnit;
		private string partneroccupcompanyname;
		private string partneroccupbasicsalary;
		private string parentidtype;
		private string parentidnum;
		private string parentlivetogether;
		private string parentfirstsurname;
		private string parentsecondsurname;
		private string parentfirstname;
		private string parentsecondname;
		private string parentbirthdate;
		private string parentoccupation;
		private string parentaddress;
		private string parentcity;
		private string parentphonenumb;
		private string parentemployeesubsidy;
		private string parentemployeesonname;
		private string parentemployeenit;
		private string parentemployeecompname;
		private string parentemployeebasicsalary;
        public List<FormNovedadesDetalle> NovedadesDetalle;

		#endregion
		
		#region Constructors
		public FormNovedadesTrabajador() 
        {
            this.NovedadesDetalle = new List<FormNovedadesDetalle>();
		}
		
		public FormNovedadesTrabajador(DateTime dateins, string compnit, string compsubnit, string compname, string empidtype, string empidnum, string empbranch, string empfirstsurname, string empsecondsurname, string empfirstname, string empsecondname, string empmaritalstate, string empbirthdate, string empgender, string empjoiningdate, string empposition, string empmonthhour, string empbasicsalary, string empsalecommission, string empcity, string empaddress, string empemail, string empphonenumb1, string empphonenumb2, string empowner, string empagriculturew, string empcompnit, string empcompsubnit, string empcompname, string empcompmonthhour, string empcompbasicsalary, string empcompsalecommission, string partneridtype, string partneridnum, string partnerlivetogether, string partnerrelationship, string partnerfirstsurname, string partnersecondsurname, string partnerfirstname, string partnersecondname, string partnerbirthdate, string partneraddress, string partnercity, string partnerphonenumb, string partneroccupation, string partneroccupsubsidy, string partneroccupnit, string partneroccupcompanyname, string partneroccupbasicsalary, string parentidtype, string parentidnum, string parentlivetogether, string parentfirstsurname, string parentsecondsurname, string parentfirstname, string parentsecondname, string parentbirthdate, string parentoccupation, string parentaddress, string parentcity, string parentphonenumb, string parentemployeesubsidy, string parentemployeesonname, string parentemployeenit, string parentemployeecompname, string parentemployeebasicsalary) {
			this.dateins = dateins;
			this.compnit = compnit;
			this.compsubnit = compsubnit;
			this.compname = compname;
			this.empidtype = empidtype;
			this.empidnum = empidnum;
			this.empbranch = empbranch;
			this.empfirstsurname = empfirstsurname;
			this.empsecondsurname = empsecondsurname;
			this.empfirstname = empfirstname;
			this.empsecondname = empsecondname;
			this.empmaritalstate = empmaritalstate;
			this.empbirthdate = empbirthdate;
			this.empgender = empgender;
			this.empjoiningdate = empjoiningdate;
			this.empposition = empposition;
			this.empmonthhour = empmonthhour;
			this.empbasicsalary = empbasicsalary;
			this.empsalecommission = empsalecommission;
			this.empcity = empcity;
			this.empaddress = empaddress;
			this.empemail = empemail;
			this.empphonenumb1 = empphonenumb1;
			this.empphonenumb2 = empphonenumb2;
			this.empowner = empowner;
			this.empagriculturew = empagriculturew;
			this.empcompnit = empcompnit;
			this.empcompsubnit = empcompsubnit;
			this.empcompname = empcompname;
			this.empcompmonthhour = empcompmonthhour;
			this.empcompbasicsalary = empcompbasicsalary;
			this.empcompsalecommission = empcompsalecommission;
			this.partneridtype = partneridtype;
			this.partneridnum = partneridnum;
			this.partnerlivetogether = partnerlivetogether;
			this.partnerrelationship = partnerrelationship;
			this.partnerfirstsurname = partnerfirstsurname;
			this.partnersecondsurname = partnersecondsurname;
			this.partnerfirstname = partnerfirstname;
			this.partnersecondname = partnersecondname;
			this.partnerbirthdate = partnerbirthdate;
			this.partneraddress = partneraddress;
			this.partnercity = partnercity;
			this.partnerphonenumb = partnerphonenumb;
			this.partneroccupation = partneroccupation;
			this.partneroccupsubsidy = partneroccupsubsidy;
			this.partneroccupnit = partneroccupnit;
			this.partneroccupcompanyname = partneroccupcompanyname;
			this.partneroccupbasicsalary = partneroccupbasicsalary;
			this.parentidtype = parentidtype;
			this.parentidnum = parentidnum;
			this.parentlivetogether = parentlivetogether;
			this.parentfirstsurname = parentfirstsurname;
			this.parentsecondsurname = parentsecondsurname;
			this.parentfirstname = parentfirstname;
			this.parentsecondname = parentsecondname;
			this.parentbirthdate = parentbirthdate;
			this.parentoccupation = parentoccupation;
			this.parentaddress = parentaddress;
			this.parentcity = parentcity;
			this.parentphonenumb = parentphonenumb;
			this.parentemployeesubsidy = parentemployeesubsidy;
			this.parentemployeesonname = parentemployeesonname;
			this.parentemployeenit = parentemployeenit;
			this.parentemployeecompname = parentemployeecompname;
			this.parentemployeebasicsalary = parentemployeebasicsalary;
            this.NovedadesDetalle = new List<FormNovedadesDetalle>();
		}
        
        public FormNovedadesTrabajador(int iD, System.DateTime dateins, string compnit, string compsubnit, string compname, string empidtype, string empidnum, string empbranch, string empfirstsurname, string empsecondsurname, string empfirstname, string empsecondname, string empmaritalstate, string empbirthdate, string empgender, string empjoiningdate, string empposition, string empmonthhour, string empbasicsalary, string empsalecommission, string empcity, string empaddress, string empemail, string empphonenumb1, string empphonenumb2, string empowner, string empagriculturew, string empcompnit, string empcompsubnit, string empcompname, string empcompmonthhour, string empcompbasicsalary, string empcompsalecommission, string partneridtype, string partneridnum, string partnerlivetogether, string partnerrelationship, string partnerfirstsurname, string partnersecondsurname, string partnerfirstname, string partnersecondname, string partnerbirthdate, string partneraddress, string partnercity, string partnerphonenumb, string partneroccupation, string partneroccupsubsidy, string partneroccupnit, string partneroccupcompanyname, string partneroccupbasicsalary, string parentidtype, string parentidnum, string parentlivetogether, string parentfirstsurname, string parentsecondsurname, string parentfirstname, string parentsecondname, string parentbirthdate, string parentoccupation, string parentaddress, string parentcity, string parentphonenumb, string parentemployeesubsidy, string parentemployeesonname, string parentemployeenit, string parentemployeecompname, string parentemployeebasicsalary)
        {
			this.iD = iD;
			this.dateins = dateins;
			this.compnit = compnit;
			this.compsubnit = compsubnit;
			this.compname = compname;
			this.empidtype = empidtype;
			this.empidnum = empidnum;
			this.empbranch = empbranch;
			this.empfirstsurname = empfirstsurname;
			this.empsecondsurname = empsecondsurname;
			this.empfirstname = empfirstname;
			this.empsecondname = empsecondname;
			this.empmaritalstate = empmaritalstate;
			this.empbirthdate = empbirthdate;
			this.empgender = empgender;
			this.empjoiningdate = empjoiningdate;
			this.empposition = empposition;
			this.empmonthhour = empmonthhour;
			this.empbasicsalary = empbasicsalary;
			this.empsalecommission = empsalecommission;
			this.empcity = empcity;
			this.empaddress = empaddress;
			this.empemail = empemail;
			this.empphonenumb1 = empphonenumb1;
			this.empphonenumb2 = empphonenumb2;
			this.empowner = empowner;
			this.empagriculturew = empagriculturew;
			this.empcompnit = empcompnit;
			this.empcompsubnit = empcompsubnit;
			this.empcompname = empcompname;
			this.empcompmonthhour = empcompmonthhour;
			this.empcompbasicsalary = empcompbasicsalary;
			this.empcompsalecommission = empcompsalecommission;
			this.partneridtype = partneridtype;
			this.partneridnum = partneridnum;
			this.partnerlivetogether = partnerlivetogether;
			this.partnerrelationship = partnerrelationship;
			this.partnerfirstsurname = partnerfirstsurname;
			this.partnersecondsurname = partnersecondsurname;
			this.partnerfirstname = partnerfirstname;
			this.partnersecondname = partnersecondname;
			this.partnerbirthdate = partnerbirthdate;
			this.partneraddress = partneraddress;
			this.partnercity = partnercity;
			this.partnerphonenumb = partnerphonenumb;
			this.partneroccupation = partneroccupation;
			this.partneroccupsubsidy = partneroccupsubsidy;
			this.partneroccupnit = partneroccupnit;
			this.partneroccupcompanyname = partneroccupcompanyname;
			this.partneroccupbasicsalary = partneroccupbasicsalary;
			this.parentidtype = parentidtype;
			this.parentidnum = parentidnum;
			this.parentlivetogether = parentlivetogether;
			this.parentfirstsurname = parentfirstsurname;
			this.parentsecondsurname = parentsecondsurname;
			this.parentfirstname = parentfirstname;
			this.parentsecondname = parentsecondname;
			this.parentbirthdate = parentbirthdate;
			this.parentoccupation = parentoccupation;
			this.parentaddress = parentaddress;
			this.parentcity = parentcity;
			this.parentphonenumb = parentphonenumb;
			this.parentemployeesubsidy = parentemployeesubsidy;
			this.parentemployeesonname = parentemployeesonname;
			this.parentemployeenit = parentemployeenit;
			this.parentemployeecompname = parentemployeecompname;
			this.parentemployeebasicsalary = parentemployeebasicsalary;
            this.NovedadesDetalle = new List<FormNovedadesDetalle>();
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
			get { return dateins; }
			set { dateins = value; }
		}
		
		/// <summary>
		/// Gets or sets the COMPNIT value.
		/// </summary>
		public string COMPNIT {
			get { return compnit; }
			set { compnit = value; }
		}
		
		/// <summary>
		/// Gets or sets the COMPSUBNIT value.
		/// </summary>
		public string COMPSUBNIT {
			get { return compsubnit; }
			set { compsubnit = value; }
		}
		
		/// <summary>
		/// Gets or sets the COMPNAME value.
		/// </summary>
		public string COMPNAME {
			get { return compname; }
			set { compname = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPIDTYPE value.
		/// </summary>
		public string EMPIDTYPE {
			get { return empidtype; }
			set { empidtype = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPIDNUM value.
		/// </summary>
		public string EMPIDNUM {
			get { return empidnum; }
			set { empidnum = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPBRANCH value.
		/// </summary>
		public string EMPBRANCH {
			get { return empbranch; }
			set { empbranch = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPFIRSTSURNAME value.
		/// </summary>
		public string EMPFIRSTSURNAME {
			get { return empfirstsurname; }
			set { empfirstsurname = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPSECONDSURNAME value.
		/// </summary>
		public string EMPSECONDSURNAME {
			get { return empsecondsurname; }
			set { empsecondsurname = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPFIRSTNAME value.
		/// </summary>
		public string EMPFIRSTNAME {
			get { return empfirstname; }
			set { empfirstname = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPSECONDNAME value.
		/// </summary>
		public string EMPSECONDNAME {
			get { return empsecondname; }
			set { empsecondname = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPMARITALSTATE value.
		/// </summary>
		public string EMPMARITALSTATE {
			get { return empmaritalstate; }
			set { empmaritalstate = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPBIRTHDATE value.
		/// </summary>
		public string EMPBIRTHDATE {
			get { return empbirthdate; }
			set { empbirthdate = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPGENDER value.
		/// </summary>
		public string EMPGENDER {
			get { return empgender; }
			set { empgender = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPJOININGDATE value.
		/// </summary>
		public string EMPJOININGDATE {
			get { return empjoiningdate; }
			set { empjoiningdate = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPPOSITION value.
		/// </summary>
		public string EMPPOSITION {
			get { return empposition; }
			set { empposition = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPMONTHHOUR value.
		/// </summary>
		public string EMPMONTHHOUR {
			get { return empmonthhour; }
			set { empmonthhour = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPBASICSALARY value.
		/// </summary>
		public string EMPBASICSALARY {
			get { return empbasicsalary; }
			set { empbasicsalary = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPSALECOMMISSION value.
		/// </summary>
		public string EMPSALECOMMISSION {
			get { return empsalecommission; }
			set { empsalecommission = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPCITY value.
		/// </summary>
		public string EMPCITY {
			get { return empcity; }
			set { empcity = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPADDRESS value.
		/// </summary>
		public string EMPADDRESS {
			get { return empaddress; }
			set { empaddress = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPEMAIL value.
		/// </summary>
		public string EMPEMAIL {
			get { return empemail; }
			set { empemail = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPPHONENUMB1 value.
		/// </summary>
		public string EMPPHONENUMB1 {
			get { return empphonenumb1; }
			set { empphonenumb1 = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPPHONENUMB2 value.
		/// </summary>
		public string EMPPHONENUMB2 {
			get { return empphonenumb2; }
			set { empphonenumb2 = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPOWNER value.
		/// </summary>
		public string EMPOWNER {
			get { return empowner; }
			set { empowner = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPAGRICULTUREW value.
		/// </summary>
		public string EMPAGRICULTUREW {
			get { return empagriculturew; }
			set { empagriculturew = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPCOMPNIT value.
		/// </summary>
		public string EMPCOMPNIT {
			get { return empcompnit; }
			set { empcompnit = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPCOMPSUBNIT value.
		/// </summary>
		public string EMPCOMPSUBNIT {
			get { return empcompsubnit; }
			set { empcompsubnit = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPCOMPNAME value.
		/// </summary>
		public string EMPCOMPNAME {
			get { return empcompname; }
			set { empcompname = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPCOMPMONTHHOUR value.
		/// </summary>
		public string EMPCOMPMONTHHOUR {
			get { return empcompmonthhour; }
			set { empcompmonthhour = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPCOMPBASICSALARY value.
		/// </summary>
		public string EMPCOMPBASICSALARY {
			get { return empcompbasicsalary; }
			set { empcompbasicsalary = value; }
		}
		
		/// <summary>
		/// Gets or sets the EMPCOMPSALECOMMISSION value.
		/// </summary>
		public string EMPCOMPSALECOMMISSION {
			get { return empcompsalecommission; }
			set { empcompsalecommission = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERIDTYPE value.
		/// </summary>
		public string PARTNERIDTYPE {
			get { return partneridtype; }
			set { partneridtype = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERIDNUM value.
		/// </summary>
		public string PARTNERIDNUM {
			get { return partneridnum; }
			set { partneridnum = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERLIVETOGETHER value.
		/// </summary>
		public string PARTNERLIVETOGETHER {
			get { return partnerlivetogether; }
			set { partnerlivetogether = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERRELATIONSHIP value.
		/// </summary>
		public string PARTNERRELATIONSHIP {
			get { return partnerrelationship; }
			set { partnerrelationship = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERFIRSTSURNAME value.
		/// </summary>
		public string PARTNERFIRSTSURNAME {
			get { return partnerfirstsurname; }
			set { partnerfirstsurname = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERSECONDSURNAME value.
		/// </summary>
		public string PARTNERSECONDSURNAME {
			get { return partnersecondsurname; }
			set { partnersecondsurname = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERFIRSTNAME value.
		/// </summary>
		public string PARTNERFIRSTNAME {
			get { return partnerfirstname; }
			set { partnerfirstname = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERSECONDNAME value.
		/// </summary>
		public string PARTNERSECONDNAME {
			get { return partnersecondname; }
			set { partnersecondname = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERBIRTHDATE value.
		/// </summary>
		public string PARTNERBIRTHDATE {
			get { return partnerbirthdate; }
			set { partnerbirthdate = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERADDRESS value.
		/// </summary>
		public string PARTNERADDRESS {
			get { return partneraddress; }
			set { partneraddress = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERCITY value.
		/// </summary>
		public string PARTNERCITY {
			get { return partnercity; }
			set { partnercity = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNERPHONENUMB value.
		/// </summary>
		public string PARTNERPHONENUMB {
			get { return partnerphonenumb; }
			set { partnerphonenumb = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNEROCCUPATION value.
		/// </summary>
		public string PARTNEROCCUPATION {
			get { return partneroccupation; }
			set { partneroccupation = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNEROCCUPSUBSIDY value.
		/// </summary>
		public string PARTNEROCCUPSUBSIDY {
			get { return partneroccupsubsidy; }
			set { partneroccupsubsidy = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNEROCCUPNIT value.
		/// </summary>
		public string PARTNEROCCUPNIT {
			get { return partneroccupnit; }
			set { partneroccupnit = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNEROCCUPCOMPANYNAME value.
		/// </summary>
		public string PARTNEROCCUPCOMPANYNAME {
			get { return partneroccupcompanyname; }
			set { partneroccupcompanyname = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARTNEROCCUPBASICSALARY value.
		/// </summary>
		public string PARTNEROCCUPBASICSALARY {
			get { return partneroccupbasicsalary; }
			set { partneroccupbasicsalary = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTIDTYPE value.
		/// </summary>
		public string PARENTIDTYPE {
			get { return parentidtype; }
			set { parentidtype = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTIDNUM value.
		/// </summary>
		public string PARENTIDNUM {
			get { return parentidnum; }
			set { parentidnum = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTLIVETOGETHER value.
		/// </summary>
		public string PARENTLIVETOGETHER {
			get { return parentlivetogether; }
			set { parentlivetogether = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTFIRSTSURNAME value.
		/// </summary>
		public string PARENTFIRSTSURNAME {
			get { return parentfirstsurname; }
			set { parentfirstsurname = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTSECONDSURNAME value.
		/// </summary>
		public string PARENTSECONDSURNAME {
			get { return parentsecondsurname; }
			set { parentsecondsurname = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTFIRSTNAME value.
		/// </summary>
		public string PARENTFIRSTNAME {
			get { return parentfirstname; }
			set { parentfirstname = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTSECONDNAME value.
		/// </summary>
		public string PARENTSECONDNAME {
			get { return parentsecondname; }
			set { parentsecondname = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTBIRTHDATE value.
		/// </summary>
		public string PARENTBIRTHDATE {
			get { return parentbirthdate; }
			set { parentbirthdate = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTOCCUPATION value.
		/// </summary>
		public string PARENTOCCUPATION {
			get { return parentoccupation; }
			set { parentoccupation = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTADDRESS value.
		/// </summary>
		public string PARENTADDRESS {
			get { return parentaddress; }
			set { parentaddress = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTCITY value.
		/// </summary>
		public string PARENTCITY {
			get { return parentcity; }
			set { parentcity = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTPHONENUMB value.
		/// </summary>
		public string PARENTPHONENUMB {
			get { return parentphonenumb; }
			set { parentphonenumb = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTEMPLOYEESUBSIDY value.
		/// </summary>
		public string PARENTEMPLOYEESUBSIDY {
			get { return parentemployeesubsidy; }
			set { parentemployeesubsidy = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTEMPLOYEESONNAME value.
		/// </summary>
		public string PARENTEMPLOYEESONNAME {
			get { return parentemployeesonname; }
			set { parentemployeesonname = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTEMPLOYEENIT value.
		/// </summary>
		public string PARENTEMPLOYEENIT {
			get { return parentemployeenit; }
			set { parentemployeenit = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTEMPLOYEECOMPNAME value.
		/// </summary>
		public string PARENTEMPLOYEECOMPNAME {
			get { return parentemployeecompname; }
			set { parentemployeecompname = value; }
		}
		
		/// <summary>
		/// Gets or sets the PARENTEMPLOYEEBASICSALARY value.
		/// </summary>
		public string PARENTEMPLOYEEBASICSALARY {
			get { return parentemployeebasicsalary; }
			set { parentemployeebasicsalary = value; }
		}
		#endregion
		
		#region Methods
		public void Insert() 
        {
            using (SqlConnection conn = DAO.ConnectionManager.getCnn())
            {
                try
                {
                    conn.Open();

                    using (SqlTransaction sqlTran = conn.BeginTransaction())
                    {
                        SqlCommand cmdSQLCommand = new SqlCommand("[tblNovedadesTrabajadoresInsert]", conn, sqlTran);
                        cmdSQLCommand.CommandType = CommandType.StoredProcedure;

                        cmdSQLCommand.Parameters.Add(new SqlParameter("@dATEINS", SqlDbType.DateTime, 8, ParameterDirection.Input, true, 23, 3, "", DataRowVersion.Proposed, dateins));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@cOMPNIT", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, compnit));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@cOMPSUBNIT", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, compsubnit));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@cOMPNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, compname));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPIDTYPE", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empidtype));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPIDNUM", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empidnum));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPBRANCH", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empbranch));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPFIRSTSURNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empfirstsurname));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPSECONDSURNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empsecondsurname));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPFIRSTNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empfirstname));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPSECONDNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empsecondname));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPMARITALSTATE", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empmaritalstate));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPBIRTHDATE", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empbirthdate));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPGENDER", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empgender));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPJOININGDATE", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empjoiningdate));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPPOSITION", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, "esto debe andar"));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPMONTHHOUR", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empmonthhour));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPBASICSALARY", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empbasicsalary));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPSALECOMMISSION", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empsalecommission));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPCITY", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empcity));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPADDRESS", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empaddress));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPEMAIL", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empemail));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPPHONENUMB1", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empphonenumb1));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPPHONENUMB2", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empphonenumb2));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPOWNER", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empowner));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPAGRICULTUREW", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empagriculturew));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPCOMPNIT", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empcompnit));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPCOMPSUBNIT", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empcompsubnit));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPCOMPNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empcompname));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPCOMPMONTHHOUR", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empcompmonthhour));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPCOMPBASICSALARY", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empcompbasicsalary));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@eMPCOMPSALECOMMISSION", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, empcompsalecommission));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARTNERIDTYPE", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, partneridtype));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARTNERIDNUM", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, partneridnum));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARTNERLIVETOGETHER", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, partnerlivetogether));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARTNERRELATIONSHIP", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, partnerrelationship));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARTNERFIRSTSURNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, partnerfirstsurname));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARTNERSECONDSURNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, partnersecondsurname));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARTNERFIRSTNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, partnerfirstname));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARTNERSECONDNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, partnersecondname));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARTNERBIRTHDATE", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, partnerbirthdate));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@PARTNERADDRESS", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, partneraddress));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARTNERCITY", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, partnercity));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARTNERPHONENUMB", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, partnerphonenumb));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARTNEROCCUPATION", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, partneroccupation));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARTNEROCCUPSUBSIDY", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, partneroccupsubsidy));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARTNEROCCUPNIT", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, partneroccupnit));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARTNEROCCUPCOMPANYNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, partneroccupcompanyname));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARTNEROCCUPBASICSALARY", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, partneroccupbasicsalary));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARENTIDTYPE", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, parentidtype));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARENTIDNUM", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, parentidnum));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARENTLIVETOGETHER", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, parentlivetogether));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARENTFIRSTSURNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, parentfirstsurname));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARENTSECONDSURNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, parentsecondsurname));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARENTFIRSTNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, parentfirstname));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARENTSECONDNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, parentsecondname));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARENTBIRTHDATE", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, parentbirthdate));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARENTOCCUPATION", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, parentoccupation));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARENTADDRESS", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, parentaddress));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARENTCITY", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, parentcity));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARENTPHONENUMB", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, parentphonenumb));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARENTEMPLOYEESUBSIDY", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, parentemployeesubsidy));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARENTEMPLOYEESONNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, parentemployeesonname));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARENTEMPLOYEENIT", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, parentemployeenit));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARENTEMPLOYEECOMPNAME", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, parentemployeecompname));
                        cmdSQLCommand.Parameters.Add(new SqlParameter("@pARENTEMPLOYEEBASICSALARY", SqlDbType.VarChar, 100, ParameterDirection.Input, true, 0, 0, "", DataRowVersion.Proposed, parentemployeebasicsalary));

                        ID = Int32.Parse(cmdSQLCommand.ExecuteScalar().ToString());
                        this.NovedadesDetalle = new List<FormNovedadesDetalle>();

                        foreach (FormNovedadesDetalle novedadDetalleTrab in NovedadesDetalle)
                        {
                            novedadDetalleTrab.ID_Novedad = ID;
                            novedadDetalleTrab.Insert(sqlTran, conn);
                        }

                        //DAO.FormNovedadesDetalle novDetalle1 = new DAO.FormNovedadesDetalle();
                        //novDetalle1.ID_Novedad = ID;
                        //novDetalle1.DEPENDIDTYPE = "prueba";
                        //novDetalle1.DEPENDIDNUM = "prueba";
                        //novDetalle1.DEPENDPARENTIDTYPE = "prueba";
                        //novDetalle1.DEPENDPARENTIDNUM = "prueba";
                        //novDetalle1.DEPENDPARENTGENDER = "prueba";
                        //novDetalle1.DEPENDBIRTHDATE = System.DateTime.Today;
                        //novDetalle1.DEPENDFIRSTSURENAME = "prueba";
                        //novDetalle1.DEPENDSECONDSURENAME = "prueba";
                        //novDetalle1.DEPENDFIRSTNAME = "prueba";
                        //novDetalle1.DEPENDSECONDNAME = "prueba";
                        //novDetalle1.DEPENDKINDSHIP = "prueba";
                        //novDetalle1.DEPENDHANDICAPP = "prueba";
                        //novDetalle1.Insert(sqlTran, conn);

                        sqlTran.Commit();
                    }
                }
                catch (Exception ex)
                {
                    throw new Exception(String.Format("ProyectoDAL::Insertar::Ha ocurrido un Error. Mensaje:{0}", ex.Message), ex);
                }
            }
		}
    	#endregion
	}
}
