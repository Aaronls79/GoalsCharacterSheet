using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using GoalsCharacterSheet.Core.Entities;
using GoalsCharacterSheet.Web.Models;
using GoalsCharacterSheet.Web.Runtime;

namespace GoalsCharacterSheet.Web.Controllers
{
    [Authorize]
    public class PrintController : Controller
    {

        public ActionResult Index(int id)
        {
            var character = GetItem(id);
            //Response.ContentType = "application/pdf";
            //Response.AddHeader("content-disposition", string.Format("attachment;filename={0}.pdf", character.Entity.Name));
            //Response.Cache.SetCacheability(HttpCacheability.NoCache);
            //var stringBuilder = new StringBuilder();
            //stringBuilder.AppendLine(character.Entity.ToPrintable());
            //var pdfConverter = new PdfConverter();
            //// set the converter options - optional
            //pdfConverter.PdfDocumentOptions.PdfPageSize = PdfPageSize.A4;
            //pdfConverter.PdfDocumentOptions.PdfCompressionLevel = PdfCompressionLevel.Normal;
            //pdfConverter.PdfDocumentOptions.PdfPageOrientation = PdfPageOrientation.Portrait;
            //byte[] pdfBytes = pdfConverter.GetPdfBytesFromHtmlString(stringBuilder.ToString());
            //Response.BinaryWrite(pdfBytes); 
            //Response.End();
            return Content(character.Entity.ToPrintable());
        }

        
        public virtual GoalsCharacterViewModel GetItem(int id)
        {
            using (var context = new GCSDatabaseEntities())
            {
                var viewModel = new GoalsCharacterViewModel(context.GoalsCharacters
                    .Include("GoalsClass")
                    .Include("GoalsRace")
                    .Include("CharacterPowers.GoalsPower")
                    .Include("CharacterEquipments.GoalsEquipment")
                    .Include("CharacterSpells.GoalsSpell")
                    .FirstOrDefault(x => x.GoalsCharacterId == id)
                );
                if (viewModel.Entity.GoalsClass != null && viewModel.Entity.GoalsRace != null)
                {
                    ViewBag.Message = "You class and race is set. Be sure to remove unused equpment and modifiy traits. For more information see \"Superior Trait\" and \"Record Equipment\" page 70";
                }
                return viewModel;
            }
        }
    }
}
