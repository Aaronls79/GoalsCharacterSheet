using System.Reflection;
using GoalsCharacterSheet.Core.Entities;

namespace GoalsCharacterSheet.Web.Models
{
    public class GoalsSpellViewModel : ViewModel<GoalsSpell>
    {
        public GoalsSpellViewModel(GoalsSpell model) : base(model) {}

        public GoalsSpellViewModel() {}

        protected override bool ExcludedProperty(PropertyInfo propertyInfo)
        {
            return propertyInfo.Name == "GoalsSpellId" || propertyInfo.Name == "Id" || propertyInfo.Name == "Template";
        }
    }
}