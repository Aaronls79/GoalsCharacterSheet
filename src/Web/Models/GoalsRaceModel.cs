using System.Reflection;
using GoalsCharacterSheet.Core.Entities;

namespace GoalsCharacterSheet.Web.Models
{
    public class GoalsRaceViewModel : ViewModel<GoalsRace>
    {
        public GoalsRaceViewModel(GoalsRace model) : base(model) {}

        public GoalsRaceViewModel() {}

        protected override bool ExcludedProperty(PropertyInfo propertyInfo)
        {
            return propertyInfo.Name == "GoalsRaceId" || propertyInfo.Name == "Id";
        }
    }
}