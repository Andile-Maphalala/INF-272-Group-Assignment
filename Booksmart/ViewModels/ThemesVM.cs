using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Booksmart.ViewModels
{
    public class ThemesVM
    {
        string imagepath;

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
    }
}