using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.SharePoint;
using System.Data;

namespace CAFAM.WebPortal.DAO.Quotes.Events
{
    public class TipoPlanDAO : ListsBaseDAO
    {
        protected override string ListName
        {
            get { return "Cotizador Eventos - Tipo de Plan"; }
        }

        public TipoPlanDAO(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetTipoPlanListByAlojamientoAndPeopleQuantity(string alojamiento, string max, string min)
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                SPList list = SPHelper.GetListItems(ListName);
                SPQuery query = new SPQuery();
                query.Query = string.Format("<Where><And><Eq><FieldRef Name='Tipo de Alojamiento' /><Value Type='Lookup'>'{0}'</Value></Eq><And><FieldRef Name='Cantidad de Personas Mínimo' /><Value Type='Number'>{1}</Value><FieldRef Name='Cantidad de Personas Máximo' /><Value Type='Number'>{2}</Value></And></And></Where>"
                    , alojamiento, max, min);
                return list.GetItems(query).GetDataTable().DataSet;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
