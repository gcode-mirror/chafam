using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.DAO.Quotes
{
    abstract public class ListsBaseDAO
    {
        protected SPWeb Web { get; set; }
        abstract protected string ListName
        {
            get;
        }

        public System.Data.DataSet GetList()
        {
            try
            {
                SharepointHelper SPHelper = new SharepointHelper(Web);
                return SPHelper.GetListDataSet(ListName);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
