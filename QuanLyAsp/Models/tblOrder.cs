namespace QuanLyAsp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblOrder")]
    public partial class tblOrder
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblOrder()
        {
            tblSamples = new HashSet<tblSample>();
        }

        [Key]
        public int OrderId { get; set; }

        [StringLength(100)]
        public string OrderNumber { get; set; }

        public int? CustomerId { get; set; }

        [Column(TypeName = "smalldatetime")]
        public DateTime? OrderDate { get; set; }

        [Column(TypeName = "smalldatetime")]
        public DateTime? ReturnDate { get; set; }

        [StringLength(100)]
        public string OrderPerson { get; set; }

        [StringLength(100)]
        public string ContactPhone { get; set; }

        public bool? IsCheckStandard { get; set; }

        [StringLength(450)]
        public string CheckStandard { get; set; }

        public bool? FastTest { get; set; }

        public bool? SubContract { get; set; }

        public bool? ReturnSample { get; set; }

        public bool? Vietnamese { get; set; }

        public bool? English { get; set; }

        public bool? Viet_Eng { get; set; }

        [StringLength(50)]
        public string Require { get; set; }

        [StringLength(100)]
        public string Receiver { get; set; }

        [Column(TypeName = "smalldatetime")]
        public DateTime? LastUpdate { get; set; }

        [StringLength(50)]
        public string UserUpdate { get; set; }

        [StringLength(50)]
        public string Masothue { get; set; }

        public int SaleOff { get; set; }

        public virtual tblCustomer tblCustomer { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblSample> tblSamples { get; set; }
    }
}
