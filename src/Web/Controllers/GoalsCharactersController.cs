using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using GoalsCharacterSheet.Core.Entities;
using GoalsCharacterSheet.Web.Models;
using GoalsCharacterSheet.Web.Models.Contracts;
using GoalsCharacterSheet.Web.Runtime;

namespace GoalsCharacterSheet.Web.Controllers
{
    public class GoalsCharactersController : BaseController<GoalsCharacterViewModel>
    {
        public GoalsCharactersController()
        {
            CanEdit = true;
        }

        public override string Title
        {
            get { return "Characters"; }
        }

        public override void DeleteItem(int id)
        {
            var viewModel = GetItem(id);
            using (var context = new GCSDatabaseEntities())
            {
                context.Attach(viewModel.Entity);
                ResetToDefault(context,viewModel);
                viewModel.Entity.GoalsUserReference.Load();

                context.DeleteObject(viewModel.Entity);
                context.SaveChanges();
            }
        }

        [HttpGet]
        public override ActionResult Edit(int id)
        {
            ViewBag.Message = "Edit your charcter sheet. Class and race should be selected first as these effect other stats and powers.";
            var viewModel = GetItem(id);
            return View("Edit", viewModel);
        }

        public override GoalsCharacterViewModel GetItem(int id)
        {
            using (var context = new GCSDatabaseEntities())
            {
                var viewModel = new GoalsCharacterViewModel(context.GoalsCharacters
                    .Include("GoalsUser")
                    .Include("GoalsClass")
                    .Include("GoalsRace")
                    .Include("CharacterPowers.GoalsPower")
                    .Include("CharacterEquipments.GoalsEquipment")
                    .Include("CharacterSpells.GoalsSpell")
                    .First(x => x.GoalsCharacterId == id)
                );
                if (viewModel.Entity.GoalsUser.UserName != User.Identity.Name)
                    throw new UnauthorizedAccessException();
                if (viewModel.Entity.GoalsClass != null && viewModel.Entity.GoalsRace != null)
                {
                    ViewBag.Message = "You class and race is set. Be sure to remove unused equpment and modifiy traits. For more information see \"Superior Trait\" and \"Record Equipment\" page 70";
                }
                return viewModel;
            }
        }

        public override List<GoalsCharacterViewModel> GetList(int page, int max)
        {
            using (var context = new GCSDatabaseEntities())
            {
                IQueryable<GoalsCharacter> entities;
                if (max > 0)
                {
                    entities = from item in context.GoalsCharacters.
                                   Take(max).OrderBy(x => x.Name).Skip(page*max)
                               where item.GoalsUser.UserName == User.Identity.Name
                               select item;
                }
                else
                {
                    entities = from item in context.GoalsCharacters.
                                   OrderBy(x => x.Name)
                               where item.GoalsUser.UserName == User.Identity.Name
                               select item;
                }

                return (from entitiy in entities.ToList()
                        select new GoalsCharacterViewModel(entitiy)).ToList();
            }
        }

        public override IDisplay SaveItem(FormCollection collection)
        {
            var id = collection.GetInt("Id");
            GoalsCharacterViewModel viewModel;
            using (var context = new GCSDatabaseEntities())
            {
                if (id <= 0)
                {
                    var character = new GoalsCharacter();
                    context.AddToGoalsCharacters(character);
                    var user = context.GoalsUsers.FirstOrDefault(x => x.UserName == User.Identity.Name);
                    if (user == null) throw new ArgumentException("Could not find user: " + User.Identity.Name);
                    character.GoalsUser = user;
                    viewModel = new GoalsCharacterViewModel(character);
                }
                else
                {
                    var entity = context.GoalsCharacters
                        .Include("GoalsUser")
                        .Include("GoalsClass.ClassPowers.GoalsPower")
                        .Include("GoalsClass.ClassEquipments.GoalsEquipment")
                        .Include("GoalsRace.RaceFavoredClasses.GoalsClass")
                        .Include("GoalsRace.RacePowers.GoalsPower")
                        .Include("CharacterPowers.GoalsPower")
                        .Include("CharacterEquipments.GoalsEquipment")
                        .Include("CharacterSpells.GoalsSpell")
                        .FirstOrDefault(x => x.GoalsCharacterId == id);
                    viewModel = new GoalsCharacterViewModel(entity);
                    if (viewModel.Entity.GoalsUser.UserName != this.User.Identity.Name)
                        throw new UnauthorizedAccessException();
                    viewModel.Entity.ModifiedDate = DateTime.UtcNow;
                }

                if (collection != null && collection.HasKeys())
                    MergeCollectionToEntity(viewModel, collection);

                var goalsClassId = collection.GetInt("GoalsClassId");
                if (goalsClassId != 0)
                {
                    var selectedClass = context.GoalsClasses
                        .Include("ClassPowers.GoalsPower")
                        .Include("ClassEquipments.GoalsEquipment")
                        .FirstOrDefault(x => x.GoalsClassId == goalsClassId);

                    if (viewModel.Entity.GoalsClass == null || selectedClass.Id != viewModel.Entity.GoalsClassId)
                    {
                        ResetToDefault(context, viewModel);
                        SetRace(context, viewModel, viewModel.Entity.GoalsRace);
                        SetClass(context, viewModel, selectedClass);
                    }
                    viewModel.Entity.GoalsClass = selectedClass;
                }
                else viewModel.Entity.GoalsClass = null;

                var goalsRaceId = collection.GetInt("GoalsRaceId");
                if (goalsRaceId != 0)
                {
                    var selectedRace = context.GoalsRaces
                        .Include("RaceFavoredClasses.GoalsClass")
                        .Include("RacePowers.GoalsPower")
                        .FirstOrDefault(x => x.GoalsRaceId == goalsRaceId);
                    if (viewModel.Entity.GoalsRace == null || selectedRace.Id != viewModel.Entity.GoalsRaceId)
                    {
                        ResetToDefault(context, viewModel);
                        SetRace(context, viewModel, selectedRace);
                        SetClass(context, viewModel, viewModel.Entity.GoalsClass);
                    }
                    viewModel.Entity.GoalsRace = selectedRace;
                }
                else viewModel.Entity.GoalsRace = null;

                context.SaveChanges();
            }
            return viewModel;
        }

        private static void MergeCollectionToEntity(GoalsCharacterViewModel viewModel, FormCollection collection)
        {
            viewModel.Entity.Alignment = collection.GetString("Alignment");
            viewModel.Entity.BaseTraitClass = collection.GetInt("BaseTraitClass");
            viewModel.Entity.BaseTraitDefense = collection.GetInt("BaseTraitDefense");
            viewModel.Entity.BaseTraitStrength = collection.GetInt("BaseTraitStrength");
            viewModel.Entity.BaseTraitToughness = collection.GetInt("BaseTraitToughness");
            viewModel.Entity.CharacterLevel = collection.GetInt("CharacterLevel");
            viewModel.Entity.Cost = collection.GetInt("Cost");
            viewModel.Entity.Fate = collection.GetInt("Fate");
            viewModel.Entity.HitPoints = collection.GetInt("HitPoints");
            viewModel.Entity.ModTraitClass = collection.GetInt("ModTraitClass");
            viewModel.Entity.ModTraitDefense = collection.GetInt("ModTraitDefense");
            viewModel.Entity.ModTraitStrength = collection.GetInt("ModTraitStrength");
            viewModel.Entity.ModTraitToughness = collection.GetInt("ModTraitToughness");
            viewModel.Entity.ModTraitInitiative = collection.GetInt("ModTraitInitiative");
            viewModel.Entity.BaseTraitInitiative = viewModel.Entity.CalculatedBaseInitiative();
            viewModel.Entity.Name = collection.GetString("Name");
            viewModel.Entity.Reward = collection.GetInt("Reward");
            viewModel.Entity.Speed = collection.GetInt("Speed");
        }

        private static void ResetToDefault(GCSDatabaseEntities context, GoalsCharacterViewModel viewModel)
        {
            viewModel.Entity.SetDefault();

            var powers = from characterPower in context.CharacterPowers.Include("GoalsPower")
                         where characterPower.GoalsCharacter.GoalsCharacterId == viewModel.Entity.GoalsCharacterId
                         select characterPower.GoalsPower;
            foreach (var goalsPower in powers)
                context.GoalsPowers.DeleteObject(goalsPower);

            var equipment = from characterEquipment in context.CharacterEquipments.Include("GoalsEquipment")
                            where characterEquipment.GoalsCharacter.GoalsCharacterId == viewModel.Entity.GoalsCharacterId
                            select characterEquipment.GoalsEquipment;
            foreach (var goalsEquipment in equipment)
                context.GoalsEquipments.DeleteObject(goalsEquipment);

            var spells = from characterSpell in context.CharacterSpells.Include("GoalsSpells")
                         where characterSpell.GoalsCharacter.GoalsCharacterId == viewModel.Entity.GoalsCharacterId
                         select characterSpell.GoalsSpell;
            foreach (var goalsSpell in spells)
                context.GoalsSpells.DeleteObject(goalsSpell);
        }

        private static void SetClass(GCSDatabaseEntities context, GoalsCharacterViewModel viewModel, GoalsClass selectedClass)
        {
            if (selectedClass == null) return;
            var powers = from classPower in selectedClass.ClassPowers
                         select classPower.GoalsPower;
            var equipments = from classEquipment in selectedClass.ClassEquipments
                            select classEquipment.GoalsEquipment;
            foreach (var goalsEquipment in equipments)
            {
                var equipment = goalsEquipment.Copy();
                context.GoalsEquipments.AddObject(equipment);
                viewModel.Entity.AddEquipment(equipment, goalsEquipment.GoalsEquipmentId);
            }
            foreach (var goalsPower in powers)
            {
                var targetPower = goalsPower.Copy();
                context.GoalsPowers.AddObject(targetPower);
                viewModel.Entity.AddPower(targetPower, goalsPower.GoalsPowerId);
            }
            viewModel.Entity.HitPoints = selectedClass.StartingHitPoints;
            if (viewModel.Entity.GoalsRace != null)
            {
                if (viewModel.Entity.GoalsRace.IsfavoredClass(selectedClass))
                    viewModel.Entity.ModTraitClass++;
                else
                    viewModel.Entity.Fate++;
            }
        }

        private static void SetRace(GCSDatabaseEntities context, GoalsCharacterViewModel viewModel, GoalsRace selectedRace)
        {
            if (selectedRace == null) return;
            selectedRace.GoalsRaceMetas.Load();
            var powers = from racePower in selectedRace.RacePowers
                         select racePower.GoalsPower;
            foreach (var goalsPower in powers)
            {
                var targetPower = goalsPower.Copy();
                context.GoalsPowers.AddObject(targetPower);
                viewModel.Entity.AddPower(targetPower, goalsPower.GoalsPowerId);
            }
            viewModel.Entity.Speed = selectedRace.Movement;
            foreach (var goalsRaceMeta in selectedRace.GoalsRaceMetas)
            {
                var propertyInfo = viewModel.Entity.GetType().GetProperties().FirstOrDefault(x => x.Name == goalsRaceMeta.PropertyName);
                var entity = viewModel.Entity as object;
                try
                {
                    var value = propertyInfo.GetValue(entity,null);
                    value = goalsRaceMeta.Value + (int)value;
                    propertyInfo.SetValue(entity, value, null);

                }catch{}
            }
            
        }
    }
}