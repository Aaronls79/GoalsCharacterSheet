using System;

namespace GoalsCharacterSheet.Core.Entities
{
    public partial class CharacterPower
    {
        public CharacterPower()
        {
            ModifiedDate = DateTime.UtcNow;
            CreatedDate = ModifiedDate;
        }
    }
}