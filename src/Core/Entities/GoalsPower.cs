using System;

namespace GoalsCharacterSheet.Core.Entities
{
    public partial class GoalsPower : IEntity
    {
        public GoalsPower()
        {
            CreatedDate = DateTime.UtcNow;
            ModifiedDate = DateTime.UtcNow;
            Name = string.Empty;
            Damage = string.Empty;
            Effect = string.Empty;
            Notes = string.Empty;
            Page = string.Empty;
            Range = string.Empty;
            Template = false;
            Type = string.Empty;
            PowerClass = string.Empty;
        }

        public int Id
        {
            get { return GoalsPowerId; }
            set { GoalsPowerId = value; }
        }

        public GoalsPower Copy()
        {
            var targePower = new GoalsPower
            {
                Name = Name,
                Cost = Cost,
                Damage = Damage,
                Effect = Effect,
                Notes = Notes,
                Page = Page,
                Range = Range,
                Type = Type,
                PowerClass = PowerClass
            };
            return targePower;
        }
    }
}