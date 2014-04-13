using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using GoalsCharacterSheet.Core.Entities;
using GoalsCharacterSheet.Web.Models;
using GoalsCharacterSheet.Web.Models.Contracts;

namespace GoalsCharacterSheet.Web.Controllers
{
    public class GoalsClassesController : BaseController<GoalsClassViewModel>
    {
        public GoalsClassesController()
        {
            CanEdit = true;
        }

        public override string Title
        {
            get { return "GoalsClass"; }
        }

        public override void DeleteItem(int id)
        {
            throw new UnauthorizedAccessException();
        }

        public override GoalsClassViewModel GetItem(int id)
        {
            using (var context = new GCSDatabaseEntities())
            {
                return new GoalsClassViewModel(context.GoalsClasses.First(x => x.GoalsClassId == id));
            }
        }

        public override List<GoalsClassViewModel> GetList(int page, int max)
        {
            using (var context = new GCSDatabaseEntities())
            {
                IQueryable<GoalsClass> entities;
                if (max > 0)
                {
                    entities = from item in context.GoalsClasses.
                                   Take(max).OrderBy(x => x.Name).Skip(page*max)
                               select item;
                }
                else
                {
                    entities = from item in context.GoalsClasses.
                                   OrderBy(x => x.Name)
                               select item;
                }

                return (from entitiy in entities.ToList()
                        select new GoalsClassViewModel(entitiy)).ToList();
            }
        }

        public override IDisplay SaveItem(FormCollection collection)
        {
            throw new UnauthorizedAccessException();
        }
    }
}