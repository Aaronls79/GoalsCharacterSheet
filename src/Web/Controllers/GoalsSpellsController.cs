using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using GoalsCharacterSheet.Core.Entities;
using GoalsCharacterSheet.Web.Models;
using GoalsCharacterSheet.Web.Models.Contracts;

namespace GoalsCharacterSheet.Web.Controllers
{
    public class GoalsSpellsController : BaseController<GoalsSpellViewModel>
    {
        public GoalsSpellsController()
        {
            CanEdit = true;
        }

        public override string Title
        {
            get { return "Spells"; }
        }


        [HttpPost]
        public ActionResult AddSpell(int id, int characterId)
        {
            try
            {
                var dispaly = CopySpell(id, characterId);
                return Json(new { Failed = false, Message = Title + " saved.", dispaly.Id });
            }
            catch (Exception ex)
            {
                return Json(new { Failed = true, ex.Message });
            }
        }


        public override void DeleteItem(int id)
        {
            var viewModel = GetItem(id);
            using (var context = new GCSDatabaseEntities())
            {
                context.Attach(viewModel.Entity);
                if (viewModel.Entity.CharacterSpells == null || 
                    viewModel.Entity.CharacterSpells.Count(x => x.GoalsCharacter.GoalsUser.UserName == User.Identity.Name) <= 0)
                    throw new UnauthorizedAccessException();
                context.DeleteObject(viewModel.Entity);
                context.SaveChanges();
            }
        }

        public override GoalsSpellViewModel GetItem(int id)
        {
            using (var context = new GCSDatabaseEntities())
            {
                return new GoalsSpellViewModel(context.GoalsSpells.Include("CharacterSpells.GoalsCharacter.GoalsUser").First(x => x.GoalsSpellId == id));
            }
        }

        public override List<GoalsSpellViewModel> GetList(int page, int max)
        {
            using (var context = new GCSDatabaseEntities())
            {
                IQueryable<GoalsSpell> entities;
                if (max > 0)
                {
                    entities = from item in context.GoalsSpells.
                                   Take(max).OrderBy(x => x.Name).Skip(page*max)
                               where item.Template
                               select item;
                }
                else
                {
                    entities = from item in context.GoalsSpells.
                                   OrderBy(x => x.Name)
                               where item.Template
                               select item;
                }

                return (from entitiy in entities.ToList()
                        select new GoalsSpellViewModel(entitiy)).ToList();
            }
        }

        public override IDisplay SaveItem(FormCollection collection)
        {
            throw new UnauthorizedAccessException();
        }

        protected virtual IDisplay CopySpell(int spellId, int characterId)
        {
            using (var context = new GCSDatabaseEntities())
            {
                var sourceSpell = context.GoalsSpells.FirstOrDefault(x => x.GoalsSpellId == spellId);
                if (sourceSpell == null) throw new ArgumentException("No spell found with id: " + spellId);
                var targetCharacter = context.GoalsCharacters.Include("GoalsUser").FirstOrDefault(x => x.GoalsCharacterId == characterId);
                if (targetCharacter == null) throw new ArgumentException("No Character found with id: " + characterId);
                if (targetCharacter.GoalsUser.UserName != this.User.Identity.Name)
                    throw new UnauthorizedAccessException();
                var goalsSpell = new GoalsSpell
                {
                    Action = sourceSpell.Action,
                    Bonus = sourceSpell.Bonus,
                    Boost = sourceSpell.Boost,
                    Damage = sourceSpell.Damage,
                    Effects = sourceSpell.Effects,
                    LevelBonus = sourceSpell.LevelBonus,
                    Name = sourceSpell.Name,
                    Page = sourceSpell.Page,
                    Range = sourceSpell.Range,
                    School = sourceSpell.School,
                    StartingLevel = sourceSpell.StartingLevel,
                    Uses = sourceSpell.Uses,
                };
                context.GoalsSpells.AddObject(goalsSpell);

                var characterSpell = new CharacterSpell
                {
                    GoalsCharacter = targetCharacter,
                    GoalsSpell = goalsSpell,
                    GoalsSpellTemplateId = sourceSpell.GoalsSpellId
                };
                context.CharacterSpells.AddObject(characterSpell);

                context.SaveChanges();
                return new GoalsSpellViewModel(goalsSpell);
            }
        }

    }
}