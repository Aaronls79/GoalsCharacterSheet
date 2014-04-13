using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using GoalsCharacterSheet.Core.Entities;
using GoalsCharacterSheet.Web.Models;
using GoalsCharacterSheet.Web.Models.Contracts;

namespace GoalsCharacterSheet.Web.Controllers
{
    public class GoalsPowersController : BaseController<GoalsPowerViewModel>
    {
        public GoalsPowersController()
        {
            CanEdit = true;
        }

        public override string Title
        {
            get { return "Powers"; }
        }

        public override void DeleteItem(int id)
        {
            var viewModel = GetItem(id);
            using (var context = new GCSDatabaseEntities())
            {
                context.Attach(viewModel.Entity);
                if (viewModel.Entity.CharacterPowers == null ||
                    viewModel.Entity.CharacterPowers.Count(x => x.GoalsCharacter.GoalsUser.UserName == this.User.Identity.Name) <= 0)
                    throw new UnauthorizedAccessException();
                context.DeleteObject(viewModel.Entity);
                context.SaveChanges();
            }
        }

        public override GoalsPowerViewModel GetItem(int id)
        {
            using (var context = new GCSDatabaseEntities())
                return new GoalsPowerViewModel(context.GoalsPowers.Include("CharacterPowers.GoalsCharacter.GoalsUser").First(x => x.GoalsPowerId == id));
        }

        public override List<GoalsPowerViewModel> GetList(int page, int max)
        {
            using (var context = new GCSDatabaseEntities())
            {
                IQueryable<GoalsPower> entitiies;
                if (max > 0)
                {
                    entitiies = from goalsPower in context.GoalsPowers.Take(max).OrderBy(x => x.Name).Skip(page*max)
                                orderby goalsPower.Name
                                where goalsPower.Template
                                select goalsPower;
                }
                else
                {
                    entitiies = from goalsPower in context.GoalsPowers.OrderBy(x => x.Name)
                                orderby goalsPower.Name
                                where goalsPower.Template
                                select goalsPower;
                }

                return (from entitiy in entitiies.ToList()
                        select new GoalsPowerViewModel(entitiy)).ToList();
            }
        }

        public override IDisplay SaveItem(FormCollection collection)
        {
            throw new UnauthorizedAccessException();
        }

        [HttpPost]
        public ActionResult AddPower(int id, int characterId)
        {
            try
            {
                var dispaly = CopyPower(id, characterId);
                return Json(new {Failed = false, Message = Title + " saved.", dispaly.Id});
            }
            catch (Exception ex)
            {
                return Json(new {Failed = true, ex.Message});
            }
        }

        protected virtual IDisplay CopyPower(int powerId, int characterId)
        {
            using (var context = new GCSDatabaseEntities())
            {
                var sourcePower = context.GoalsPowers.FirstOrDefault(x => x.GoalsPowerId == powerId);
                if (sourcePower == null) throw new ArgumentException("No Power found with id: " + powerId);
                var targetCharacter = context.GoalsCharacters.Include("GoalsUser").FirstOrDefault(x => x.GoalsCharacterId == characterId);
                if (targetCharacter == null) throw new ArgumentException("No Character found with id: " + characterId);
                if (targetCharacter.GoalsUser.UserName != this.User.Identity.Name)
                    throw new UnauthorizedAccessException();
                var targetPower = sourcePower.Copy();
                context.GoalsPowers.AddObject(targetPower);
                targetCharacter.AddPower(targetPower, sourcePower.GoalsPowerId);
                context.SaveChanges();
                return new GoalsPowerViewModel(targetPower);
            }
        }
    }
}