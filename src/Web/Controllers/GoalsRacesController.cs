using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using GoalsCharacterSheet.Core.Entities;
using GoalsCharacterSheet.Web.Models;
using GoalsCharacterSheet.Web.Models.Contracts;

namespace GoalsCharacterSheet.Web.Controllers
{
    public class GoalsRacesController : BaseController<GoalsRaceViewModel>
    {
        public GoalsRacesController()
        {
            CanEdit = true;
        }

        public override string Title
        {
            get { return "GoalsRace"; }
        }

        public override void DeleteItem(int id)
        {
            //var viewModel = GetItem(id);
                throw new UnauthorizedAccessException();
        }

        public override GoalsRaceViewModel GetItem(int id)
        {
            using (var context = new GCSDatabaseEntities())
            {
                return new GoalsRaceViewModel(context.GoalsRaces.First(x => x.GoalsRaceId == id));
            }
        }

        public override List<GoalsRaceViewModel> GetList(int page, int max)
        {
            using (var context = new GCSDatabaseEntities())
            {
                IQueryable<GoalsRace> entities;
                if (max > 0)
                {
                    entities = from item in context.GoalsRaces.
                                   Take(max).OrderBy(x => x.Name).Skip(page*max)
                               select item;
                }
                else
                {
                    entities = from item in context.GoalsRaces.
                                   OrderBy(x => x.Name)
                               select item;
                }

                return (from entitiy in entities.ToList()
                        select new GoalsRaceViewModel(entitiy)).ToList();
            }
        }

        public override IDisplay SaveItem(FormCollection collection)
        {
            throw new UnauthorizedAccessException();
        }
    }
}