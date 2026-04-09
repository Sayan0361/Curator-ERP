using Curator.Models;
using Curator.Repositories;
using System;
using System.Collections.Generic;
using System.Web.ApplicationServices;
using System.Web.Mvc;

namespace Curator.Controllers
{
    public class HomeController : Controller
    {
        private readonly HomeRepository homeRepository = new HomeRepository();

        public ActionResult Index()
        {
            // In a real app, you'd fetch this data from a database or API
            var model = homeRepository.GetHomePageData();

            // Optionally expose cart count to layout via ViewBag
            ViewBag.CartCount = 10; // replace with session/DB value
            return View(model);
        }
    }
}