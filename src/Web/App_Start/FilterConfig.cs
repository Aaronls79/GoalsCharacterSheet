using System.Web.Mvc;
using GoalsCharacterSheet.Web.Filters;

namespace GoalsCharacterSheet.Web
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
            filters.Add(new InitializeSimpleMembershipAttribute());
        }
    }
}