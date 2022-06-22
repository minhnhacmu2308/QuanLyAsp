namespace QuanLyAsp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblUser")]
    public partial class tblUser
    {
        [Key]
        public int UserId { get; set; }

        public int? EmployeeId { get; set; }

        [StringLength(50)]
        public string UName { get; set; }

        [StringLength(50)]
        public string PW { get; set; }

        public bool IsAdmin { get; set; }

        public bool IsUpdate { get; set; }

        public bool IsTest { get; set; }

        public bool IsResponse { get; set; }

        public bool? IsApproval { get; set; }

        public bool? taphop { get; set; }

        public bool? chuyen { get; set; }

        public bool? chitieu { get; set; }

        public bool? suaketqua { get; set; }

        public bool hoachat { get; set; }
    }
}
