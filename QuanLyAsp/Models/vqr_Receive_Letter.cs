namespace QuanLyAsp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class vqr_Receive_Letter
    {
        [StringLength(250)]
        public string NormName { get; set; }

        [StringLength(200)]
        public string MedName { get; set; }

        [Key]
        public bool FastTest { get; set; }

        [Column(TypeName = "money")]
        public decimal? Cost { get; set; }
    }
}
