using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RefWeb.Models.CVModels
{
    public class mdlLang
    {
        public int LangId { get; private set; }
        public string LangHun { get; private set; }
        public string LangEng { get; private set; }
        public string LangLevelHun { get; private set; }
        public string LangLevelEng { get; private set; }
        public int LangUId { get; private set; }

        public mdlLang(int langid, string langnamehun, string langnameeng, string langlevelhun, string langleveleng, int languid)
        {
            LangId = langid;
            LangHun = langnamehun;
            LangEng = langnameeng;
            LangLevelHun = langlevelhun;
            LangLevelEng = langleveleng;
            LangUId = languid;
        }
    }
}