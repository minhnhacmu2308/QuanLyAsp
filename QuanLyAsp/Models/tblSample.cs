namespace QuanLyAsp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblSample")]
    public partial class tblSample
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblSample()
        {
            tcomSample_Test = new HashSet<tcomSample_Test>();
        }

        [Key]
        public int SampleId { get; set; }

        [Required]
        [StringLength(100)]
        public string SampleCode { get; set; }

        public int? OrderId { get; set; }

        public string Name { get; set; }

        [StringLength(100)]
        public string Mass { get; set; }

        [StringLength(50)]
        public string KeepMass { get; set; }

        [StringLength(750)]
        public string State { get; set; }

        public int? Quantity { get; set; }

        public int? Status { get; set; }

        [StringLength(300)]
        public string KeepTime { get; set; }

        public bool? IsFinished { get; set; }

        [Column(TypeName = "ntext")]
        public string Description { get; set; }

        [Column(TypeName = "ntext")]
        public string Comment { get; set; }

        [Column(TypeName = "ntext")]
        public string Org_Signature { get; set; }

        [Column(TypeName = "ntext")]
        public string Performer_Signature { get; set; }

        [StringLength(150)]
        public string Sampler { get; set; }

        public DateTime? SampleDate { get; set; }

        public string SampleLocation { get; set; }

        public DateTime? ReturnDate { get; set; }

        [StringLength(200)]
        public string CostName { get; set; }

        [Column(TypeName = "money")]
        public decimal? CostValue { get; set; }

        public bool? Liquidated { get; set; }

        public DateTime? LastUpdate { get; set; }

        [StringLength(100)]
        public string UserUpdate { get; set; }

        [StringLength(50)]
        public string phanloai { get; set; }

        [StringLength(50)]
        public string kntt { get; set; }

        [StringLength(50)]
        public string skmt { get; set; }

        public DateTime? thluumau { get; set; }

        [StringLength(250)]
        public string nhomthongke { get; set; }

        public DateTime? fromdate { get; set; }

        public DateTime? todate { get; set; }

        public bool dichvu { get; set; }

        [StringLength(50)]
        public string phanloaisp { get; set; }

        [StringLength(1000)]
        public string Dacdiem { get; set; }

        [StringLength(500)]
        public string Motamau { get; set; }

        [Column(TypeName = "money")]
        public decimal? phiGTDD { get; set; }

        [StringLength(50)]
        public string NoiGui { get; set; }

        [StringLength(50)]
        public string NguonMau { get; set; }

        [StringLength(50)]
        public string Bo { get; set; }

        [StringLength(150)]
        public string Mauan { get; set; }

        public virtual tblOrder tblOrder { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tcomSample_Test> tcomSample_Test { get; set; }
    }
}
