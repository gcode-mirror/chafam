using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.DAO
{
    public class CompensationFundDAO
    {
        private SPWeb Web;

        public CompensationFundDAO(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetCompensationFundList()
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                return SPHelper.GetListDataSet("CompensationFund");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
