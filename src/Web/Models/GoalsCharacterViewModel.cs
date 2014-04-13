using System.Data;
using System.Data.Objects;
using System.Reflection;
using GoalsCharacterSheet.Core.Entities;

namespace GoalsCharacterSheet.Web.Models
{
    public class GoalsCharacterViewModel : ViewModel<GoalsCharacter>
    {
        public GoalsCharacterViewModel(GoalsCharacter model) : base(model)
        {
            if (model.EntityState != EntityState.Added && model.EntityState != EntityState.Deleted && model.EntityState != EntityState.Detached)
            {
                if (!model.GoalsClassReference.IsLoaded) model.GoalsClassReference.Load();
                if (!model.GoalsRaceReference.IsLoaded) model.GoalsRaceReference.Load();
                if (!model.CharacterPowers.IsLoaded) model.CharacterPowers.Load();
                if (!model.CharacterEquipments.IsLoaded) model.CharacterEquipments.Load();
                if (!model.CharacterSpells.IsLoaded) model.CharacterSpells.Load();
            }
        }

        public GoalsCharacterViewModel():this(null) {}

        protected override bool ExcludedProperty(PropertyInfo propertyInfo)
        {
            return 
                propertyInfo.Name == "GoalsCharacterId" ||
                propertyInfo.Name == "BaseTraitClass" ||
                propertyInfo.Name == "BaseTraitDefense" ||
                propertyInfo.Name == "BaseTraitInitiative" ||
                propertyInfo.Name == "BaseTraitStrength" ||
                propertyInfo.Name == "BaseTraitToughness" ||
                propertyInfo.Name == "ModTraitClass" ||
                propertyInfo.Name == "ModTraitDefense" ||
                propertyInfo.Name == "ModTraitInitiative" ||
                propertyInfo.Name == "ModTraitStrength" ||
                propertyInfo.Name == "ModTraitToughness" ||
                propertyInfo.Name == "TotalTraitClass" ||
                propertyInfo.Name == "TotalTraitDefense" ||
                propertyInfo.Name == "TotalTraitInitiative" ||
                propertyInfo.Name == "TotalTraitStrength" ||
                propertyInfo.Name == "TotalTraitToughness" ||
                propertyInfo.Name == "Reward" ||
                propertyInfo.Name == "ModifiedDate" ||
                propertyInfo.Name == "GoalsRaceId" ||
                propertyInfo.Name == "GoalsClassId" ||
                propertyInfo.Name == "HitPoints" ||
                propertyInfo.Name == "Speed" || 
                propertyInfo.Name == "Cost" ||
                propertyInfo.Name == "Fate" ||
                propertyInfo.Name == "CharacterLevel" ||
                propertyInfo.Name == "Id";
        }
    }
}