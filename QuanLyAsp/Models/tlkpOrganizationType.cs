namespace QuanLyAsp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tlkpOrganizationType")]
    public partial class tlkpOrganizationType
    {
        [Key]
        public int TypeId { get; set; }

        [StringLength(200)]
        public string Name { get; set; }

        [Column(TypeName = "ntext")]
        public string Description { get; set; }
    }
}
