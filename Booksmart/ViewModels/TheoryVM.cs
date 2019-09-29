using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Booksmart.ViewModels
{
    public class TheoryVM
    {
   
       int theoryGameID;
        string theoryVideo;
       

        public int TheoryGameID
        {
            get
            {
                return theoryGameID;
            }

            set
            {
                theoryGameID = value;
            }
        }

        public string TheoryVideo
        {
            get
            {
                return theoryVideo;
            }

            set
            {
                theoryVideo = value;
            }
        }

   
    }
}
