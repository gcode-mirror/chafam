using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.SharePoint;
using System.Data;

namespace CAFAM.WebPortal.DAO
{
    [Serializable]
    public class TopicOfInterestDAO
    {
        private SPWeb Web;

        public TopicOfInterestDAO(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetTopicOfInterestList()
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                return SPHelper.GetListDataSet("TopicOfInterest");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
