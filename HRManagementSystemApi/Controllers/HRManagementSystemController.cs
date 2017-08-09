using HRManagementSystemApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;

namespace HRManagementSystemApi.Controllers
{
    public class HRManagementSystemController : ApiController
    {
        HRManagementSystemEntities db = new HRManagementSystemEntities();
        [HttpGet]
        [Route("api/HRManagementSystem/EmployeeDetails")]
        public bool EmployeeDetails(InformationOfEmployee Information)
        {

            var values = db.EmployeeDetails.ToList();
            if (values != null)
            {
                foreach (var e in values)
                {
                    InformationOfEmployee emp = new InformationOfEmployee();
                    emp.Id = e.Id;
                    emp.Name = e.Name;
                    emp.Post = e.Post;
                    emp.Qualification = e.Qualification;
                    emp.Skills = e.Skills;
                    emp.Hiring = e.Hiring;
                    emp.Description = e.Description;
                    db.EmployeeDetails.Add(e);
                    db.SaveChanges();
                }
                return true;
            }


            else
            {
                return false;
            }
        }


        [HttpGet]
        [Route("api/HRManagementSystem/EmployeePerformance")]
        public bool EmployeePerformance(InformationOfEmployee Information)
        {
            var employee = db.EmployeeManagements.FirstOrDefault(e => e.EmployeeId ==  EmployeeId);
            if (employee != null)
            {
                foreach (var e in employee)
                {
                    InformationOfEmployee emp = new InformationOfEmployee();
                    emp.Id = e.Id;
                    emp.Attendance = e.Name;
                    emp.Leave = e.Discription;
                    emp.ProjectDetails = e.StartDate;
                    emp.Trainings = e.Trainings;
                    emp.Apprasel = e.Apprasel;
                    
                    EmployeeDetail.Update(emp);
                }
                return true;
            }
           

        
        }


        [HttpGet]
        [Route("api/HRManagementSystem/Payroll")]
        public float Payroll()
        {
            return 0;
        }






        public int? EmployeeId { get; set; }
    }
}
