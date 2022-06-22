using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace QuanLyAsp.Models
{
    public partial class QuanLyDbContext : DbContext
    {
        public QuanLyDbContext()
            : base("name=QuanLyDbContext")
        {
        }

        public virtual DbSet<donvitinh> donvitinhs { get; set; }
        public virtual DbSet<nhomthongke> nhomthongkes { get; set; }
        public virtual DbSet<tblContract> tblContracts { get; set; }
        public virtual DbSet<tblCustomer> tblCustomers { get; set; }
        public virtual DbSet<tblDepartment> tblDepartments { get; set; }
        public virtual DbSet<tblEmployee> tblEmployees { get; set; }
        public virtual DbSet<tblHoaChat> tblHoaChats { get; set; }
        public virtual DbSet<tblMenu> tblMenus { get; set; }
        public virtual DbSet<tblOrder> tblOrders { get; set; }
        public virtual DbSet<tblProvince> tblProvinces { get; set; }
        public virtual DbSet<tblSample> tblSamples { get; set; }
        public virtual DbSet<tblUser> tblUsers { get; set; }
        public virtual DbSet<tblXetNghiem> tblXetNghiems { get; set; }
        public virtual DbSet<tcomNorm_Group> tcomNorm_Group { get; set; }
        public virtual DbSet<tcomSample_Test> tcomSample_Test { get; set; }
        public virtual DbSet<tlkpDefault_Signature> tlkpDefault_Signature { get; set; }
        public virtual DbSet<tlkpMethod> tlkpMethods { get; set; }
        public virtual DbSet<tlkpNorm> tlkpNorms { get; set; }
        public virtual DbSet<tlkpNorm_Group> tlkpNorm_Group { get; set; }
        public virtual DbSet<tlkpOrganizationType> tlkpOrganizationTypes { get; set; }
        public virtual DbSet<vqr_Receive_Letter> vqr_Receive_Letter { get; set; }
        public virtual DbSet<vqr_Sample_Forward> vqr_Sample_Forward { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<tblContract>()
                .Property(e => e.Cost)
                .HasPrecision(19, 4);

            modelBuilder.Entity<tblHoaChat>()
                .HasMany(e => e.tblXetNghiems)
                .WithRequired(e => e.tblHoaChat)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<tblMenu>()
                .Property(e => e.Link)
                .IsUnicode(false);

            modelBuilder.Entity<tblOrder>()
                .HasMany(e => e.tblSamples)
                .WithOptional(e => e.tblOrder)
                .WillCascadeOnDelete();

            modelBuilder.Entity<tblSample>()
                .Property(e => e.CostValue)
                .HasPrecision(19, 4);

            modelBuilder.Entity<tblSample>()
                .Property(e => e.phiGTDD)
                .HasPrecision(19, 4);

            modelBuilder.Entity<tblSample>()
                .HasMany(e => e.tcomSample_Test)
                .WithOptional(e => e.tblSample)
                .WillCascadeOnDelete();

            modelBuilder.Entity<tcomSample_Test>()
                .Property(e => e.Cost)
                .HasPrecision(19, 4);

            modelBuilder.Entity<tlkpNorm>()
                .Property(e => e.Cost)
                .HasPrecision(19, 4);

            modelBuilder.Entity<tlkpNorm>()
                .HasMany(e => e.tcomNorm_Group)
                .WithOptional(e => e.tlkpNorm)
                .WillCascadeOnDelete();

            modelBuilder.Entity<tlkpNorm_Group>()
                .HasMany(e => e.tcomNorm_Group)
                .WithOptional(e => e.tlkpNorm_Group)
                .WillCascadeOnDelete();

            modelBuilder.Entity<vqr_Receive_Letter>()
                .Property(e => e.Cost)
                .HasPrecision(19, 4);
        }
    }
}
