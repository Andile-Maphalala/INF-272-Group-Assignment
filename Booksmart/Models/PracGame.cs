
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
    
public partial class PracGame
{

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public PracGame()
    {

        this.PracGameQuestions = new HashSet<PracGameQuestion>();

        this.PracticalGameAttempts = new HashSet<PracticalGameAttempt>();

    }


    public int PracGameID { get; set; }

    public string Description { get; set; }

    public decimal PracType { get; set; }

    public int LevelID { get; set; }



    public virtual Level Level { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<PracGameQuestion> PracGameQuestions { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<PracticalGameAttempt> PracticalGameAttempts { get; set; }

}

}
