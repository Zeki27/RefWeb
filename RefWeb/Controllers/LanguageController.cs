using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Mvc;

namespace RefWeb.Controllers
{
    public class LanguageController : Controller
    {
        public static string _lang = "hu";
        // GET: Language
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Change(string language)
        {
            if (!string.IsNullOrEmpty(language))
            {
                Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(language);
                Thread.CurrentThread.CurrentUICulture = new CultureInfo(language);
            }
            HttpCookie cookie = new HttpCookie("Languages");
            cookie.Value = language;
            _lang = language;
            Response.Cookies.Add(cookie);
            return View("Index");
        }
    }
}