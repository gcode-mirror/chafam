using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.SharePoint;
using System.Data;

namespace CAFAM.WebPortal.DAO
{
    public class UserCompanyNewDAO
    {
        private SPWeb Web;

        public UserCompanyNewDAO(SPWeb web)
        {
            Web = web;
        }

        public bool ExistsCompanyInList(string nit, string subnit)
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                SPList list = SPHelper.GetListItems("UserCompanyNew");

                SPQuery query = new SPQuery();

                query.Query = string.Format("<Where><And><Eq><FieldRef Name='NIT'/><Value Type='Text'>{0}</Value></Eq><Eq><FieldRef Name='SubNIT'/><Value Type='Text'>{1}</Value></Eq></And></Where>", nit, subnit);

                return (list.GetItems(query).Count > 0);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool ExistsIdentificationInList(string identificationType, string identificationNumber)
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                SPList list = SPHelper.GetListItems("UserCompanyNew");

                SPQuery query = new SPQuery();

                query.Query = string.Format("<Where><And><Eq><FieldRef Name='IdentificationType'/><Value Type='Text'>{0}</Value></Eq><Eq><FieldRef Name='IdentificationNumber'/><Value Type='Text'>{1}</Value></Eq></And></Where>", identificationType, identificationNumber);

                return (list.GetItems(query).Count > 0);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
