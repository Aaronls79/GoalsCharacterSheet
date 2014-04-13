using System;

namespace GoalsCharacterSheet.Core.Entities
{
    public partial class CharacterSpell
    {
        public CharacterSpell()
        {
            ModifiedDate = DateTime.UtcNow;
            CreatedDate = ModifiedDate;
        }
    }
}