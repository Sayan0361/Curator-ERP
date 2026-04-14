using Product.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Product.Controllers
{
    public class HomePageApiController : Controller
    {
        private readonly ProductListDAL proproduct_list_dal = new ProductListDAL();

        public JsonResult GetHomePageDetails(long CustomerID)
        {
            var result = proproduct_list_dal.GetHomePageDetails(CustomerID);
            return Json(result, JsonRequestBehavior.AllowGet);
        }
    }
}