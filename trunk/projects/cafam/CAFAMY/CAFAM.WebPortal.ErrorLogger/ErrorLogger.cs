using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Logging;

namespace CAFAM.WebPortal.ErrorLogger
{
    public static class ErrorLogger
    {
        public static void Log(Exception ex, ref System.Web.UI.WebControls.Label label)
        {
            Log(ex, ref label, false);
        }

        public static void Log(Exception ex, ref System.Web.UI.WebControls.Label label, string logInEventId)
        {
            bool boolOut = false;

            if (!string.IsNullOrEmpty(logInEventId))
            {
                bool.TryParse(logInEventId.ToLower(), out boolOut);
            }

            Log(ex, ref label, boolOut);
        }

        public static void Log(Exception ex, ref System.Web.UI.WebControls.Label label, bool logInEventId)
        {
            label.Text = "ERROR: " + ex.Message;
            label.Visible = true;

            if (logInEventId)
            {
                Logger.Write(ex.Message);
            }
        }
    }
}
