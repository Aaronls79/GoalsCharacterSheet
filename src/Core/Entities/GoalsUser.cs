namespace GoalsCharacterSheet.Core.Entities
{
    public partial class GoalsUser : IEntity
    {
        public int Id
        {
            get { return UserId; }
            set { UserId = value; }
        }
        public string Name
        {
            get { return UserName; }
            set { UserName = value; }
        }
    }
}