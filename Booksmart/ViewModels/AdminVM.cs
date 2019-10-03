using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Booksmart.ViewModels
{
    public class AdminVM
    {
        int adminID;
        string name;
        string surname;
        string email;
        string cellphoneNo;

        public int AdminID
        {
            get
            {
                return adminID;
            }

            set
            {
                adminID = value;
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

        public string CellphoneNo
        {
            get
            {
                return cellphoneNo;
            }

            set
            {
                cellphoneNo = value;
            }
        }

    }
}