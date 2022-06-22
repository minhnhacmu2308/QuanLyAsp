namespace QuanLyAsp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblEmployee")]
    public partial class tblEmployee
    {
        [Key]
        public int EmployeeId { get; set; }

        public int? DeptId { get; set; }

        [StringLength(100)]
        public string FirstName { get; set; }

        [StringLength(100)]
        public string LastName { get; set; }

        public bool Sex { get; set; }

        [Column(TypeName = "smalldatetime")]
        public DateTime? BirthDay { get; set; }

        [StringLength(255)]
        public string Address { get; set; }

        [StringLength(50)]
        public string Home { get; set; }

        [StringLength(50)]
        public string Mobile { get; set; }

        [StringLength(50)]
        public string Email { get; set; }

        [Column(TypeName = "ntext")]
        public string Description { get; set; }
    }
}
