using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.DAO
{
    public class IdentificationTypeDAO
    {
        private SPWeb Web;

        public IdentificationTypeDAO(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetIdentificationTypeList()
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                return SPHelper.GetListDataSet("IdentificationType");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public SPList GetIdentificationTypeSPList()
        {
            try
            {
                SharepointHelper SPHelpter = new SharepointHelper(Web);
                return SPHelpter.GetListItems("IdentificationType");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
