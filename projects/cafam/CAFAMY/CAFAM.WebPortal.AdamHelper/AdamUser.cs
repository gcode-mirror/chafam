using System;
using System.Collections.Generic;
using System.Text;

namespace CAFAM.WebPortal.AdamConnetion
{
    public class AdamUser
    {
        public string LoginName { get; set; }
        public string DistinguishedName { get; set; }
        public string FullName { get; set; }
        public List<string> Groups { get; set; }
    }
}
