namespace GoalsCharacterSheet.Core.Entities
{
    public partial class GoalsClass : IEntity
    {
        public int Id
        {
            get { return GoalsClassId; }
            set { GoalsClassId = value; }
        }
    }
}