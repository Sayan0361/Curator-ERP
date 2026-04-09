using DataAccessLayer;
using DataAccessLayer.Dapper;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
namespace CuratorMainApp.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View(true);
        }

        public ContentResult TestDb()
        {
            try
            {
                using (var conn = DbConnectionFactory.Create())
                {
                    conn.Open();
                    return Content("DB Connected Successfully");
                }
            }
            catch (Exception ex)
            {
                return Content(ex.Message);
            }
        }

        public ActionResult About()
        {
            
            ViewBag.Message = "Your application description page. ";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult URLPage()
        {
            string emailBaseUrl = ConfigurationManager.AppSettings["AuthServiceBaseUrl"];
            
            return Content($"URL Received! <br/> " +
                           $"URL: {emailBaseUrl} <br/> " 
                           );
        }
    }
}