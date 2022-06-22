namespace QuanLyAsp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class vqr_Sample_Forward
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int SampleId { get; set; }

        [StringLength(100)]
        public string SampleCode { get; set; }

        public int? OrderId { get; set; }

        [StringLength(255)]
        public string Name { get; set; }

        [StringLength(50)]
        public string Mass { get; set; }

        [StringLength(255)]
        public string State { get; set; }

        public int? Status { get; set; }

        public int? Quantity { get; set; }

        [Key]
        [Column(Order = 1)]
        public bool IsFinished { get; set; }

        [Column(TypeName = "ntext")]
        public string Description { get; set; }

        [Column(TypeName = "ntext")]
        public string Comment { get; set; }

        [Column(TypeName = "ntext")]
        public string Org_Signature { get; set; }

        [Column(TypeName = "ntext")]
        public string Performer_Signature { get; set; }

        [StringLength(50)]
        public string Sampler { get; set; }

        [Column(TypeName = "smalldatetime")]
        public DateTime? SampleDate { get; set; }

        [StringLength(250)]
        public string SampleLocation { get; set; }

        [Column(TypeName = "smalldatetime")]
        public DateTime? LastUpdate { get; set; }

        [StringLength(50)]
        public string UserUpdate { get; set; }

        [StringLength(200)]
        public string MethodName { get; set; }

        [StringLength(250)]
        public string NormName { get; set; }

        public int? TestCount { get; set; }
    }
}
