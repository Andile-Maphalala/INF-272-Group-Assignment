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
    
    public partial class PracGameQuestion
    {
        public int PracQuestionID { get; set; }
        public int ID { get; set; }
        public int PracGameID { get; set; }
    
        public virtual PracGame PracGame { get; set; }
        public virtual PracQuestion PracQuestion { get; set; }
    }
}