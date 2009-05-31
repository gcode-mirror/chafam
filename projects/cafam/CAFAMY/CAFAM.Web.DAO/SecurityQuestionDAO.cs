using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.SharePoint;
using System.Data;

namespace CAFAM.WebPortal.DAO
{
    public class SecurityQuestionDAO
    {
        private SPWeb Web;

        public SecurityQuestionDAO(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetSecurityQuestionList()
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                return SPHelper.GetListDataSet("SecurityQuestion");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
