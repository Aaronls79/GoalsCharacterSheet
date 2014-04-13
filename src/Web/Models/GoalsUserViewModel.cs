using System.Reflection;
using GoalsCharacterSheet.Core.Entities;

namespace GoalsCharacterSheet.Web.Models
{
    public class GoalsUserViewModel : ViewModel<GoalsUser>
    {
        public GoalsUserViewModel(GoalsUser model) : base(model) {}

        public GoalsUserViewModel() {}

        protected override bool ExcludedProperty(PropertyInfo propertyInfo)
        {
            return propertyInfo.Name == "GoalsUserId" || propertyInfo.Name == "Id";
        }
    }
}