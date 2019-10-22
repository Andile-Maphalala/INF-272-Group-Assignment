using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Booksmart.ViewModels
{
    public class NumberGameVM
    {
        int id;
        string image;
        string answer;
        int currentuser;

        public string Image
        {
            get
            {
                return image;
            }

            set
            {
                image = value;
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

        public int Currentuser
        {
            get
            {
                return currentuser;
            }

            set
            {
                currentuser = value;
            }
        }
    }
}