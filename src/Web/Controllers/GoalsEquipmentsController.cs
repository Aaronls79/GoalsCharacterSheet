using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using GoalsCharacterSheet.Core.Entities;
using GoalsCharacterSheet.Web.Models;
using GoalsCharacterSheet.Web.Models.Contracts;

namespace GoalsCharacterSheet.Web.Controllers
{
    public class GoalsEquipmentsController : BaseController<GoalsEquipmentViewModel>
    {
        public GoalsEquipmentsController()
        {
            CanEdit = true;
        }

        public override string Title
        {
            get { return "Equipment"; }
        }

        public override void DeleteItem(int id)
        {
            var viewModel = GetItem(id);
            using (var context = new GCSDatabaseEntities())
            {
                context.Attach(viewModel.Entity);
                if (viewModel.Entity.CharacterEquipments == null ||
                    viewModel.Entity.CharacterEquipments.Count(x => x.GoalsCharacter.GoalsUser.UserName == User.Identity.Name) <= 0)
                    throw new UnauthorizedAccessException();
                context.DeleteObject(viewModel.Entity);
                context.SaveChanges();
            }
        }

        public override GoalsEquipmentViewModel GetItem(int id)
        {
            using (var context = new GCSDatabaseEntities())
                return new GoalsEquipmentViewModel(context.GoalsEquipments.Include("CharacterEquipments.GoalsCharacter.GoalsUser").First(x => x.GoalsEquipmentId == id));
        }

        public override List<GoalsEquipmentViewModel> GetList(int page, int max)
        {
            using (var context = new GCSDatabaseEntities())
            {
                IQueryable<GoalsEquipment> entities;
                if (max > 0)
                {
                    entities = from item in context.GoalsEquipments.
                                   Take(max).OrderBy(x => x.Name).Skip(page * max)
                               where item.Template
                               select item;
                }
                else
                {
                    entities = from item in context.GoalsEquipments.
                                   OrderBy(x => x.Name)
                               where item.Template
                               select item;
                }

                return (from entitiy in entities.ToList()
                        select new GoalsEquipmentViewModel(entitiy)).ToList();
            }
        }

        public override IDisplay SaveItem(FormCollection collection)
        {
            throw new UnauthorizedAccessException();
        }

        [HttpPost]
        public ActionResult AddEquipment(int id, int characterId)
        {
            try
            {
                var dispaly = CopyEquipment(id, characterId);
                return Json(new { Failed = false, Message = Title + " saved.", dispaly.Id });
            }
            catch (Exception ex)
            {
                return Json(new { Failed = true, ex.Message });
            }
        }

        protected virtual IDisplay CopyEquipment(int equipmentId, int characterId)
        {
            using (var context = new GCSDatabaseEntities())
            {
                var sourceEquipment = context.GoalsEquipments.FirstOrDefault(x => x.GoalsEquipmentId == equipmentId);
                if (sourceEquipment == null) throw new ArgumentException("No equipment found with id: " + equipmentId);
                var targetCharacter = context.GoalsCharacters.Include("GoalsUser").FirstOrDefault(x => x.GoalsCharacterId == characterId);
                if (targetCharacter == null) throw new ArgumentException("No Character found with id: " + characterId);
                if (targetCharacter.GoalsUser.UserName != this.User.Identity.Name)
                    throw new UnauthorizedAccessException();
                var goalsEquipment = sourceEquipment.Copy();
                context.GoalsEquipments.AddObject(goalsEquipment);
                targetCharacter.AddEquipment(goalsEquipment, sourceEquipment.GoalsEquipmentId);
                context.SaveChanges();
                return new GoalsEquipmentViewModel(goalsEquipment);
            }
        }
    }
}