using System;

namespace GoalsCharacterSheet.Core.Entities
{
    public partial class GoalsCharacter : IEntity
    {
        public GoalsCharacter()
        {
            Name = "Unknown Hero";
            Alignment = "Good";
            SetDefault();
            CreatedDate = DateTime.UtcNow;
            ModifiedDate = DateTime.UtcNow;
        }
        public int Id
        {
            get { return GoalsCharacterId; }
            set { GoalsCharacterId = value; }
        }
        public int GoalsClassId
        {
            get
            {
                if (GoalsClass != null)
                    return GoalsClass.Id;
                return 0;
            }
        }
        public string ClassName
        {
            get
            {
                if (GoalsClass != null)
                    return string.Format("{0} - {1}", GoalsClass.Name, GoalsClass.BaseClass);
                return "Custom";
            }
        }
        public int GoalsRaceId
        {
            get
            {
                if (GoalsRace != null)
                    return GoalsRace.Id;
                return 0;
            }
        }

        public string RaceName
        {
            get
            {
                if (GoalsRace != null)
                    return GoalsRace.Name;
                return "Custom";
            }
        }
        public int TotalTraitClass
        {
            get { return  BaseTraitClass + ModTraitClass; }
        }
        public int TotalTraitDefense
        {
            get { return BaseTraitDefense + ModTraitDefense; }
        }
        public int TotalTraitInitiative
        {
            get { return BaseTraitInitiative + ModTraitInitiative; }
        }
        public int TotalTraitStrength
        {
            get { return BaseTraitStrength + ModTraitStrength; }
        }
        public int TotalTraitToughness
        {
            get { return BaseTraitToughness + ModTraitToughness; }
        }

        public void SetDefault()
        {
            Fate = 3;
            CharacterLevel = 1;
            HitPoints = 6;
            Speed = 6;
            Cost = 0;
            BaseTraitClass = 4;
            BaseTraitDefense = 4;
            BaseTraitInitiative = 8;
            BaseTraitStrength = 4;
            BaseTraitToughness = 4;
            ModTraitClass = 0;
            ModTraitDefense = 0;
            ModTraitInitiative = 0;
            ModTraitStrength = 0;
            ModTraitToughness = 0;
            Reward = 1;
        }

        public void AddPower(GoalsPower power, int templateId)
        {
            CharacterPowers.Add(new CharacterPower
            {
                GoalsCharacter = this,
                GoalsPower = power,
                GoalsPowerTemplateId = templateId
            });
        }

        public void AddEquipment(GoalsEquipment goalsEquipment, int templateId)
        {
            CharacterEquipments.Add(new CharacterEquipment
            {
                GoalsCharacter = this,
                GoalsEquipment = goalsEquipment,
                GoalsEquipmenTemplateId = templateId
            });
        }

        public int CalculatedBaseInitiative()
        {
           return  (BaseTraitClass + BaseTraitDefense + ModTraitClass + ModTraitDefense);
        }
    }
}