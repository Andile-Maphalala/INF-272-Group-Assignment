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
    
    public partial class PracQuestion
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PracQuestion()
        {
            this.PracGameQuestions = new HashSet<PracGameQuestion>();
        }
    
        public int PracQuestionID { get; set; }
        public string Answer { get; set; }
        public string Image { get; set; }
        public decimal Type { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PracGameQuestion> PracGameQuestions { get; set; }
    }
}
