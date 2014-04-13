using System.Collections.Generic;

namespace GoalsCharacterSheet.Web.Models.Contracts
{
    public interface IEdit
    {
        int Id { get; set; }
        IDictionary<string, object> EditableFields { get; }
    }
}