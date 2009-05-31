using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.DAO
{
    public class OccupationDAO
    {
        private SPWeb Web;

        public OccupationDAO(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetOccupationList()
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                return SPHelper.GetListDataSet("Position");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
