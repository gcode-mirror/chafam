using System;
using System.Collections.Generic;
using System.Text;

namespace CAFAM.WebPortal.Entities
{
    [Serializable]
    public class Address
    {
        public string AddressCombo1 { get; set; }
        public string AddressCombo2 { get; set; }
        public string AddressCombo3 { get; set; }
        public string AddressCombo4 { get; set; }
        public string AddressCombo5 { get; set; }
        public string AddressCombo6 { get; set; }
        public string AddressText1 { get; set; }
        public int? AddressText2 { get; set; }
        public string AddressText3 { get; set; }
        public string AddressText4 { get; set; }
        public string AddressText5 { get; set; }
        public string AddressFull
        {
            get
            {
                StringBuilder strBuilder = new StringBuilder();
                if (!string.IsNullOrEmpty(AddressCombo1))
                {
                    strBuilder.Append(AddressCombo1 + " ");
                }
                if (!string.IsNullOrEmpty(AddressText1))
                {
                    strBuilder.Append(AddressText1 + " ");
                }
                if (!string.IsNullOrEmpty(AddressCombo2))
                {
                    strBuilder.Append(AddressCombo2 + " ");
                }
                if (!string.IsNullOrEmpty(AddressCombo3))
                {
                    strBuilder.Append(AddressCombo3 + " ");
                }
                if (AddressText2 != null)
                {
                    strBuilder.Append(AddressText2.ToString() + " ");
                }
                if (!string.IsNullOrEmpty(AddressCombo4))
                {
                    strBuilder.Append(AddressCombo4 + " ");
                }
                if (!string.IsNullOrEmpty(AddressText3)) 
                {
                    strBuilder.Append(AddressText3 + " ");
                }
                if (!string.IsNullOrEmpty(AddressCombo5))
                {
                    strBuilder.Append(AddressCombo5 + " ");
                }
                if (!string.IsNullOrEmpty(AddressText4))
                {
                    strBuilder.Append(AddressText4 + " ");
                }
                if (!string.IsNullOrEmpty(AddressCombo6))
                {
                    strBuilder.Append(AddressCombo6 + " ");
                }
                if (!string.IsNullOrEmpty(AddressText5))
                {
                    strBuilder.Append(AddressText5);
                }
                return strBuilder.ToString().Trim();
            }
        }
    }
}
