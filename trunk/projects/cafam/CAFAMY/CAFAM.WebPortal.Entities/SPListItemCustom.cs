using System;
using System.Collections.Generic;
using System.Text;

namespace CAFAM.WebPortal.Entities
{
    public class SPListItemCustom
    {
        protected string _title;
        protected object _value;
        
        public string Title 
        {
            get
            {
                return _title;
            }
        }

        protected string GetPropertyValueString()
        {
            try
            {
                if (_value != null)
                {
                    return _value.ToString();
                }
                return null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected int? GetPropertyValueInt()
        {
            try
            {
                int intOut;
                if (_value != null)
                {
                    if (int.TryParse(_value.ToString(), out intOut))
                    {
                        return intOut;
                    }
                }
                return null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected bool? GetProperyValueBool()
        {
            try
            {
                bool boolOut = false;

                bool? returnBool = null;

                if (_value != null)
                {
                    if (bool.TryParse(_value.ToString(), out boolOut))
                    {
                        returnBool = boolOut;
                    }
                }
                return returnBool;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected DateTime? GetPropertyValueDateTime()
        {
            try
            {
                DateTime dateTime;

                if (_value != null)
                {
                    if (DateTime.TryParse(_value.ToString(), out dateTime))
                    {
                        return dateTime;
                    }
                }
                return null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
