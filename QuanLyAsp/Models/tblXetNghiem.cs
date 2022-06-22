namespace QuanLyAsp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblXetNghiem")]
    public partial class tblXetNghiem
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int XnId { get; set; }

        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int HcId { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int NormId { get; set; }

        public float LuongSuDung { get; set; }

        [StringLength(50)]
        public string GhiChu { get; set; }

        public int GiaiDoan { get; set; }

        public virtual tblHoaChat tblHoaChat { get; set; }

        public virtual tlkpNorm tlkpNorm { get; set; }
    }
}
