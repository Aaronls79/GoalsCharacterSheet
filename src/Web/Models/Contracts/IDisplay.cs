using System.Collections.Generic;
using GoalsCharacterSheet.Core;

namespace GoalsCharacterSheet.Web.Models.Contracts
{
    public interface IDisplay
    {
        int Id { get; set; }
        Dictionary<string, object> Fields { get; set; }
    }
}