using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.BLL
{
    public class MaritalStateBLL
    {
        private SPWeb Web;

        public MaritalStateBLL(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetMaritalStateList()
        {
            try
            {
                DAO.MaritalStateDAO maritalStateDAO = new CAFAM.WebPortal.DAO.MaritalStateDAO(Web);
                return maritalStateDAO.GetMaritalStateList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
