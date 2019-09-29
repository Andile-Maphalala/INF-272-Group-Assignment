using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Booksmart.ViewModels
{
    public class NumberQuizVM
    {

        int id;
        string question;
        string userAnswer;

        public int Id
        {
            get
            {
                return id;
            }

            set
            {
                id = value;
            }
        }

        public string Question
        {
            get
            {
                return question;
            }

            set
            {
                question = value;
            }
        }

        public string UserAnswer
        {
            get
            {
                return userAnswer;
            }

            set
            {
                userAnswer = value;
            }
        }
    }
}