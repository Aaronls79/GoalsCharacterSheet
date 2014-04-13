using System.Reflection;
using GoalsCharacterSheet.Core.Entities;

namespace GoalsCharacterSheet.Web.Models
{
    public class GoalsPowerViewModel : ViewModel<GoalsPower>
    {
        public GoalsPowerViewModel(GoalsPower model) : base(model) {}

        public GoalsPowerViewModel() {}

        protected override bool ExcludedProperty(PropertyInfo propertyInfo)
        {
            return propertyInfo.Name == "GoalsPowerId" ||  propertyInfo.Name == "Template" || propertyInfo.Name == "Id";
        }
    }
}