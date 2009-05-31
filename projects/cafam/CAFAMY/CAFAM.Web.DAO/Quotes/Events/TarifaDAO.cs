using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.DAO.Quotes.Events
{
    public class TarifaDAO : ListsBaseDAO
    {
        protected override string ListName
        {
            get { return "Cotizador Eventos - Tarfias"; }
        }

        public TarifaDAO(SPWeb web)
        {
            Web = web;
        }
    }
}
