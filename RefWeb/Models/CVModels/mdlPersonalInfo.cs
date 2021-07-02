using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RefWeb.Models.CVModels
{
    public class mdlPersonalInfo
    {
        public int PiId { get; private set; }
        public string PiName { get; private set; }
        public string PiBirthP { get; private set; }
        public string PiBirtht { get; private set; }
        public string PiAddress { get; private set; }
        public string PiPhone { get; private set; }
        public string PiEmail { get; private set; }
        public int PiUId { get; private set; }

        public mdlPersonalInfo(int piid, string piname, string pibirthp, string pibirtht, string piaddress, string piphone, string piemail, int piuid)
        {
            PiId = piid;
            PiName = piname;
            PiBirthP = pibirthp;
            PiBirtht = pibirtht;
            PiAddress = piaddress;
            PiPhone = piphone;
            PiEmail = piemail;
            PiUId = piuid;
        }
    }
}