using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.DAO
{
    public class MaritalStateDAO
    {
        private SPWeb Web;

        public MaritalStateDAO(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetMaritalStateList()
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                return SPHelper.GetListDataSet("MaritalState");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
