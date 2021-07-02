using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RefWeb.Models.CVModels
{
    public class mdlEducation
    {
        public int EduId { get; private set; }
        public string EduStart { get; private set; }
        public string EduEnd { get; private set; }
        public string SchoolNameHun { get; private set; }
        public string SchoolNameEng { get; private set; }
        public string EduHun { get; private set; }
        public string EduEng { get; private set; }
        public int EduUId { get; private set; }

        public mdlEducation(int eduid, string edustart, string eduend, string edusnamehun, string edusnameeng, string edunamehun, string edunameeng, int eduuid)
        {
            EduId = eduid;
            EduStart = edustart;
            EduEnd = eduend;
            SchoolNameHun = edusnamehun;
            SchoolNameEng = edusnameeng;
            EduHun = edunamehun;
            EduEng = edunameeng;
            EduUId = eduuid;
        }
    }
}