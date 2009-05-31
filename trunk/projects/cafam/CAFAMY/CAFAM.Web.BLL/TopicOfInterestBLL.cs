using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.SharePoint;
using System.Data;

namespace CAFAM.WebPortal.BLL
{
    public class TopicOfInterestBLL
    {
        private SPWeb Web;

        public TopicOfInterestBLL(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetTopicOfInterestList()
        {
            try
            {
                DAO.TopicOfInterestDAO topicOfInterestDAO = new DAO.TopicOfInterestDAO(Web);
                return topicOfInterestDAO.GetTopicOfInterestList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
