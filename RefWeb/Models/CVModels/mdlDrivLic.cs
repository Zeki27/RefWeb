using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RefWeb.Models.CVModels
{
    public class mdlDrivLic
    {
        public int DLId { get; private set; }
        public string DLCat { get; private set; }
        public string DLAcDate { get; private set; }
        public string DLExDate { get; private set; }
        public int DLUId { get; private set; }

        public mdlDrivLic(int dlid, string dlcat, string dlacdate, string dlexdate, int dluid)
        {
            DLId = dlid;
            DLCat = dlcat;
            DLAcDate = dlacdate;
            DLExDate = dlexdate;
            DLUId = dluid;
        }
    }
}