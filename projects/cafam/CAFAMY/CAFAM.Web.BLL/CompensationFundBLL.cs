using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.BLL
{
    public class CompensationFundBLL
    {
        private SPWeb Web;

        public CompensationFundBLL(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetCompensationFundList()
        {
            try
            {
                DAO.CompensationFundDAO compensationFundDAO = new DAO.CompensationFundDAO(Web);
                return compensationFundDAO.GetCompensationFundList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
