using QuanLyAsp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLyAsp.Controllers
{
    public class HomeController : Controller
    {
        QuanLyDbContext db = new QuanLyDbContext();
        // GET: AdminModules
        public ActionResult Index(FormCollection form)
        {
            var norm = form["normId"];
            if (norm != null)
            {
                var normId = Int32.Parse(form["normId"]);
                var orderDate = DateTime.Parse(form["returnDate"]);
                var returnDate = DateTime.Parse(form["returnDate"]);
                var tcomSample_Tests = db.tcomSample_Test.Where(x => x.NormId == normId).Select(x => x.SampleId).ToList();
                var orderIds = db.tblSamples.Where(x => tcomSample_Tests.Contains(x.SampleId)).Select(x => x.OrderId).ToList();
                ViewBag.List = db.tblOrders.Where(x => orderIds.Contains(x.OrderId) && x.OrderDate == orderDate && x.ReturnDate == returnDate).ToList();
            }
            else
            {
                ViewBag.List = db.tblOrders.ToList();
            }
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}