using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Booksmart.ViewModels
{
    public class WordGameQuizVM
    {

        string imagepath;
        string question;
        string answer;

        public string Imagepath
        {
            get
            {
                return imagepath;
            }

            set
            {
                imagepath = value;
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

        public string Answer
        {
            get
            {
                return answer;
            }

            set
            {
                answer = value;
            }
        }
    }
}