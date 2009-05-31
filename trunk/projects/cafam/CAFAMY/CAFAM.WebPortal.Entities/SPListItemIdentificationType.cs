using System;
using System.Collections.Generic;
using System.Text;

namespace CAFAM.WebPortal.Entities
{
    public class SPListItemIdentificationType: Entities.SPListItemCustom
    {
        public int? Value
        {
            get
            {
                return GetPropertyValueInt();
            }
        }

        public SPListItemIdentificationType(string pText, object pValue)
        {
            _title = pText;
            _value = pValue;
        }
    }
}
