namespace QuanLyAsp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("nhomthongke")]
    public partial class nhomthongke
    {
        [Key]
        public int manhom { get; set; }

        [StringLength(250)]
        public string tennhom { get; set; }

        [StringLength(50)]
        public string ghichu { get; set; }
    }
}
