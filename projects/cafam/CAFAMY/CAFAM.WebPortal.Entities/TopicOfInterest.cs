using System;
using System.Collections.Generic;
using System.Text;

namespace CAFAM.WebPortal.Entities
{
    [Serializable]
    public class TopicOfInterest
    {
        public bool MarketSales { get; set; }
        public bool Recreation { get; set; }
        public bool Education { get; set; }
        public bool Home { get; set; }
        public bool Health { get; set; }
        public bool Subsidy { get; set; }
        public bool Credits { get; set; }
    }
}
