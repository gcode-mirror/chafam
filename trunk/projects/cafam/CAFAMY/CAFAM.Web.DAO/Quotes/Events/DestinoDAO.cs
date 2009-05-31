using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.DAO.Quotes.Events
{
    public class DestinoDAO : ListsBaseDAO
    {
        protected override string ListName
        {
            get { return "Cotizador Eventos - Destino"; }
        }

        public DestinoDAO(SPWeb web)
        {
            Web = web;
        }
    }
}
