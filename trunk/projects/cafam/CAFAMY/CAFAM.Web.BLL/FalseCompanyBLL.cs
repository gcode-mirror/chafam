using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.BLL
{
    public class FalseCompanyBLL
    {
        private SPWeb Web;

        public FalseCompanyBLL(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetFalseCompanyList()
        {
            try
            {
                DAO.FalseCompanyDAO falseCompanyDAO = new DAO.FalseCompanyDAO(Web);
                return falseCompanyDAO.GetFalseCompanyList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
