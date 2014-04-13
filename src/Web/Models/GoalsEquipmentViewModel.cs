using System.Reflection;
using GoalsCharacterSheet.Core.Entities;

namespace GoalsCharacterSheet.Web.Models
{
    public class GoalsEquipmentViewModel : ViewModel<GoalsEquipment>
    {
        public GoalsEquipmentViewModel(GoalsEquipment model) : base(model) {}

        public GoalsEquipmentViewModel() {}

        protected override bool ExcludedProperty(PropertyInfo propertyInfo)
        {
            return propertyInfo.Name == "GoalsEquipmentId" || propertyInfo.Name == "Id" || propertyInfo.Name == "Template";
        }
    }
}