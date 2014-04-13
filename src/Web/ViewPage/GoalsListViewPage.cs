using System.Collections.Generic;
using GoalsCharacterSheet.Web.Models.Contracts;

namespace GoalsCharacterSheet.Web.ViewPage
{
    public abstract class GoalsListViewPage<T> : GoalsViewPage<T> where T : List<IDisplay>
    {
    }
}