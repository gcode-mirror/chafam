using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.SharePoint;
using System.Data;

namespace CAFAM.WebPortal.DAO.Quotes.Events
{
    public class AlojamientoDAO : ListsBaseDAO
    {
        protected override string ListName
        {
            get { return "Cotizador Eventos - Tipo de Alojamiento" ; }
        }

        public AlojamientoDAO(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetAlojamientoListByDestino(string destino)
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                SPList list = SPHelper.GetListItems(ListName);
                SPQuery query = new SPQuery();
                query.Query = string.Format("<Where><Eq><FieldRef Name='Destino' /><Value Type='Lookup'>'{0}'</Value></Eq></Where>", destino);
                return list.GetItems(query).GetDataTable().DataSet;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
