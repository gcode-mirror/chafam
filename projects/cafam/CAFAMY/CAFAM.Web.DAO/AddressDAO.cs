using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.DAO
{
    public class AddressDAO
    {
        private SPWeb Web;

        public AddressDAO(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetAddressList()
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                return SPHelper.GetListDataSet("AddressList");
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
                SharepointHelper SPHelper = new SharepointHelper(Web);
                return SPHelper.GetListDataSet("AddressListLetter");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
