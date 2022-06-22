namespace QuanLyAsp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tcomSample_Test
    {
        [Key]
        public int ComId { get; set; }

        public int? SampleId { get; set; }

        public int? NormId { get; set; }

        [StringLength(300)]
        public string Method { get; set; }

        [StringLength(200)]
        public string Standard { get; set; }

        [StringLength(100)]
        public string Sampler { get; set; }

        [StringLength(700)]
        public string Result { get; set; }

        [Column(TypeName = "money")]
        public decimal? Cost { get; set; }

        [Column(TypeName = "ntext")]
        public string Description { get; set; }

        public bool? IsFinished { get; set; }

        public bool? IsApproval { get; set; }

        [StringLength(50)]
        public string Approver { get; set; }

        [Column(TypeName = "smalldatetime")]
        public DateTime? LastUpdate { get; set; }

        [StringLength(50)]
        public string UserUpdate { get; set; }

        public bool chuyen { get; set; }

        [StringLength(50)]
        public string nguoichuyen { get; set; }

        [Column(TypeName = "smalldatetime")]
        public DateTime? ngaykiemtra { get; set; }

        public bool khongdat { get; set; }

        public DateTime? ngayxn { get; set; }

        public int GiaiDoan { get; set; }

        public int SoLanXN { get; set; }

        public DateTime? ngayhdp { get; set; }

        public virtual tblSample tblSample { get; set; }

        public virtual tlkpNorm tlkpNorm { get; set; }
    }
}
