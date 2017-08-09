using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HRManagementSystemApi.Models
{
    public class InformationOfEmployee
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Post { get; set; }
        public string Qualification { get; set; }
        public string Skills { get; set; }
        public string Attendance { get; set; }
        public string Leave { get; set; }
        public string Training { get; set; }
        public string hire { get; set; }
        public string fire { get; set; }
        public string ProjectDetails { get; set; }
        public string ExpenseClaims { get; set; }
        public float Salary { get; set; }
        public int EmployeeId { get; set; }
        public string Hiring { get; set; }

        public string Description { get; set; }
    }
}