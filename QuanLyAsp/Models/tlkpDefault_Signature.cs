namespace QuanLyAsp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tlkpDefault_Signature
    {
        [Key]
        public int SignatureId { get; set; }

        [Column(TypeName = "ntext")]
        public string Org_Signature { get; set; }

        [Column(TypeName = "ntext")]
        public string Performer_Signature { get; set; }
    }
}
