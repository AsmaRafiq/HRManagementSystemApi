﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HRManagementSystemApi
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class HRManagementSystemEntities : DbContext
    {
        public HRManagementSystemEntities()
            : base("name=HRManagementSystemEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<EmployeeDetail> EmployeeDetails { get; set; }
        public DbSet<EmployeeManagement> EmployeeManagements { get; set; }
        public DbSet<Payroll> Payrolls { get; set; }
    }
}