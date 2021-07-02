using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RefWeb.Models
{
    public class mdlWork
    {
        public int WorkId { get; private set; }
        public string WorkStart { get; private set; }
        public string WorkEnd { get; private set; }
        public string WorkNameHun { get; private set; }
        public string WorkNameEng { get; private set; }
        public string RoleHun { get; private set; }
        public string RoleEng { get; private set; }
        public int WorkUId { get; private set; }

        public mdlWork(int workid, string workstart, string workend, string worknamehun, string worknameeng, string rolehun, string roleeng, int workuid)
        {
            WorkId = workid;
            WorkStart = workstart;
            WorkEnd = workend;
            WorkNameHun = worknamehun;
            WorkNameEng = worknameeng;
            RoleHun = rolehun;
            RoleEng = roleeng;
            WorkUId = workuid;
        }
    }
}