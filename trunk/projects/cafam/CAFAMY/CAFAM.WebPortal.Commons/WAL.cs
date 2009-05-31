/*
        Webconfig Access Layer
 *      Esta capa intermedia sirve para obtener keys o informacion almacenada en 
 *      varias keys del web.config con la idea de implementar encriptamiento en el futuro
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;

namespace CAFAM.WebPortal.Commons
{
    public class WAL
    {
        static public string GetEncKey(string sKeyName)
        {
            string sKeyValue = ConfigurationSettings.AppSettings[sKeyName];
            if (!string.IsNullOrEmpty(sKeyValue))
                return DecodeKey(sKeyValue);

            return null;
        }

        static private string DecodeKey(string sKeyValue)
        {
            return sKeyValue;
        }
    }
}
