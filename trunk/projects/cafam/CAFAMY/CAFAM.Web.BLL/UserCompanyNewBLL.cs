using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.BLL
{
    public class UserCompanyNewBLL
    {
        private SPWeb Web;

        public UserCompanyNewBLL(SPWeb web)
        {
            Web = web;
        }

        public bool ExistsIdentificationInList(string identificationType, string identificationNumber)
        {
            try
            {
                DAO.UserCompanyNewDAO userCompanyNewDAO = new DAO.UserCompanyNewDAO(Web);
                return userCompanyNewDAO.ExistsIdentificationInList(identificationType, identificationNumber);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
