using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.BLL.Quotes.Events
{
    public class AcomodacionBLL
    {
        private SPWeb Web;

        public AcomodacionBLL(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetAcomodacionList()
        {
            try
            {
                DAO.Quotes.Events.AcomodacionDAO acomodacionDAO = new CAFAM.WebPortal.DAO.Quotes.Events.AcomodacionDAO(Web);
                return acomodacionDAO.GetList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataSet GetAcomodacionListByAlojamientoAndPeopleQuantity(string alojamiento, string max, string min)
        {
            try
            {
                DAO.Quotes.Events.AcomodacionDAO acomodacionDAO = new CAFAM.WebPortal.DAO.Quotes.Events.AcomodacionDAO(Web);
                return acomodacionDAO.GetAcomodacionListByAlojamientoAndPeopleQuantity(alojamiento, max, min);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
