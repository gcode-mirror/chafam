using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;
using Microsoft.Office.Server.UserProfiles;
using Microsoft.Office.Server;
using System.Web;
using CAFAM.WebPortal.Commons;

namespace CAFAM.WebPortal.DAO
{
    internal class SharepointHelper
    {
        protected SPWeb Web;

        public SharepointHelper(SPWeb web)
        {
            Web = web;
        }

        public SharepointHelper()
        {
        }

        public SPList GetListItems(string listName)
        {
            try
            {               
                SPList list = Web.Lists[listName];
                return list;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataSet GetListDataSet(string listName)
        {
            try
            {
                DataSet dataSet = new DataSet();
                SPList list = GetListItems(listName);
                SPView view = list.Views["All Items"];

                if (view != null && view.ViewFields.ToStringCollection().Contains("Title"))
                {
                    dataSet.Merge(list.GetItems(view).GetDataTable());
                }
                else
                {
                    dataSet.Merge(list.Items.GetDataTable());
                }

                return dataSet;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public UserProfile GetUserProfile(string profile)
        {
            try
            {           
                UserProfile uProfile = null;
                SPSecurity.RunWithElevatedPrivileges(delegate()
                {
                    SPSite sc = new SPSite(Web.Site.ID);
                    ServerContext context = ServerContext.GetContext(sc);
                    HttpContext currentContext = HttpContext.Current;
                    HttpContext.Current = null;
                    UserProfileManager profileManager = new UserProfileManager(context);
                    uProfile = profileManager.GetUserProfile(profile);
                    HttpContext.Current = currentContext;
                });
                return uProfile;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public UserProfile GetUserProfile(int id)
        {
            try
            {
                return GetUserProfile(Web.Users.GetByID(id).LoginName);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public UserProfileWS.PropertyData[] GetUserProfileByWS(string profile, string user, string pass, string domain)
        {
            try
            {
                UserProfileWS.UserProfileService upService = new CAFAM.WebPortal.DAO.UserProfileWS.UserProfileService();
                upService.Credentials = new System.Net.NetworkCredential(user, pass, domain);
                return upService.GetUserProfileByName(profile);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public UserProfileManager GetUserProfileManager()
        {
            try
            {
                UserProfileManager profileManager = null;
                SPSecurity.RunWithElevatedPrivileges(delegate()
                {
                    using (SPSite sc = new SPSite(Web.Site.ID))
                    {
                        ServerContext context = ServerContext.GetContext(sc);
                        HttpContext currentContext = HttpContext.Current;
                        HttpContext.Current = null;
                        profileManager = new UserProfileManager(context);
                        HttpContext.Current = currentContext;
                    }
                });

                return profileManager;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<UserProfile> GetUserProfileList()
        {
            try
            {
                UserProfileManager upManager = GetUserProfileManager();
                List<UserProfile> upList = new List<UserProfile>();

                foreach(UserProfile uProfile in upManager)
                {
                    upList.Add(uProfile);
                }

                return upList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
