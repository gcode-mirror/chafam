using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.BLL
{
    public class AddressBLL
    {
        private SPWeb Web;

        public AddressBLL(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetAddressList()
        {
            try
            {
                DAO.AddressDAO addressDAO = new DAO.AddressDAO(Web);
                return addressDAO.GetAddressList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataSet GetAddressListLetter()
        {
            try
            {
                DAO.AddressDAO addressDAO = new DAO.AddressDAO(Web);
                return addressDAO.GetAddressListLetter();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
