using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.BLL.Quotes.Events
{
    public class DestinoBLL
    {
        private SPWeb Web;

        public DestinoBLL(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetDestinoList()
        {
            try
            {
                DAO.Quotes.Events.DestinoDAO destinoDAO = new CAFAM.WebPortal.DAO.Quotes.Events.DestinoDAO(Web);
                return destinoDAO.GetList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
