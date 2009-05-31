using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.BLL
{
    public class EPSBLL
    {
        private SPWeb Web;

        public EPSBLL(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetEPSList()
        {
            try
            {
                DAO.EPSDAO ePSDAO = new CAFAM.WebPortal.DAO.EPSDAO(Web);
                return ePSDAO.GetEPSList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
