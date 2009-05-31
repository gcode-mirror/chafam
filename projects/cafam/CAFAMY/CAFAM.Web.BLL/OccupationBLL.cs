using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.BLL
{
    public class OccupationBLL
    {
        private SPWeb Web;

        public OccupationBLL(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetOccupationList()
        {
            try
            {
                DAO.OccupationDAO occupationDAO = new CAFAM.WebPortal.DAO.OccupationDAO(Web);
                return occupationDAO.GetOccupationList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
