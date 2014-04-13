using System.Web.Mvc;

namespace GoalsCharacterSheet.Web.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
    }
}