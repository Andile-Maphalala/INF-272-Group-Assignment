using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Booksmart.Models;

namespace Booksmart.ViewModels
{
    public class ParentVM
    {
        List<Learner> children;
        int parentID;
        string name;
        string surname;
        string email;

        public int ParentID
        {
            get
            {
                return parentID;
            }

            set
            {
                parentID = value;
            }
        }

        public string Name
        {
            get
            {
                return name;
            }

            set
            {
                name = value;
            }
        }

        public string Surname
        {
            get
            {
                return surname;
            }

            set
            {
                surname = value;
            }
        }

      

        public string Email
        {
            get
            {
                return email;
            }

            set
            {
                email = value;
            }
        }

        public List<Learner> Children
        {
            get
            {
                return children;
            }

            set
            {
                children = value;
            }
        }
    }
}