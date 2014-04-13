using System.Web.Mvc;
using GoalsCharacterSheet.Core;
using GoalsCharacterSheet.Web.Controllers;
using GoalsCharacterSheet.Web.Models;

namespace GoalsCharacterSheet.Web.ViewPage
{
    public abstract class GoalsViewPage<T> : WebViewPage<T>
    {
        public string Title
        {
            get { return ViewBag.Title; }
        }

        public bool CanEdit
        {
            get { return ViewBag.CanEdit; }
        }

        public string ControllerName { get { return ViewContext.Controller.ValueProvider.GetValue("controller").AttemptedValue; } }

        public TC Controller<TC>() where TC : Controller
        {
            return ViewContext.Controller as TC;
        }
    }
}