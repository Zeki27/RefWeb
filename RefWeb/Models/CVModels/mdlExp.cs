using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RefWeb.Models.CVModels
{
    public class mdlExp
    {
        public int ExpId { get; private set; }
        public string ExpHun { get; private set; }
        public string ExpEng { get; private set; }
        public int ExpUId { get; private set; }

        public mdlExp(int expid, string expnamehun, string expnameeng, int expuid)
        {
            ExpId = expid;
            ExpHun = expnamehun;
            ExpEng = expnameeng;
            ExpUId = expuid;
        }
    }
}