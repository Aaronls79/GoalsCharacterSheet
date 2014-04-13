using System.Reflection;
using GoalsCharacterSheet.Core.Entities;

namespace GoalsCharacterSheet.Web.Models
{
    public class GoalsClassViewModel : ViewModel<GoalsClass>
    {
        public GoalsClassViewModel(GoalsClass model) : base(model) {}

        public GoalsClassViewModel() {}

        protected override bool ExcludedProperty(PropertyInfo propertyInfo)
        {
            return propertyInfo.Name == "GoalsClassId" || propertyInfo.Name == "Id";
        }
    }
}