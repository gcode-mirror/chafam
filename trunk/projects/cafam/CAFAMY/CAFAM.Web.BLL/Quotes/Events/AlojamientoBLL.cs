using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.BLL.Quotes.Events
{
    public class AlojamientoBLL
    {
        private SPWeb Web;

        public AlojamientoBLL(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetAlojamientoList()
        {
            try
            {
                DAO.Quotes.Events.AlojamientoDAO alojamientoDAO = new CAFAM.WebPortal.DAO.Quotes.Events.AlojamientoDAO(Web);
                return alojamientoDAO.GetList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataSet GetAlojamientoListByDestino(string destino)
        {
            try
            {
                DAO.Quotes.Events.AlojamientoDAO alojamientoDAO = new CAFAM.WebPortal.DAO.Quotes.Events.AlojamientoDAO(Web);
                return alojamientoDAO.GetAlojamientoListByDestino(destino);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
