using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.SharePoint;
using System.Data;

namespace CAFAM.WebPortal.BLL
{
    public class SecurityQuestionBLL
    {
        private SPWeb Web;

        public SecurityQuestionBLL(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetSecurityQuestionList()
        {
            try
            {
                DAO.SecurityQuestionDAO securityQuestionDAO = new CAFAM.WebPortal.DAO.SecurityQuestionDAO(Web);
                return securityQuestionDAO.GetSecurityQuestionList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
