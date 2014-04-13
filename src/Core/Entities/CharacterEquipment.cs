using System;

namespace GoalsCharacterSheet.Core.Entities
{
    public partial class CharacterEquipment
    {
        public CharacterEquipment()
        {
            ModifiedDate = DateTime.UtcNow;
            CreatedDate = ModifiedDate;
        }
    }
}