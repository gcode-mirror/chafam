using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.BLL.Quotes.Events
{
    public class TipoPlanBLL
    {
        private SPWeb Web;

        public TipoPlanBLL(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetTipoPlanList()
        {
            try
            {
                DAO.Quotes.Events.TipoPlanDAO tipoPlanDAO = new CAFAM.WebPortal.DAO.Quotes.Events.TipoPlanDAO(Web);
                return tipoPlanDAO.GetList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataSet GetTipoPlanListByAlojamientoAndPeopleQuantity(string alojamiento, string max, string min)
        {
            try
            {
                DAO.Quotes.Events.TipoPlanDAO tipoPlanDAO = new CAFAM.WebPortal.DAO.Quotes.Events.TipoPlanDAO(Web);
                return tipoPlanDAO.GetTipoPlanListByAlojamientoAndPeopleQuantity(alojamiento, max, min);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
