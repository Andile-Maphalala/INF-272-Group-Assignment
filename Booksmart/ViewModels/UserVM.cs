using System;
using System.Collections.Generic;
using System.Linq;

namespace Booksmart.ViewModels
{
    public class DataResult
    {
        public List<IGrouping<string, UserVM>> results { get; set; }
        public Dictionary<string, double?> chartData { get; set; }
    }
    public class UserVM
    {
        int userID;
        string username;
        string password;
        public DateTime? LastLogin
        {
            get; set;
        }

        public int UserID
        {
            get
            {
                return userID;
            }

            set
            {
                userID= value;
            }
        }

        public string Username
        {
            get
            {
                return username;
            }

            set
            {
                username = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }

            set
            {
                password = value;
            }
        }
    }
}