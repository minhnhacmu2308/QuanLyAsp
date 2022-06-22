namespace QuanLyAsp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("donvitinh")]
    public partial class donvitinh
    {
        [Key]
        public int stt { get; set; }

        [Column("donvitinh")]
        [StringLength(50)]
        public string donvitinh1 { get; set; }

        [StringLength(50)]
        public string ghichu { get; set; }
    }
}
