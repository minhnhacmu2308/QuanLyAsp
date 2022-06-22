namespace QuanLyAsp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblContract")]
    public partial class tblContract
    {
        [Key]
        public int ContractId { get; set; }

        public int? SampleId { get; set; }

        [StringLength(300)]
        public string Norm { get; set; }

        [StringLength(300)]
        public string Location { get; set; }

        [Column(TypeName = "money")]
        public decimal? Cost { get; set; }
    }
}
