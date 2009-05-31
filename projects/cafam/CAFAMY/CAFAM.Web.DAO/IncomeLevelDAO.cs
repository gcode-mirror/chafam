using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.DAO
{
    public class IncomeLevelDAO
    {
        private SPWeb Web;

        public IncomeLevelDAO(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetIncomeLevelList()
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                return SPHelper.GetListDataSet("IncomeLevel");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
