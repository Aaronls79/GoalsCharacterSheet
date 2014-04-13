using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using GoalsCharacterSheet.Web.Models.Contracts;

namespace GoalsCharacterSheet.Web.Controllers
{
    [Authorize]
    public abstract class BaseController<T> : Controller where T : class, new()
    {
        public virtual string Title
        {
            get { return "Item"; }
        }

        public bool CanEdit { get; set; }

        public abstract void DeleteItem(int id);
        public abstract T GetItem(int id);
        public abstract List<T> GetList(int page, int max);
        public abstract IDisplay SaveItem(FormCollection collection);

        [HttpGet]
        public virtual ActionResult Create()
        {
            var model = new T() as ICreate;
            return PartialView("Partials/Create", model);
        }

        [HttpPost]
        public virtual ActionResult Create(FormCollection collection)
        {
            try
            {
                if (!CanEdit) return Json(new {Failed = true, Message = "Unauthorized"});
                var dispaly = SaveItem(collection);
                return Json(new { Failed = false, Message = Title + " saved.", Id = dispaly.Id });
            }
            catch (Exception ex)
            {
                return Json(new { Failed = true, ex.Message });
            }
        }

        [HttpPost]
        public virtual ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                if (!CanEdit) return Json(new { Failed = true, Message = "Unauthorized" });
                DeleteItem(id);
                return Json(new { Failed = false, Message = Title + " deleted." });
            }
            catch (Exception ex)
            {
                return Json(new { Failed = true, ex.Message });
            }
        }

        [HttpGet]
        public virtual ActionResult Details(int id)
        {
            var model = GetItem(id) as IDisplay;
            return PartialView("Partials/Details", model);
        }

        [HttpGet]
        public virtual ActionResult Edit(int id)
        {
            if (!CanEdit) return Json(new { Failed = true, Message = "Unauthorized" });
            var model = GetItem(id) as IEdit;
            return PartialView("Partials/Edit", model);
        }

        [HttpPost]
        public virtual ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                if (!CanEdit) return Json(new { Failed = true, Message = "Unauthorized" });
                var display = SaveItem(collection);
                return Json(new { Failed = false, Message = Title + " saved", Id = display.Id });
            }
            catch (Exception ex)
            {
                return Json(new { Failed = true, ex.Message });
            }
        }

        public virtual ActionResult Index()
        {
            var list = GetList(0, 0).Select(x => x as IDisplay).ToList();
            return View("Index", list);
        }

        public virtual ActionResult List()
        {
            var list = GetList(0, 0).Select(x => x as IDisplay).ToList();
            return PartialView("Partials/List", list);
        }

        /// <summary>
        /// Selectalable table of records.
        /// </summary>
        /// <param name="fields">camma seperated list of fields</param>
        /// <returns>Partial view</returns>
        public virtual ActionResult SelectList(string fields)
        {
            var keys = (fields ?? string.Empty).Split(',');
            var list = GetList(0, 0).Select(x => x as IDisplay).ToList();
            if (keys.Length > 0)
            {
                foreach (var display in list)
                {
                    var orderedFields = keys.ToDictionary(key => key, key => display.Fields[key]);
                    display.Fields = orderedFields;
                }
            }

            return PartialView("Partials/SelectList", list);
        }

        protected override void OnException(ExceptionContext filterContext)
        {
            filterContext.ExceptionHandled = true;
            ModelState.AddModelError("Request_Error", filterContext.Exception.Message);
            Response.RedirectToRoute(new{action = "index",controller="home"});
        }

        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            ViewBag.Title = Title;
            ViewBag.CanEdit = CanEdit;
        }
    }
}