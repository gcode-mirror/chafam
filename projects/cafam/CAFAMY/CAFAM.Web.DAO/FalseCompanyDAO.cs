using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.DAO
{
    public class FalseCompanyDAO
    {
        private SPWeb Web;

        public FalseCompanyDAO(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetFalseCompanyList()
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                return SPHelper.GetListDataSet("FalseCompany");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
