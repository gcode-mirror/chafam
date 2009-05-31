using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.DAO
{
    public class FalseAddressDAO
    {
        private SPWeb Web;

        public FalseAddressDAO(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetFalseAddressList()
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                return SPHelper.GetListDataSet("FalseAddress");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
