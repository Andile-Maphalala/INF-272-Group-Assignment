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
    
    public partial class Admin
    {
        public int AdminID { get; set; }
        public string AdminName { get; set; }
        public string Surname { get; set; }
        public string Email { get; set; }
        public string CellphoneNo { get; set; }
        public int UserID { get; set; }
        public int GenderID { get; set; }
    
        public virtual Gender Gender { get; set; }
        public virtual User User { get; set; }
    }
}
