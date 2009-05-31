using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.BLL
{
    public class IdentificationTypeBLL
    {
        private SPWeb Web;

        public IdentificationTypeBLL(SPWeb web)
        {
            Web = web;
        }

        public DataSet GetIdentificationTypeList()
        {
            try
            {
                DAO.IdentificationTypeDAO identificationTypeDAO = new DAO.IdentificationTypeDAO(Web);
                return identificationTypeDAO.GetIdentificationTypeList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Entities.SPListItemIdentificationType GetIdentificationTypeItem(string text, bool isValue)
        {
            try
            {
                Entities.SPListItemIdentificationType returnListItem = null;
                if (isValue)
                {
                    DAO.IdentificationTypeDAO identificationtTypeDAO = new CAFAM.WebPortal.DAO.IdentificationTypeDAO(Web);
                    SPList spList = identificationtTypeDAO.GetIdentificationTypeSPList();

                    SPQuery spQuery = new SPQuery();
                    spQuery.Query = string.Format("<Where><Eq><FieldRef Name='Value'/><Value Type='Text'>{0}</Value></Eq></Where>", text);

                    SPListItemCollection spListItems = spList.GetItems(spQuery);

                    if (spListItems.Count != 0)
                    {
                        returnListItem = new CAFAM.WebPortal.Entities.SPListItemIdentificationType(spListItems[0]["Title"].ToString(), spListItems[0]["Value"]);

                    }
                }
                else
                {
                    returnListItem = GetIdentificationTypeItem(text);
                }

                return returnListItem;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Entities.SPListItemIdentificationType GetIdentificationTypeItem(string text)
        {
            try
            {
                Entities.SPListItemIdentificationType returnListItem = null;
                DAO.IdentificationTypeDAO identificationtTypeDAO = new CAFAM.WebPortal.DAO.IdentificationTypeDAO(Web);
                SPList spList = identificationtTypeDAO.GetIdentificationTypeSPList();

                SPQuery spQuery = new SPQuery();
                spQuery.Query = string.Format("<Where><Eq><FieldRef Name='Title' /><Value Type='Text'>{0}</Value></Eq></Where>", text);

                SPListItemCollection spListItems = spList.GetItems(spQuery);

                if (spListItems.Count != 0)
                {
                    returnListItem = new CAFAM.WebPortal.Entities.SPListItemIdentificationType(spListItems[0]["Title"].ToString(), spListItems[0]["Value"]);
                    
                }
                return returnListItem;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
