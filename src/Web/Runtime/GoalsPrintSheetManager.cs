using System.Text;
using GoalsCharacterSheet.Core.Entities;
using GoalsCharacterSheet.Web.Models;
using GoalsCharacterSheet.Web.Properties;
using System.Linq;

namespace GoalsCharacterSheet.Web.Runtime
{
    public static class GoalsPrintSheetManager
    {
        public static string ToPrintable(this GoalsCharacter character)
        {
            var goalsSheet = new StringBuilder(Resources.GoalsSheetTemplate);
            goalsSheet.Replace("{Name}", (character.Name??string.Empty).Trim());
            goalsSheet.Replace("{Race}", character.RaceName.Trim());
            goalsSheet.Replace("{Class}", character.ClassName.Trim());
            goalsSheet.Replace("{Level}", character.CharacterLevel.ToString());
            goalsSheet.Replace("{PWS}", character.Reward.ToString());
            goalsSheet.Replace("{Cost}", character.Cost.ToString());
            goalsSheet.Replace("{Alignment}", (character.Alignment ?? string.Empty).Trim());
            goalsSheet.Replace("{TotalClassTrait}", character.TotalTraitClass.ToString());
            goalsSheet.Replace("{TotalStrengthTrait}", character.TotalTraitStrength.ToString());
            goalsSheet.Replace("{TotalDefenseTrait}", character.TotalTraitDefense.ToString());
            goalsSheet.Replace("{TotalToughnessTrait}", character.TotalTraitToughness.ToString());
            goalsSheet.Replace("{TotalInitiativeTrait}", character.TotalTraitInitiative.ToString());
            goalsSheet.Replace("{Fate}", character.Fate.ToString());
            goalsSheet.Replace("{Move}", character.Speed.ToString());
            goalsSheet.Replace("{Health}", character.HitPoints.ToString());
            goalsSheet.Replace("{RaceNotes}", character.GoalsRace != null ? (character.GoalsRace.Notes ?? string.Empty).Trim() : string.Empty);

            if (character.CharacterEquipments.Count > 0)
            {
                GetPrintableEquipment(goalsSheet, character);
            }
            else
            {
                goalsSheet.Replace("{equipmentDisplay}", "display:none;");
            }
            if (character.CharacterPowers.Count > 0)
            {
                GetPrintablePowers(goalsSheet, character);
            }
            else
            {
                goalsSheet.Replace("{powersDisplay}", "display:none;");
            }
            if (character.CharacterSpells.Count > 0)
            {
                GetPrintableSpells(goalsSheet, character);
            }
            else
            {
                goalsSheet.Replace("{spellDisplay}", "display:none;");
            }
            return goalsSheet.ToString();
        }

        private static void GetPrintableEquipment(StringBuilder goalsSheet, GoalsCharacter character)
        {
            var equipmentContainer = new StringBuilder();
            foreach (var characterEquipment in character.CharacterEquipments.OrderBy(x => x.GoalsEquipment.Name))
            {
                var goalsEquipment = new GoalsEquipmentViewModel(characterEquipment.GoalsEquipment);
                var equipment = new StringBuilder(Resources.GoalsEffectsTemplate);
                var title = new StringBuilder();
                var body = new StringBuilder();
                title.AppendLine(
                    Resources.GoalsEffectsTitleItem
                        .Replace("{Name}", "Name")
                        .Replace("{Value}", goalsEquipment.Entity.Name.Trim())
                    );
                body.AppendLine(
                    Resources.GoalsEffectsBodyItemTemplate
                        .Replace("{Name}", "Effects")
                        .Replace("{Value}", goalsEquipment.Entity.Effects.Trim())
                    );
                foreach (var field in goalsEquipment.Fields)
                {
                    if (field.Key == "Name" ||
                        field.Key == "Effects") continue;
                    title.AppendLine(
                        Resources.GoalsEffectsTitleItem
                            .Replace("{Name}", field.Key.Replace("Equipment", "").ToSpacedString().Trim())
                            .Replace("{Value}", field.Value.ToString().Trim())
                        );
                }
                equipment.Replace("{EffectTitle}", title.ToString().Trim());
                equipment.Replace("{EffectBody}", body.ToString().Trim());
                equipmentContainer.AppendLine(equipment.ToString().Trim());
                equipmentContainer.AppendLine("<hr/>");
            }
            goalsSheet.Replace("{Equipment}", equipmentContainer.ToString());
            goalsSheet.Replace("{equipmentDisplay}", "");
        }

        private static void GetPrintablePowers(StringBuilder goalsSheet, GoalsCharacter character)
        {
            var powersContainers = new StringBuilder();
            foreach (var characterPower in character.CharacterPowers.OrderBy(x=>x.GoalsPower.Name))
            {
                var goalsPower = new GoalsPowerViewModel(characterPower.GoalsPower);
                var equipment = new StringBuilder(Resources.GoalsEffectsTemplate);
                var title = new StringBuilder();
                var body = new StringBuilder();
                title.AppendLine(
                    Resources.GoalsEffectsTitleItem
                        .Replace("{Name}", "Name")
                        .Replace("{Value}", goalsPower.Entity.Name.Trim())
                    );
                if (!string.IsNullOrEmpty(goalsPower.Entity.Damage) && goalsPower.Entity.Damage != "None")
                {
                    body.AppendLine(
                        Resources.GoalsEffectsBodyItemTemplate
                            .Replace("{Name}", "Damage")
                            .Replace("{Value}", goalsPower.Entity.Damage.Trim())
                        );
                }
                if (!string.IsNullOrEmpty(goalsPower.Entity.Effect))
                {
                    body.AppendLine(
                        Resources.GoalsEffectsBodyItemTemplate
                            .Replace("{Name}", "Effects")
                            .Replace("{Value}", goalsPower.Entity.Effect.Trim())
                        );
                }
                if (!string.IsNullOrEmpty(goalsPower.Entity.Notes))
                {
                    body.AppendLine(
                        Resources.GoalsEffectsBodyItemTemplate
                            .Replace("{Name}", "Notes")
                            .Replace("{Value}", goalsPower.Entity.Notes.Trim())
                        );
                }

                foreach (var field in goalsPower.Fields)
                {
                    if (field.Key == "Name" ||
                        field.Key == "Effect" ||
                        field.Key == "PowerClass" ||
                        field.Key == "Damage" ||
                        field.Key == "Notes") continue;
                    var value = field.Value.ToString();
                    if (!string.IsNullOrWhiteSpace(value) && value != "0" && value != "None")
                    {
                        title.AppendLine(
                            Resources.GoalsEffectsTitleItem
                                .Replace("{Name}", field.Key.ToSpacedString().Trim())
                                .Replace("{Value}", field.Value.ToString().Trim())
                            );
                    }
                }
                equipment.Replace("{EffectTitle}", title.ToString().Trim());
                equipment.Replace("{EffectBody}", body.ToString().Trim());
                powersContainers.AppendLine(equipment.ToString().Trim());
                powersContainers.AppendLine("<hr/>");
            }
            goalsSheet.Replace("{Powers}", powersContainers.ToString().Trim());
            goalsSheet.Replace("{powersDisplay}", "");
        }

        private static void GetPrintableSpells(StringBuilder goalsSheet, GoalsCharacter character)
        {
            var spellsContainer = new StringBuilder();
            foreach (var characterSpell in character.CharacterSpells.OrderBy(x=>x.GoalsSpell.Name))
            {
                var goalsPower = new GoalsSpellViewModel(characterSpell.GoalsSpell);
                var equipment = new StringBuilder(Resources.GoalsEffectsTemplate);
                var title = new StringBuilder();
                var body = new StringBuilder();
                title.AppendLine(
                    Resources.GoalsEffectsTitleItem
                        .Replace("{Name}", "Name")
                        .Replace("{Value}", goalsPower.Entity.Name.Trim())
                    );
                if (goalsPower.Entity.LevelBonus > 0)
                {
                    body.AppendLine(
                        Resources.GoalsEffectsBodyItemTemplate
                            .Replace("{Name}", "Bonus Level " + goalsPower.Entity.LevelBonus)
                            .Replace("{Value}", goalsPower.Entity.Bonus.Trim())
                        );
                }
                if (!string.IsNullOrEmpty(goalsPower.Entity.Boost))
                {
                    body.AppendLine(
                        Resources.GoalsEffectsBodyItemTemplate
                            .Replace("{Name}", "Boost")
                            .Replace("{Value}", goalsPower.Entity.Boost.Trim())
                        );
                }
                if (!string.IsNullOrEmpty(goalsPower.Entity.Damage) && goalsPower.Entity.Damage != "None")
                {
                    body.AppendLine(
                        Resources.GoalsEffectsBodyItemTemplate
                            .Replace("{Name}", "Damage")
                            .Replace("{Value}", goalsPower.Entity.Damage.Trim())
                        );
                }
                if (!string.IsNullOrEmpty(goalsPower.Entity.Effects))
                {
                    body.AppendLine(
                        Resources.GoalsEffectsBodyItemTemplate
                            .Replace("{Name}", "Effects")
                            .Replace("{Value}", goalsPower.Entity.Effects.Trim())
                        );
                }

                foreach (var field in goalsPower.Fields)
                {
                    if (field.Key == "Name" ||
                        field.Key == "Damage" ||
                        field.Key == "Boost" ||
                        field.Key == "StartingLevel" ||
                        field.Key == "School" ||
                        field.Key == "LevelBonus" ||
                        field.Key == "Bonus" ||
                        field.Key == "Effects") continue;

                    var value = field.Value.ToString();
                    if (!string.IsNullOrWhiteSpace(value) && value != "0" && value != "None")
                    {
                        title.AppendLine(
                            Resources.GoalsEffectsTitleItem
                                .Replace("{Name}", field.Key.Replace("Power", "").ToSpacedString().Trim())
                                .Replace("{Value}", field.Value.ToString().Trim())
                            );
                    }
                }
                equipment.Replace("{EffectTitle}", title.ToString().Trim());
                equipment.Replace("{EffectBody}", body.ToString().Trim());
                spellsContainer.AppendLine(equipment.ToString().Trim());
                spellsContainer.AppendLine("<hr/>");
            }
            goalsSheet.Replace("{Spells}", spellsContainer.ToString().Trim());
            goalsSheet.Replace("{spellDisplay}", "");
        }
    }
}