using System;

namespace GoalsCharacterSheet.Core.Entities
{
    public partial class GoalsSpell : IEntity
    {
        public GoalsSpell()
        {
            ModifiedDate = DateTime.UtcNow;
            CreatedDate = ModifiedDate;
        }
        public int Id
        {
            get { return GoalsSpellId; }
            set { GoalsSpellId = value; }
        }
    }
}