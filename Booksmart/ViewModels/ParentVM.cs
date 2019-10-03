using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Booksmart.ViewModels
{
    public class ParentVM
    {
        int parentID;
        string name;
        string surname;
        int age;
        string gender;
        DateTime dateofbirth;
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

        public int Age
        {
            get
            {
                return age;
            }

            set
            {
                age = value;
            }
        }

        public string Gender
        {
            get
            {
                return gender;
            }

            set
            {
                gender = value;
            }
        }

        public DateTime DOB
        {
            get
            {
                return dateofbirth;
            }

            set
            {
                dateofbirth = value;
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
    }
}