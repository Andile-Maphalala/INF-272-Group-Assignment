using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Booksmart.Models;
using Booksmart.ViewModels;
using System.Data.Entity;

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


            List<ABCquizVM> list = new List<ABCquizVM>();

            foreach (var dm in questions.ToList())
            {
                ABCquizVM items = new ABCquizVM();
                items.TheoryQuestionID = dm.TheoryQuestionID;
                items.Question = dm.Question;
                items.Answer = dm.Answer;

                list.Add(items);

            }
        return View(questions.ToList());
    }
    public ActionResult ABCsong()
        {
            Del_4_272Entities db = new Del_4_272Entities();

            var det = db.TheoryGames.Where(xx => xx.TheoryGameID == 2).FirstOrDefault();

            ABCsongVM ist = new ABCsongVM();


            ist.TheoryGameID = det.TheoryGameID;
            ist.TheoryVideo = det.TheoryVideo;
            //foreach (var mn in list.ToList ())
            //{
            //    ABCsongVM items = new ABCsongVM();
            //    items.TheoryGameID = mn.TheoryGameID;
            //    items.TheoryVideo = mn.TheoryVideo;
                

            //    list.Add(items);

            //}
            return View(ist);
        }
        public ActionResult NumberGame()
        {
            Del_4_272Entities db = new Del_4_272Entities();
            db.Configuration.ProxyCreationEnabled = false;
            //Random rnd = new Random();
            //load questions to view
            var alist = db.PracQuestions.Where(xx => xx.Type == 1).ToList();
            //var questions = db.TheoryQuestions.Where(xx => xx.Type == 0).OrderBy().ToList();
            return View(alist.ToList());

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
        {
            Del_4_272Entities db = new Del_4_272Entities();
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
        public ActionResult Result(int userAnswer_1, int userAnswer_2, int userAnswer_3, int userAnswer_4, int userAnswer_5, int userAnswer_6, int userAnswer_7, int userAnswer_8, int userAnswer_9, int userAnswer_10, int Answer_1, int Answer_2, int Answer_3, int Answer_4, int Answer_5, int Answer_6, int Answer_7, int Answer_8, int Answer_9, int Answer_10)
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
                if (UserAnswers[i] == CorrectAnswers[i])
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
            addScore.AttemptDate = DateTime.Now;
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

   //     public ActionResult UserPerformance()
   //     {
   //         Del_4_272Entities db = new Del_4_272Entities();
   //         db.Configuration.ProxyCreationEnabled = false;
   //         DataResult res = new DataResult();
   //         //var UserReport = db.Learners.Include(ii => ii);

   //         var report = db.Learners.Include(i => i.TheoryGameAttempts).Include(y => y.PracticalGameAttempts).ToList().Select(r => new UserPerformance
   //         {
   //             name = r.Name,
   //             surname = r.Surname,
   //             averagePrac = r.PracticalGameAttempts.Average(xx => xx.PracticalGameScore),

   //             averageTheory = r.TheoryGameAttempts.Average(xx => xx.Score)
   //         }
   //         );
   //         //).Where().ToList();
   //         var query =
   //from post in db.Learners
   //join meta in db.PracticalGameAttempts on post.LearnerID equals meta.LearnerID
   //join deta in db.TheoryGameAttempts on post.LearnerID equals deta.LearnerID
   ////where post.ID == id
   //select new { post.Name, post.Surname, meta.PracticalGameScore, deta.Score };
   //         res.results = report.GroupBy(u => u.name).ToList();


   //         return View(res);
   //     }

        public ActionResult InactiveUser()
        {
            Del_4_272Entities db = new Del_4_272Entities();
            db.Configuration.ProxyCreationEnabled = false;
            DataResult report = new DataResult();

            var REPORT1 = db.Learners.Include(mm => mm.User).Where(ii => DbFunctions.DiffDays(ii.User.LastLoginDate, DateTime.Now) > 30).ToList();



            return View(REPORT1);
        }

        public ActionResult Theme()
        {
            return View();
        }
        public ActionResult Result_ABC()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Result_ABC(string userAnswer_1, string userAnswer_2, string userAnswer_3, string userAnswer_4, string userAnswer_5, string userAnswer_6, string userAnswer_7, string userAnswer_8, string userAnswer_9, string userAnswer_10, string Answer_1, string Answer_2, string Answer_3, string Answer_4, string Answer_5, string Answer_6, string Answer_7, string Answer_8, string Answer_9, string Answer_10)
        {
            List<string> UserAnswers = new List<string>();
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

            List<string> CorrectAnswers = new List<string>();
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
                if (UserAnswers[i] == CorrectAnswers[i])
                {
                    count++;
                }

                ViewBag.RESULT_ABC = count;

                Del_4_272Entities db = new Del_4_272Entities();
                TheoryGameAttempt addScore = new TheoryGameAttempt();
                addScore.Score = ViewBag.RESULT_ABC;
                addScore.AttemptDate = DateTime.Now;
                addScore.TheoryGameID = 1;
                addScore.LearnerID = 2;
                db.TheoryGameAttempts.Add(addScore);

                db.SaveChanges();
            }
            return View("Theory", ViewBag.RESULT_ABC);

        }
    }
}