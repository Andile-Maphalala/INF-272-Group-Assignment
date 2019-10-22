using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Booksmart.ViewModels
{
    public class LoginVM
    {

        string viewbag;

        public string Viewbag
        {
            get
            {
                return viewbag;
            }

            set
            {
                viewbag = value;
            }
        }
    }
}