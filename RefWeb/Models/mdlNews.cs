using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RefWeb.Models
{
    public class mdlNews
    {
        public int NewsId { get; private set; }
        public string NewsNameHun { get; private set; }
        public string NewsNameEng { get; private set; }
        public DateTime NewsDate { get; private set; }
        public string NewsDescriptionHun { get; private set; }
        public string NewsDescriptionEng { get; private set; }
        public int NewsUserId { get; private set; }

        public mdlNews(int nid, string nnamehun, string nnameeng, DateTime ndate, string ndeschun, string ndesceng, int nuserid)
        {
            NewsId = nid;
            NewsNameHun = nnamehun;
            NewsNameEng = nnameeng;
            NewsDate = ndate;
            NewsDescriptionHun = ndeschun;
            NewsDescriptionEng = ndesceng;
            NewsUserId = nuserid;
        }

    }
}