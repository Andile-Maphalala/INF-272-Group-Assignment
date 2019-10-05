using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Booksmart.Models;

namespace Booksmart.Controllers
{
    public class BooksmartController : Controller
    {
        // GET: Booksmart
        public ActionResult Index()
        {
            return View();
        }


        public ActionResult Login()
        {
            return View();
        }

        public ActionResult Register()
        {
            return View();
        }

        public ActionResult HomePage()
        {
            return View();
        }

        public ActionResult Theory()
        {
            return View();
        }
        public ActionResult ABCquiz()
        {
            Del_4_272Entities db = new Del_4_272Entities();
            db.Configuration.ProxyCreationEnabled = false;
            //Random rnd = new Random();
            //load questions to view
            var qlist = db.TheoryQuestions.Where(xx => xx.Type == 1).ToList();
            //var questions = db.TheoryQuestions.Where(xx => xx.Type == 0).OrderBy().ToList();
            var questions = from item in qlist
                            orderby Guid.NewGuid() ascending
                            select item;
            return View(questions.ToList());
        }
        public ActionResult ABCsong()
        {
            return View();
        }
        public ActionResult NumberGame()
        {
            return View();
        }
        public ActionResult Numbergamequiz()
        {
            return View();
        }
        public ActionResult Wordgame()
        {
            return View();
        }
        public ActionResult PracticalMenu()
        {
            return View();
        }

        public ActionResult NumberSong()
        {
            return View();
        }

        public ActionResult NumberQuiz()
        { Del_4_272Entities db = new Del_4_272Entities();
            db.Configuration.ProxyCreationEnabled = false;
            //Random rnd = new Random();
            //load questions to view
            var qlist = db.TheoryQuestions.Where(xx => xx.Type == 0).ToList();
            //var questions = db.TheoryQuestions.Where(xx => xx.Type == 0).OrderBy().ToList();
            var questions = from item in qlist
                            orderby Guid.NewGuid() ascending
                            select item;

            return View(questions.ToList());
        }
        public ActionResult Wordgame_Quiz()
        {
            return View();
        }
        public ActionResult Entertainment()
        {
            return View();
        }
        public ActionResult Practical()
        {
            return View();
        }

        public ActionResult UserPerformance()
        {
            return View();
        }

        public ActionResult InactiveUser()
        {
            return View();
        }

        public ActionResult Theme()
        {
            return View();
        }
    }
}