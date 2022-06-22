namespace QuanLyAsp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblMenu")]
    public partial class tblMenu
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        [StringLength(200)]
        public string Name { get; set; }

        [Column(TypeName = "text")]
        public string Link { get; set; }

        public int? ParentId { get; set; }

        public int? Sort { get; set; }

        public bool? Active { get; set; }
    }
}
