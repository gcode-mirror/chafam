using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.BLL.Quotes.Events
{
    public class TemporadaBLL
    {
        private SPWeb Web;

        public TemporadaBLL(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetTemporadaList()
        {
            try
            {
                DAO.Quotes.Events.TemporadaDAO temporadaDAO = new CAFAM.WebPortal.DAO.Quotes.Events.TemporadaDAO(Web);
                return temporadaDAO.GetList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
