﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Booksmart.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Del_4_272Entities : DbContext
    {
        public Del_4_272Entities()
            : base("name=Del_4_272Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Achievement> Achievements { get; set; }
        public virtual DbSet<Admin> Admins { get; set; }
        public virtual DbSet<Country> Countries { get; set; }
        public virtual DbSet<Gender> Genders { get; set; }
        public virtual DbSet<Learner> Learners { get; set; }
        public virtual DbSet<Level> Levels { get; set; }
        public virtual DbSet<Parent> Parents { get; set; }
        public virtual DbSet<PracGame> PracGames { get; set; }
        public virtual DbSet<PracGameQuestion> PracGameQuestions { get; set; }
        public virtual DbSet<PracQuestion> PracQuestions { get; set; }
        public virtual DbSet<PracticalGameAttempt> PracticalGameAttempts { get; set; }
        public virtual DbSet<ShortStory> ShortStories { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<Theme> Themes { get; set; }
        public virtual DbSet<TheoryGame> TheoryGames { get; set; }
        public virtual DbSet<TheoryGameAttempt> TheoryGameAttempts { get; set; }
        public virtual DbSet<TheoryGameQuestion> TheoryGameQuestions { get; set; }
        public virtual DbSet<TheoryQuestion> TheoryQuestions { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<UserAchievement> UserAchievements { get; set; }
        public virtual DbSet<UserType> UserTypes { get; set; }
    }
}