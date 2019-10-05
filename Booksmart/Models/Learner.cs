
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
    
public partial class Learner
{

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Learner()
    {

        this.PracticalGameAttempts = new HashSet<PracticalGameAttempt>();

        this.TheoryGameAttempts = new HashSet<TheoryGameAttempt>();

        this.UserAchievements = new HashSet<UserAchievement>();

    }


    public int LearnerID { get; set; }

    public string Name { get; set; }

    public string Surname { get; set; }

    public string Age { get; set; }

    public System.DateTime DOB { get; set; }

    public string PointBalance { get; set; }

    public int ThemeID { get; set; }

    public int ParentID { get; set; }

    public int UserID { get; set; }

    public int LevelID { get; set; }

    public int GenderID { get; set; }



    public virtual Gender Gender { get; set; }

    public virtual Level Level { get; set; }

    public virtual Parent Parent { get; set; }

    public virtual Theme Theme { get; set; }

    public virtual User User { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<PracticalGameAttempt> PracticalGameAttempts { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<TheoryGameAttempt> TheoryGameAttempts { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<UserAchievement> UserAchievements { get; set; }

}

}
