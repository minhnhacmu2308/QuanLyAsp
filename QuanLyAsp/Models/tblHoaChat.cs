namespace QuanLyAsp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblHoaChat")]
    public partial class tblHoaChat
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblHoaChat()
        {
            tblXetNghiems = new HashSet<tblXetNghiem>();
        }

        [Key]
        public int HcId { get; set; }

        [Required]
        [StringLength(200)]
        public string TenHc { get; set; }

        [Required]
        [StringLength(50)]
        public string DonViTinh { get; set; }

        [StringLength(100)]
        public string GhiChu { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblXetNghiem> tblXetNghiems { get; set; }
    }
}
