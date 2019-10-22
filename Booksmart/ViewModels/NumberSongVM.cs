using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Booksmart.ViewModels
{
    public class NumberSongVM
    {
        string video;
        int currentuser;

        public string Video
        {
            get
            {
                return video;
            }

            set
            {
                video = value;
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