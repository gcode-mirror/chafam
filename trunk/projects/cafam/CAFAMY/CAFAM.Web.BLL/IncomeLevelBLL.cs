using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.SharePoint;
using System.Data;

namespace CAFAM.WebPortal.BLL
{
    public class IncomeLevelBLL
    {
        private SPWeb Web;

        public IncomeLevelBLL(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetIncomeLevelList()
        {
            try
            {
                DAO.IncomeLevelDAO incomeLevelDAO = new CAFAM.WebPortal.DAO.IncomeLevelDAO(Web);
                return incomeLevelDAO.GetIncomeLevelList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
