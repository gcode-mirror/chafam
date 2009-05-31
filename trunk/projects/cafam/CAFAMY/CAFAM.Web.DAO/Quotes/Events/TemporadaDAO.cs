using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.DAO.Quotes.Events
{
    public class TemporadaDAO : ListsBaseDAO
    {
        protected override string ListName
        {
            get { return "Cotizador Eventos - Temporada"; }
        }

        public TemporadaDAO(SPWeb web)
        {
            Web = web;
        }
    }
}
