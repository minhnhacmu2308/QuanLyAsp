namespace QuanLyAsp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tlkpMethod")]
    public partial class tlkpMethod
    {
        [Key]
        public int MethodId { get; set; }

        public int? NormId { get; set; }

        [StringLength(200)]
        public string Name { get; set; }

        [StringLength(200)]
        public string Standard { get; set; }

        [Column(TypeName = "smalldatetime")]
        public DateTime? LastUpdate { get; set; }

        [StringLength(50)]
        public string UserUpdate { get; set; }
    }
}
