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

        public ActionResult AdminPage()
        {
            return View();
        }

        public ActionResult ParentPage()
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

        
     
      
        public ActionResult NumberQuiz(string nada)
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



        //[HttpGet]
        //public ActionResult Result()
        //{
        //    return View();

        //}

        [HttpPost]
        public ActionResult Result(int userAnswer_1,int userAnswer_2,int userAnswer_3,int userAnswer_4,int userAnswer_5 ,int userAnswer_6, int userAnswer_7, int userAnswer_8, int userAnswer_9, int userAnswer_10,int Answer_1,int Answer_2, int Answer_3, int Answer_4, int Answer_5, int Answer_6, int Answer_7, int Answer_8, int Answer_9,int Answer_10)
        {
            List<int> UserAnswers = new List<int>();
            UserAnswers.Add(userAnswer_1);
            UserAnswers.Add(userAnswer_2);
            UserAnswers.Add(userAnswer_3);
            UserAnswers.Add(userAnswer_4);
            UserAnswers.Add(userAnswer_5);
            UserAnswers.Add(userAnswer_6);
            UserAnswers.Add(userAnswer_7);
            UserAnswers.Add(userAnswer_8);
            UserAnswers.Add(userAnswer_9);
            UserAnswers.Add(userAnswer_10);

            List<int> CorrectAnswers = new List<int>();
            CorrectAnswers.Add(Answer_1);
            CorrectAnswers.Add(Answer_2);
            CorrectAnswers.Add(Answer_3);
            CorrectAnswers.Add(Answer_4);
            CorrectAnswers.Add(Answer_5);
            CorrectAnswers.Add(Answer_6);
            CorrectAnswers.Add(Answer_7);
            CorrectAnswers.Add(Answer_8);
            CorrectAnswers.Add(Answer_9);
            CorrectAnswers.Add(Answer_10);

            var count = 0;

            for (int i = 0; i < 10; i++)
            {
                if(UserAnswers[i]== CorrectAnswers[i])
                {
                    count++;
                }

                ViewBag.RESULT = count;
            }

            //    foreach (var UserAns in UserAnswers)
            //{



            //foreach (var CorrectAns in CorrectAnswers)
            //{
            //    if(UserAns==CorrectAns)
            //    {
            //        count++;
            //    }
            //    else { }
            //}
            //}

            Del_4_272Entities db = new Del_4_272Entities();
            TheoryGameAttempt addScore = new TheoryGameAttempt();
            addScore.Score = ViewBag.RESULT;
            addScore.AttemptDate = DateTime.Now ;
            addScore.TheoryGameID = 1;
            addScore.LearnerID = 2;
            db.TheoryGameAttempts.Add(addScore);
           
            db.SaveChanges();




                return View("Theory", ViewBag.RESULT);
        

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