using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RefWeb.Models
{
    public class mdlWebsites
    {
        public static int WebsiteId { get; private set; }
        public static string WebsiteName { get; private set; }
        public static string WebsiteDescription { get; private set; }
        public static string WebsiteURL { get; private set; }

        public mdlWebsites(int wid, string wname, string wdesc, string wurl)
        {
            WebsiteId = wid;
            WebsiteName = wname;
            WebsiteDescription = wdesc;
            WebsiteURL = wurl;
        }
    }
}