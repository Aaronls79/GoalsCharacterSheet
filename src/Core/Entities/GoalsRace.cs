using System;
using System.Linq;

namespace GoalsCharacterSheet.Core.Entities
{
    public partial class GoalsRace : IEntity
    {
        public int Id
        {
            get { return GoalsRaceId; }
            set { GoalsRaceId = value; }
        }

        public bool IsfavoredClass(GoalsClass goalsClass)
        {
            return (from raceFavoredClass in RaceFavoredClasses
                    where raceFavoredClass.GoalsClass.GoalsClassId == goalsClass.GoalsClassId
                    select raceFavoredClass).Any();
        }
    }
}