namespace QuanLyAsp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblProvince")]
    public partial class tblProvince
    {
        [Key]
        public int ProvinceId { get; set; }

        [StringLength(50)]
        public string Code { get; set; }

        [StringLength(200)]
        public string Name { get; set; }

        [Column(TypeName = "ntext")]
        public string Description { get; set; }
    }
}
