using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.BLL.Quotes.Events
{
    public class TarifaBLL
    {
        private SPWeb Web;

        public TarifaBLL(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetTarifaList()
        {
            try
            {
                DAO.Quotes.Events.TarifaDAO tarifaDAO = new CAFAM.WebPortal.DAO.Quotes.Events.TarifaDAO(Web);
                return tarifaDAO.GetList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
