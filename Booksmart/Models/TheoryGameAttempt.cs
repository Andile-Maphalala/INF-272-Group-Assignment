//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class TheoryGameAttempt
    {
        public int Score { get; set; }
        public int TheoryGameID { get; set; }
        public int LearnerID { get; set; }
        public int ID { get; set; }
        public System.DateTime AttemptDate { get; set; }
    
        public virtual Learner Learner { get; set; }
        public virtual TheoryGame TheoryGame { get; set; }
    }
}
