using System;
using System.Collections.Generic;
using System.Text;
namespace CAFAM.WebPortal.Entities
{
    public class Filter
    {
        public string Property { get; set; }
        public object Value { get; set; }
        public EnumOperator OperatorType { get; set; }

        public Filter (string property, object value, EnumOperator operatorType)
        {
            Property = property;
            Value = value;
            OperatorType = operatorType;
        }
    }
}
