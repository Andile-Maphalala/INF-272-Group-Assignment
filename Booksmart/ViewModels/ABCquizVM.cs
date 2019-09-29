using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Booksmart.ViewModels
{
    public class ABCquizVM
    {
        int theoryQuestionID;
        string question;
        string answer;

        public int TheoryQuestionID
        {
            get
            {
                return theoryQuestionID;
            }

            set
            {
                theoryQuestionID = value;
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
    

