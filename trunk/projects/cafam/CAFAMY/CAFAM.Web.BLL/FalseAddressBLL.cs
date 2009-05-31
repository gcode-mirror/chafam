using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.BLL
{
    public class FalseAddressBLL
    {
        private SPWeb Web;

        public FalseAddressBLL(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetFalseAddressList()
        {
            try
            {
                DAO.FalseAddressDAO falseAddressDAO = new DAO.FalseAddressDAO(Web);
                return falseAddressDAO.GetFalseAddressList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
