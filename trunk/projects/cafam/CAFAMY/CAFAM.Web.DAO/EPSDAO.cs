using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.DAO
{
    public class EPSDAO
    {
        private SPWeb Web;

        public EPSDAO(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetEPSList()
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                return SPHelper.GetListDataSet("EPS");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
