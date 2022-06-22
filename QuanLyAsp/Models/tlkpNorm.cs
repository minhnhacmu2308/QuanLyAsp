namespace QuanLyAsp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tlkpNorm")]
    public partial class tlkpNorm
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tlkpNorm()
        {
            tblXetNghiems = new HashSet<tblXetNghiem>();
            tcomNorm_Group = new HashSet<tcomNorm_Group>();
            tcomSample_Test = new HashSet<tcomSample_Test>();
        }

        [Key]
        public int NormId { get; set; }

        [Required]
        [StringLength(300)]
        public string Name { get; set; }

        public int? DeptId { get; set; }

        [StringLength(300)]
        public string Method { get; set; }

        [StringLength(300)]
        public string Standard { get; set; }

        [Column(TypeName = "money")]
        public decimal Cost { get; set; }

        [Column(TypeName = "smalldatetime")]
        public DateTime? LastUpdate { get; set; }

        [StringLength(50)]
        public string UserUpdate { get; set; }

        [StringLength(100)]
        public string ghichu { get; set; }

        public int? nhom { get; set; }

        public int? thutu { get; set; }

        public bool chunghieng { get; set; }

        public bool dichvu { get; set; }

        public bool camquan { get; set; }

        [StringLength(50)]
        public string donvitinh { get; set; }

        [StringLength(50)]
        public string ttqd { get; set; }

        public bool qd47 { get; set; }

        [Required]
        [StringLength(30)]
        public string phanloai { get; set; }

        public int thutuqc01 { get; set; }

        public int thutuqckhac { get; set; }

        public int thutuqc08 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblXetNghiem> tblXetNghiems { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tcomNorm_Group> tcomNorm_Group { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tcomSample_Test> tcomSample_Test { get; set; }
    }
}
