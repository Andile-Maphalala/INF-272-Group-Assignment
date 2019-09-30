using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Booksmart.ViewModels
{
    public class EntertainmentVM
    {
        string imagepath;
        string storypath;

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

        public string Storypath
        {
            get
            {
                return storypath;
            }

            set
            {
                storypath = value;
            }
        }
    }
}