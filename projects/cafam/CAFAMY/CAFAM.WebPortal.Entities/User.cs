using System;
using System.Collections.Generic;
using System.Text;

namespace CAFAM.WebPortal.Entities
{
    [Serializable]
    public class User
    {
        private Address _address;
        private TopicOfInterest _topicOfInterest;
        private string _userName;
        private string _privateEmail;
        private string _companyEmail;

        public DateTime? CreationDate { get; set; }
        public EnumUserType UserType = EnumUserType.No_Afiliado;
        public string UserTypeString
        {
            get
            {
                return UserType.ToString();
            }
        }
        public string UserName
        {
            get 
            {
                return _userName;
            }
            set 
            {
                _userName = value;
                if (!string.IsNullOrEmpty(_userName))
                    _userName = _userName.ToLower();
            }
        }
        public string UserNameWithoutMembership
        {
            get
            {
                return this.UserName.Substring(this.UserName.IndexOf(":") + 1);
            }
        }
        public string Password { get; set; }
        public string SecurityQuestion { get; set; }
        public string SecurityAnswer { get; set; }
        public string FirstName { get; set; }
        public string SecondName { get; set; }
        public string FirstSurname { get; set; }
        public string SecondSurname { get; set; }
        public string FullName 
        {
            get
            {
                string fullName = FirstName;

                if (!string.IsNullOrEmpty(SecondName))
                {
                    fullName += " " + SecondName;
                }

                fullName += " " + FirstSurname;

                if (!string.IsNullOrEmpty(SecondSurname))
                {
                    fullName += " " + SecondSurname;
                }

                return fullName;
            }
        }
        public string IdentificationType { get; set; }
        public string IdentificationNumber { get; set; }
        public string NIT { get; set; }
        public string SubNIT { get; set; }
        public string Audience { get; set; }
        public string TradeName { get; set; }
        public DateTime? BirthDate { get; set; }
        public int? Age
        {
            get
            {
                if (BirthDate != null)
                {
                    int age = 0;
                    age = DateTime.Now.Year - BirthDate.Value.Year;

                    if (DateTime.Now.Month < BirthDate.Value.Month || (DateTime.Now.Month == BirthDate.Value.Month && DateTime.Now.Day < BirthDate.Value.Day))
                    {
                        age--;
                    }

                    return age;
                }
                else
                {
                    return null;
                }
            }
        }
        public string MaritalState { get; set; }
        public string Ocupattion { get; set; }
        public string CompensationFund { get; set; }
        public string Company { get; set; }
        public string Position { get; set; }
        public string PrivateEmail 
        {
            get
            {
                return _privateEmail;
            }
            set
            {
                _privateEmail = value;
                if (!string.IsNullOrEmpty(_privateEmail))
                    _privateEmail = _privateEmail.ToLower();
            }
        }
        public string CompanyEmail
        {
            get
            {
                return _companyEmail;
            }
            set
            {
                _companyEmail = value;
                if (!string.IsNullOrEmpty(_companyEmail))
                    _companyEmail = _companyEmail.ToLower();
            }
        }
        public string PrivateTel { get; set; }
        public string PrivateMobile { get; set; }
        public string CompanyMobile { get; set; }
        public string CompanyTel { get; set; }
        public string TelExtension { get; set; }     
        public Address Address
        {
            get
            {
                if (_address == null)
                {
                    _address = new Address();
                }
                return _address;
            }
            set
            {
                _address = value;
            }
        }
        public string EPS { get; set; }
        public int? ChildrenQuantity { get; set; }
        public string IncomeLevel { get; set; }
        public string PersonalManager { get; set; }
        public TopicOfInterest TopicOfInterest 
        {
            get
            {
                if (_topicOfInterest == null)
                {
                    _topicOfInterest = new TopicOfInterest();
                }
                return _topicOfInterest;
            }
            set
            {
                _topicOfInterest = value;
            }
        }
        public string AuthorizedBy { get; set; }
        public DateTime? AuthorizationDate { get; set; }
        public bool AuthorizedToGetBasicData { get; set; }
        public bool AuthorizedToGetContibutionData { get; set; }
        public bool AuthorizedToGetMemberData { get; set; }
    }
}
