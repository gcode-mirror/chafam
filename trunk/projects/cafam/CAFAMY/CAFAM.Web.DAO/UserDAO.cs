using System;
using System.Net;
using System.Collections.Generic;
using System.Text;
using Microsoft.SharePoint;
using Microsoft.Office.Server.UserProfiles;
using Microsoft.Office.Server.Security;
using CAFAM.WebPortal.AdamConnetion;
using Microsoft.Office.Server;
using System.Web;

namespace CAFAM.WebPortal.DAO
{
    public class UserDAO
    {
        private SPWeb Web;

        public UserDAO(SPWeb web)
        {
            Web = web;
        }

        public UserDAO()
        {
        }

        public Entities.User GetUser(UserProfile uProfile)
        {
            try
            {
                Entities.User user = new Entities.User();

                user.CreationDate = GetPropertyValueDateTime(uProfile["CreationDate"].Value);
                user.UserName = GetPropertyValueString(uProfile["AccountName"].Value);

                try
                {
                    user.UserType = (Entities.EnumUserType)Enum.Parse(typeof(Entities.EnumUserType), GetPropertyValueString(uProfile["UserType"].Value));
                }
                catch
                {
                    throw new Exception("No valid usertype defined in User Profile");
                }
                user.FirstName = GetPropertyValueString(uProfile["FirstName"].Value);
                user.SecondName = GetPropertyValueString(uProfile["SecondName"].Value);
                user.FirstSurname = GetPropertyValueString(uProfile["FirstSurname"].Value);
                user.SecondSurname = GetPropertyValueString(uProfile["SecondSurname"].Value);
                user.IdentificationType = GetPropertyValueString(uProfile["IdentificationType"].Value);
                user.IdentificationNumber = GetPropertyValueString(uProfile["IdentificationNumber"].Value);
                user.NIT = GetPropertyValueString(uProfile["NIT"].Value);
                user.SubNIT = GetPropertyValueString(uProfile["SubNIT"].Value);
                user.Audience = GetPropertyValueString(uProfile["Audience"].Value);
                user.TradeName = GetPropertyValueString(uProfile["TradeName"].Value);
                user.BirthDate = GetPropertyValueDateTime(uProfile["BirthDate"].Value);
                user.MaritalState = GetPropertyValueString(uProfile["MaritalState"].Value);
                user.Ocupattion = GetPropertyValueString(uProfile["Ocupattion"].Value);
                user.CompensationFund = GetPropertyValueString(uProfile["CompensationFund"].Value);
                user.Company = GetPropertyValueString(uProfile["Company"].Value);
                user.Position = GetPropertyValueString(uProfile["Position"].Value);
                user.PrivateEmail = GetPropertyValueString(uProfile["PrivateEmail"].Value);
                user.CompanyEmail = GetPropertyValueString(uProfile["CompanyEmail"].Value);
                user.PrivateTel = GetPropertyValueString(uProfile["PrivateTel"].Value);
                user.PrivateMobile = GetPropertyValueString(uProfile["PrivateMobile"].Value);
                user.CompanyMobile = GetPropertyValueString(uProfile["CompanyMobile"].Value);
                user.CompanyTel = GetPropertyValueString(uProfile["CompanyTel"].Value);
                user.TelExtension = GetPropertyValueString(uProfile["TelExtension"].Value);
                user.Address.AddressCombo1 = GetPropertyValueString(uProfile["AddressCombo1"].Value);
                user.Address.AddressCombo2 = GetPropertyValueString(uProfile["AddressCombo2"].Value);
                user.Address.AddressCombo3 = GetPropertyValueString(uProfile["AddressCombo3"].Value);
                user.Address.AddressCombo4 = GetPropertyValueString(uProfile["AddressCombo4"].Value);
                user.Address.AddressCombo5 = GetPropertyValueString(uProfile["AddressCombo5"].Value);
                user.Address.AddressCombo6 = GetPropertyValueString(uProfile["AddressCombo6"].Value);
                user.Address.AddressText1 = GetPropertyValueString(uProfile["AddressText1"].Value);
                user.Address.AddressText2 = GetPropertyValueInt(uProfile["AddressText2"].Value);
                user.Address.AddressText3 = GetPropertyValueString(uProfile["AddressText3"].Value);
                user.Address.AddressText4 = GetPropertyValueString(uProfile["AddressText4"].Value);
                user.Address.AddressText5 = GetPropertyValueString(uProfile["AddressText5"].Value);
                user.EPS = GetPropertyValueString(uProfile["EPS"].Value);
                user.ChildrenQuantity = GetPropertyValueInt(uProfile["ChildrenQuantity"].Value);
                user.IncomeLevel = GetPropertyValueString(uProfile["IncomeLevel"].Value);
                user.PersonalManager = GetPropertyValueString(uProfile["PersonalManager"].Value);
                user.TopicOfInterest.MarketSales = GetProperyValueBool(uProfile["MarketSales"].Value);
                user.TopicOfInterest.Recreation = GetProperyValueBool(uProfile["Recreation"].Value);
                user.TopicOfInterest.Education = GetProperyValueBool(uProfile["Education"].Value);
                user.TopicOfInterest.Home = GetProperyValueBool(uProfile["Home"].Value);
                user.TopicOfInterest.Health = GetProperyValueBool(uProfile["Health"].Value);
                user.TopicOfInterest.Subsidy = GetProperyValueBool(uProfile["Subsidy"].Value);
                user.TopicOfInterest.Credits = GetProperyValueBool(uProfile["Credits"].Value);
                user.AuthorizedBy = GetPropertyValueString(uProfile["AuthorizedBy"].Value);
                user.AuthorizationDate = GetPropertyValueDateTime(uProfile["AuthorizationDate"].Value);
                user.AuthorizedToGetBasicData = GetProperyValueBool(uProfile["AuthorizedToGetBasicData"].Value);
                user.AuthorizedToGetContibutionData = GetProperyValueBool(uProfile["AuthorizedToGetContibutionData"].Value);
                user.AuthorizedToGetMemberData = GetProperyValueBool(uProfile["AuthorizedToGetMemberData"].Value);
                user.SecurityAnswer = GetPropertyValueString(uProfile["SecurityAnswer"].Value);
                user.SecurityQuestion = GetPropertyValueString(uProfile["SecurityQuestion"].Value);

                return user;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Entities.User GetUser(string profile)
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                UserProfile uProfile = SPHelper.GetUserProfile(profile);

                return GetUser(uProfile);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Entities.User GetUser(int id)
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                UserProfile uProfile = SPHelper.GetUserProfile(id);

                return GetUser(uProfile);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool UserExistAdam(AdamConnetion.AdamServer adamServer, Entities.User user)
        {
            try
            {
                AdamHelper adamHelper = new AdamHelper(adamServer.ServerIP, adamServer.ServerPort, adamServer.UsersDistinguishedName, adamServer.GetCredential());

                return adamHelper.UserExist(user.UserNameWithoutMembership);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool UserExistSP(string profile)
        {
            try
            {
                SharepointHelper spHelper = new SharepointHelper(Web);
                UserProfileManager manager = spHelper.GetUserProfileManager();

                return manager.UserExists(profile) ;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Entities.User GetUserByWS(string profile, string username, string pass, string domain)
        {
            try
            {
                SharepointHelper spHelper = new SharepointHelper();
                UserProfileWS.PropertyData[] propertiesData = spHelper.GetUserProfileByWS(profile, username, pass, domain);

                Entities.User user = new CAFAM.WebPortal.Entities.User();
                foreach (UserProfileWS.PropertyData propertyData in propertiesData)
                {
                    if (propertyData.Values.Length > 0)
                    {
                        switch (propertyData.Name)
                        {
                            case "CreationDate":
                                user.CreationDate = GetPropertyValueDateTime(propertyData.Values[0].Value);
                                break;
                            case "UserType":
                                user.UserType = (Entities.EnumUserType)Enum.Parse(typeof(Entities.EnumUserType), GetPropertyValueString(propertyData.Values[0].Value));
                                break;
                            case "AccountName":
                                user.UserName = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "FirstName":
                                user.FirstName = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "SecondName":
                                user.SecondName = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "FirstSurname":
                                user.FirstSurname = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "SecondSurname":
                                user.SecondSurname = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "IdentificationType":
                                user.IdentificationType = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "IdentificationNumber":
                                user.IdentificationNumber = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "NIT":
                                user.NIT = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "SubNIT":
                                user.SubNIT = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "Audience":
                                user.Audience = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "TradeName":
                                user.TradeName = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "BirthDate":
                                user.BirthDate = GetPropertyValueDateTime(propertyData.Values[0].Value);
                                break;
                            case "MaritalState":
                                user.MaritalState = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "Ocupattion":
                                user.Ocupattion = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "CompensationFund":
                                user.CompensationFund = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "Company":
                                user.Company = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "Position":
                                user.Position = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "PrivateEmail":
                                user.PrivateEmail = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "CompanyEmail":
                                user.CompanyEmail = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "PrivateTel":
                                user.PrivateTel = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "PrivateMobile":
                                user.PrivateMobile = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "CompanyMobile":
                                user.CompanyMobile = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "CompanyTel":
                                user.CompanyTel = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "TelExtension":
                                user.TelExtension = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "AddressCombo1":
                                user.Address.AddressCombo1 = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "AddressCombo2":
                                user.Address.AddressCombo2 = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "AddressCombo3":
                                user.Address.AddressCombo3 = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "AddressCombo4":
                                user.Address.AddressCombo4 = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "AddressCombo5":
                                user.Address.AddressCombo5 = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "AddressCombo6":
                                user.Address.AddressCombo6 = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "AddressText1":
                                user.Address.AddressText1 = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "AddressText2":
                                user.Address.AddressText2 = GetPropertyValueInt(propertyData.Values[0].Value);
                                break;
                            case "AddressText3":
                                user.Address.AddressText3 = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "AddressText4":
                                user.Address.AddressText4 = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "AddressText5":
                                user.Address.AddressText5 = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "EPS":
                                user.EPS = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "ChildrenQuantity":
                                user.ChildrenQuantity = GetPropertyValueInt(propertyData.Values[0].Value);
                                break;
                            case "IncomeLevel":
                                user.IncomeLevel = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "PersonalManager":
                                user.PersonalManager = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "MarketSales":
                                user.TopicOfInterest.MarketSales = GetProperyValueBool(propertyData.Values[0].Value);
                                break;
                            case "Recreation":
                                user.TopicOfInterest.Recreation = GetProperyValueBool(propertyData.Values[0].Value);
                                break;
                            case "Education":
                                user.TopicOfInterest.Education = GetProperyValueBool(propertyData.Values[0].Value);
                                break;
                            case "Home":
                                user.TopicOfInterest.Home = GetProperyValueBool(propertyData.Values[0].Value);
                                break;
                            case "Health":
                                user.TopicOfInterest.Health = GetProperyValueBool(propertyData.Values[0].Value);
                                break;
                            case "Subsidy":
                                user.TopicOfInterest.Subsidy = GetProperyValueBool(propertyData.Values[0].Value);
                                break;
                            case "Credits":
                                user.TopicOfInterest.Credits = GetProperyValueBool(propertyData.Values[0].Value);
                                break;
                            case "AuthorizedBy":
                                user.AuthorizedBy = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "AuthorizationDate":
                                user.AuthorizationDate = GetPropertyValueDateTime(propertyData.Values[0].Value);
                                break;
                            case "AuthorizedToGetBasicData":
                                user.AuthorizedToGetBasicData = GetProperyValueBool(propertyData.Values[0].Value);
                                break;
                            case "AuthorizedToGetContibutionData":
                                user.AuthorizedToGetContibutionData = GetProperyValueBool(propertyData.Values[0].Value);
                                break;
                            case "AuthorizedToGetMemberData":
                                user.AuthorizedToGetMemberData = GetProperyValueBool(propertyData.Values[0].Value);
                                break;
                            case "SecurityAnswer":
                                user.SecurityAnswer = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                            case "SecurityQuestion":
                                user.SecurityQuestion = GetPropertyValueString(propertyData.Values[0].Value);
                                break;
                        }
                    }
                }
                return user;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void ModifyUser(Entities.User user)
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                UserProfile uProfile = SPHelper.GetUserProfile(user.UserName);

                uProfile["CreationDate"].Value = user.CreationDate;
                uProfile["UserType"].Value = user.UserType.ToString();
                uProfile["FirstName"].Value = user.FirstName;
                uProfile["SecondName"].Value = user.SecondName;
                uProfile["FirstSurname"].Value = user.FirstSurname;
                uProfile["SecondSurname"].Value = user.SecondSurname;
                uProfile["IdentificationType"].Value = user.IdentificationType;
                uProfile["IdentificationNumber"].Value = user.IdentificationNumber;
                uProfile["NIT"].Value = user.NIT;
                uProfile["SubNIT"].Value = user.SubNIT;
                uProfile["Audience"].Value = user.Audience;
                uProfile["TradeName"].Value = user.TradeName;
                uProfile["BirthDate"].Value = user.BirthDate;
                uProfile["MaritalState"].Value = user.MaritalState;
                uProfile["Ocupattion"].Value = user.Ocupattion;
                uProfile["CompensationFund"].Value = user.CompensationFund;
                uProfile["Company"].Value = user.Company;
                uProfile["Position"].Value = user.Position;
                uProfile["PrivateEmail"].Value = user.PrivateEmail;
                uProfile["CompanyEmail"].Value = user.CompanyEmail;
                uProfile["PrivateTel"].Value = user.PrivateTel;
                uProfile["PrivateMobile"].Value = user.PrivateMobile;
                uProfile["CompanyMobile"].Value = user.CompanyMobile;
                uProfile["CompanyTel"].Value = user.CompanyTel;
                uProfile["TelExtension"].Value = user.TelExtension;
                uProfile["AddressCombo1"].Value = user.Address.AddressCombo1;
                uProfile["AddressCombo2"].Value = user.Address.AddressCombo2;
                uProfile["AddressCombo3"].Value = user.Address.AddressCombo3;
                uProfile["AddressCombo4"].Value = user.Address.AddressCombo4;
                uProfile["AddressCombo5"].Value = user.Address.AddressCombo5;
                uProfile["AddressCombo6"].Value = user.Address.AddressCombo6;
                uProfile["AddressText1"].Value = user.Address.AddressText1;
                uProfile["AddressText2"].Value = user.Address.AddressText2;
                uProfile["AddressText3"].Value = user.Address.AddressText3;
                uProfile["AddressText4"].Value = user.Address.AddressText4;
                uProfile["AddressText5"].Value = user.Address.AddressText5;
                uProfile["EPS"].Value = user.EPS;
                uProfile["ChildrenQuantity"].Value = user.ChildrenQuantity;
                uProfile["IncomeLevel"].Value = user.IncomeLevel;
                uProfile["PersonalManager"].Value = user.PersonalManager;
                uProfile["MarketSales"].Value = user.TopicOfInterest.MarketSales;
                uProfile["Recreation"].Value = user.TopicOfInterest.Recreation;
                uProfile["Education"].Value = user.TopicOfInterest.Education;
                uProfile["Home"].Value = user.TopicOfInterest.Home;
                uProfile["Health"].Value = user.TopicOfInterest.Health;
                uProfile["Subsidy"].Value = user.TopicOfInterest.Subsidy;
                uProfile["Credits"].Value = user.TopicOfInterest.Credits;
                uProfile["AuthorizedBy"].Value = user.AuthorizedBy;
                uProfile["AuthorizationDate"].Value = user.AuthorizationDate;
                uProfile["AuthorizedToGetBasicData"].Value = user.AuthorizedToGetBasicData;
                uProfile["AuthorizedToGetContibutionData"].Value = user.AuthorizedToGetContibutionData;
                uProfile["AuthorizedToGetMemberData"].Value = user.AuthorizedToGetMemberData;
                uProfile["SecurityAnswer"].Value = user.SecurityAnswer;
                uProfile["SecurityQuestion"].Value = user.SecurityQuestion;

                uProfile.Commit();

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void CreateUser(Entities.User user)
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);

                UserProfileManager upManager = SPHelper.GetUserProfileManager();
                upManager.CreateUserProfile(user.UserName);

                ModifyUser(user);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void AddNewUserCompany(Entities.User user)
        {
            try
            {
                SharepointHelper spHelper = new SharepointHelper(Web);
                SPList list = spHelper.GetListItems("UserCompanyNew");

                SPListItem newItem = list.Items.Add();

                newItem["SecondName"] = user.SecondName;
                newItem["SecondSurname"] = user.SecondSurname;
                newItem["FirstName"] = user.FirstName;
                newItem["FirstSurname"] = user.FirstSurname;
                newItem["NIT"] = user.NIT;
                newItem["SubNIT"] = user.SubNIT;
                newItem["Company"] = user.Company;
                newItem["IdentificationNumber"] = user.IdentificationNumber;
                newItem["IdentificationType"] = user.IdentificationType;
                newItem["Ocupattion"] = user.Ocupattion;
                newItem["CompanyEmail"] = user.CompanyEmail;
                newItem["CompanyMobile"] = user.CompanyMobile;
                newItem["CompanyTel"] = user.CompanyTel;
                newItem["TelExtension"] = user.TelExtension;
                newItem["PersonalManager"] = user.PersonalManager;

                newItem.Update();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public System.DirectoryServices.Protocols.ResultCode CreateUserAdam(Entities.User user, AdamConnetion.AdamServer adamServer)
        {
            try
            {
                AdamHelper adamHelper = new AdamHelper(adamServer.ServerIP, adamServer.ServerPort, adamServer.UsersDistinguishedName, adamServer.GetCredential());

                return adamHelper.CreateUser(user.UserNameWithoutMembership, user.FullName, user.Password);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public System.DirectoryServices.Protocols.ResultCode AddUserToAdamGroup(Entities.User user, AdamConnetion.AdamServer adamServer, string group)
       {
            try
            {
                AdamHelper adamHelper = new AdamHelper(adamServer.ServerIP, adamServer.ServerPort, adamServer.UsersDistinguishedName, adamServer.GetCredential());

                return adamHelper.AddUserToGroup(user.UserNameWithoutMembership, group);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void DeleteUser(string profile)
        {
            try
            {
                SharepointHelper spHelper = new SharepointHelper(Web);
                UserProfileManager upManager = spHelper.GetUserProfileManager();
                upManager.RemoveUserProfile(profile);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void DeleteUserAdam(string profile, AdamConnetion.AdamServer adamServer)
        {
            try
            {
                AdamHelper adamHelper = new AdamHelper(adamServer.ServerIP, adamServer.ServerPort, adamServer.UsersDistinguishedName, adamServer.GetCredential());
                if (adamHelper.UserExist(profile))
                {
                    adamHelper.DeleteUser(profile);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public List<Entities.User> FilterUsers(List<Entities.Filter> filters)
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                List<UserProfile> upList = SPHelper.GetUserProfileList();

                List<Entities.User> listUsers = new List<Entities.User>();

                foreach (UserProfile uProfile in upList)
                {
                    if (uProfile["AccountName"] != null &&
                         uProfile["AccountName"].ToString().ToUpper().Contains(System.Configuration.ConfigurationSettings.AppSettings["ProviderName"].ToUpper()))
                    {
                        bool correctValue = true;

                        foreach (Entities.Filter filter in filters)
                        {
                            if (!OperatePropertyValue(uProfile[filter.Property].Value, filter))
                            {
                                correctValue = false;
                            }
                        }

                        if (correctValue)
                        {
                            listUsers.Add(GetUser(uProfile));
                        }
                    }
                }

                return listUsers;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<Entities.User> FilterUsers(Entities.Filter filter)
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                List<UserProfile> upList = SPHelper.GetUserProfileList();

                List<Entities.User> listUsers = new List<Entities.User>();

                foreach (UserProfile uProfile in upList)
                {
                    if (uProfile["AccountName"] != null &&
                         uProfile["AccountName"].ToString().ToUpper().Contains(System.Configuration.ConfigurationSettings.AppSettings["ProviderName"].ToUpper()))
                    {
                        if (OperatePropertyValue(uProfile[filter.Property].Value, filter))
                        {
                            listUsers.Add(GetUser(uProfile));
                        }
                    }
                }

                return listUsers;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Entities.User FilterUser(List<Entities.Filter> filters)
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                List<UserProfile> upList = SPHelper.GetUserProfileList();

                Entities.User returnUProfile = null;

                foreach (UserProfile uProfile in upList)
                {
                    if (uProfile["AccountName"] != null &&
                         uProfile["AccountName"].ToString().ToUpper().Contains(System.Configuration.ConfigurationSettings.AppSettings["ProviderName"].ToUpper()))
                    {
                        bool correctValue = true;

                        foreach (Entities.Filter filter in filters)
                        {
                            if (!OperatePropertyValue(uProfile[filter.Property].Value, filter))
                            {
                                correctValue = false;
                            }
                        }

                        if (correctValue)
                        {
                            returnUProfile = GetUser(uProfile);
                            break;
                        }
                    }
                }

                return returnUProfile;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Entities.User FilterUser(Entities.Filter filter)
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                List<UserProfile> upList = SPHelper.GetUserProfileList();

                Entities.User returnUProfile = null;

                foreach (UserProfile uProfile in upList)
                {
                    if (uProfile["AccountName"] != null &&
                         uProfile["AccountName"].ToString().ToUpper().Contains(System.Configuration.ConfigurationSettings.AppSettings["ProviderName"].ToUpper()))
                    {
                        if (OperatePropertyValue(uProfile[filter.Property].Value, filter))
                        {
                            returnUProfile = GetUser(uProfile);
                            break;
                        }
                    }
                }

                return returnUProfile;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private bool OperatePropertyValue(object value, Entities.Filter filter)
        {
            try
            {
                bool resultBool = false;

                if (value != null)
                {
                    switch (value.GetType().Name)
                    {
                        case "String":
                            string stringValue = GetPropertyValueString(value);
                            string filterValue = GetPropertyValueString(filter.Value);

                            switch (filter.OperatorType)
                            {

                                case Entities.EnumOperator.Like :
                                    if (stringValue.ToUpper().Contains (filterValue.ToUpper()))
                                    {
                                        resultBool = true;
                                    }
                                    break;
                                
                                case Entities.EnumOperator.Equal :
                                     if (stringValue.ToUpper() == filterValue.ToUpper())
                                    {
                                        resultBool = true;
                                    }
                                    break;

                                case Entities.EnumOperator.NotEqual:
                                    if (stringValue.ToUpper() != filterValue.ToUpper())
                                    {
                                        resultBool = true;
                                    }
                                    break;
                                default:
                                    if (stringValue.ToUpper() == filterValue.ToUpper())
                                    {
                                        resultBool = true;
                                    }
                                    break;
                            }
                            break;
                        case "Int32":
                            {
                                int? intVaue = GetPropertyValueInt(value);
                                int? intFilter = GetPropertyValueInt(filter.Value);

                                switch (filter.OperatorType)
                                {
                                    case Entities.EnumOperator.Equal:
                                        if (intVaue == intFilter)
                                        {
                                            resultBool = true;
                                        }
                                        break;
                                    case Entities.EnumOperator.GreaterThan:
                                        if (intVaue > intFilter)
                                        {
                                            resultBool = true;
                                        }
                                        break;
                                    case Entities.EnumOperator.GreaterThanOrEqual:
                                        if (intVaue >= intFilter)
                                        {
                                            resultBool = true;
                                        }
                                        break;
                                    case Entities.EnumOperator.LessThan:
                                        if (intVaue < intFilter)
                                        {
                                            resultBool = true;
                                        }
                                        break;
                                    case Entities.EnumOperator.LessThanOrEqual:
                                        if (intVaue <= intFilter)
                                        {
                                            resultBool = true;
                                        }
                                        break;
                                    case Entities.EnumOperator.NotEqual:
                                        if (intVaue != intFilter)
                                        {
                                            resultBool = true;
                                        }
                                        break;
                                }
                                break;
                            }
                        case "Boolean":
                            {
                                bool? boolValue = GetProperyValueBool(value, true);
                                bool? boolFilter = GetProperyValueBool(filter.Value, true);

                                switch (filter.OperatorType)
                                {
                                    case Entities.EnumOperator.NotEqual:
                                        {
                                            if (boolValue != boolFilter)
                                            {
                                                resultBool = true;
                                            }
                                        }
                                        break;
                                    default:
                                        {
                                            if (boolValue == boolFilter)
                                            {
                                                resultBool = true;
                                            }
                                            break;
                                        }
                                }
                                break;
                            }
                        case "DateTime":
                            {
                                DateTime? dateTimeValue = GetPropertyValueDateTime(value);
                                DateTime? dateTimeFilter = GetPropertyValueDateTime(filter.Value);

                                switch (filter.OperatorType)
                                {
                                    case Entities.EnumOperator.Equal:
                                        if (dateTimeValue == dateTimeFilter)
                                        {
                                            resultBool = true;
                                        }
                                        break;
                                    case Entities.EnumOperator.GreaterThan:
                                        if (dateTimeValue > dateTimeFilter)
                                        {
                                            resultBool = true;
                                        }
                                        break;
                                    case Entities.EnumOperator.GreaterThanOrEqual:
                                        if (dateTimeValue >= dateTimeFilter)
                                        {
                                            resultBool = true;
                                        }
                                        break;
                                    case Entities.EnumOperator.LessThan:
                                        if (dateTimeValue < dateTimeFilter)
                                        {
                                            resultBool = true;
                                        }
                                        break;
                                    case Entities.EnumOperator.LessThanOrEqual:
                                        if (dateTimeValue <= dateTimeFilter)
                                        {
                                            resultBool = true;
                                        }
                                        break;
                                    case Entities.EnumOperator.NotEqual:
                                        if (dateTimeValue != dateTimeFilter)
                                        {
                                            resultBool = true;
                                        }
                                        break;
                                }
                                break;
                            }
                    }
                }
                else
                {
                    resultBool = false;
                }

                return resultBool;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private string GetPropertyValueString(object value)
        {
            try
            {
                if (value != null)
                {
                    return value.ToString();
                }
                return null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private int? GetPropertyValueInt(object value)
        {
            try
            {
                int intOut;
                if (value != null)
                {
                    if (int.TryParse(value.ToString(), out intOut))
                    {
                        return intOut;
                    }
                }
                return null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private bool GetProperyValueBool(object value)
        {
            try
            {
                bool boolOut = new bool();
                if (value != null)
                {
                    bool.TryParse(value.ToString(), out boolOut);
                }
                return boolOut;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private bool? GetProperyValueBool(object value, bool allowNullReturn)
        {
            try
            {
                bool boolOut = false;

                bool? returnBool = null;

                if (value != null)
                {
                    if (bool.TryParse(value.ToString(), out boolOut))
                    {
                        returnBool = boolOut;
                    }
                }
                return returnBool;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private DateTime? GetPropertyValueDateTime(object value)
        {
            try
            {
                DateTime dateTime;

                if (value != null)
                {
                    if (DateTime.TryParse(value.ToString(), out dateTime))
                    {
                        return dateTime;
                    }
                }
                return null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
