using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RefWeb.Models
{
    public class mdlNews
    {
        public int NewsId { get; private set; }
        public string NewsName { get; private set; }
        public DateTime NewsDate { get; private set; }
        public string NewsDescription { get; private set; }

        public mdlNews(int nid, string nname, DateTime ndate, string ndesc)
        {
            NewsId = nid;
            NewsName = nname;
            NewsDate = ndate;
            NewsDescription = ndesc;
        }

    }
}