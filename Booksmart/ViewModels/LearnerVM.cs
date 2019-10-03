using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Booksmart.ViewModels
{
    public class LearnerVM
    {
        int learnerID;
        string name;
        string surname;
        int age;
        DateTime dateofbirth;
        int pointbalance;

        public int LearnerID
        {
            get
            {
                return learnerID;
            }

            set
            {
                learnerID = value;
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

        public int PointBalance
        {
            get
            {
                return pointbalance;
            }

            set
            {
                pointbalance = value;
            }
        }
    }
}