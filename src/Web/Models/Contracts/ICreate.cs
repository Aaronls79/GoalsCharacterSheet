using System.Collections.Generic;

namespace GoalsCharacterSheet.Web.Models.Contracts
{
    public interface ICreate
    {
        IEnumerable<string> NewFields { get; }
    }
}