namespace QuanLyAsp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tcomNorm_Group
    {
        [Key]
        public int ComID { get; set; }

        public int? GroupId { get; set; }

        public int? NormId { get; set; }

        public virtual tlkpNorm tlkpNorm { get; set; }

        public virtual tlkpNorm_Group tlkpNorm_Group { get; set; }
    }
}
