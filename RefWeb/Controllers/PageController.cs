using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RefWeb.Controllers
{
    public class PageController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult SoftwarePage()
        {
            return View();
        }

        public ActionResult WebPage()
        {
            return View();
        }

        public ActionResult GamePage()
        {
            return View();
        }

    }
}