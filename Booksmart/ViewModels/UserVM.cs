using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Booksmart.Models;

namespace Booksmart.ViewModels
{
    public class UserVM
    {
        public User user;
        int userID;
        string username;
        string password;

        public void RefreshGuid(Del_4_272Entities db)
        {
            db.Configuration.ProxyCreationEnabled = false;
            user.Guid = Guid.NewGuid().ToString();
            var guids = db.Users.Where(usr => usr.Guid == user.Guid).Count();
            if (guids > 0)
                RefreshGuid(db);
            else
            {
                var u = db.Users.Where(xx => xx.UserID == user.UserID).FirstOrDefault();
                db.Entry(u).CurrentValues.SetValues(user);
                db.SaveChanges();
            }
        }

        public bool IsLogedIn(Del_4_272Entities db)
        {
            db.Configuration.ProxyCreationEnabled = false;
            var guids = db.Users.Where(usr => usr.Guid == user.Guid).Count();
            if (guids > 0)
                return true;
            return false;
        }

        public bool IsLogedIn(Del_4_272Entities db, string userGUID)
        {
            db.Configuration.ProxyCreationEnabled = false;
            user = db.Users.Where(usr => usr.Guid == userGUID).FirstOrDefault();
            if (user != null)
                return true;
            return false;
        }
        public int UserID
        {
            get
            {
                return userID;
            }

            set
            {
                userID = value;
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

