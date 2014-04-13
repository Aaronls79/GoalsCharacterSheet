using System;

namespace GoalsCharacterSheet.Core.Entities
{
    public partial class GoalsEquipment : IEntity
    {
        public GoalsEquipment()
        {
            ModifiedDate = DateTime.UtcNow;
            CreatedDate = ModifiedDate;
        }

        public int Id
        {
            get { return GoalsEquipmentId; }
            set { GoalsEquipmentId = value; }
        }

        public GoalsEquipment Copy()
        {
            return new GoalsEquipment
            {
                Cost = Cost,
                Effects = Effects,
                EquipmentClass = EquipmentClass,
                Name = Name,
                Page = Page,
                Rarity = Rarity,
                Type = Type
            };
        }
    }
}