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
        [Route("api/HRManagementSystem/NewEmployee")]
        public bool NewEmployee(EmployeeDetail Information)
        {
            //var emp = new EmployeeDetail();
            if(Information!=null)
            {
                db.EmployeeDetails.Add(Information);
                db.SaveChanges();

                return true;
            }
            else
            {
                return false;
            }
            
        }


        [HttpGet]
        [Route("api/HRManagementSystem/EmployeePerformance")]
        public bool EmployeePerformance(EmployeeManagement Information)
        {
            if (Information != null)
            {
                db.EmployeeManagements.Add(Information);
                db.SaveChanges();
                return true;
            }
            else
            {
                return false;
            }

        }


        [HttpGet]
        [Route("api/HRManagementSystem/Payroll")]
        public bool Payroll(int employeeId)
        {
            var employeeDetails = db.EmployeeDetails.FirstOrDefault(e => e.Id == employeeId);

            int basicsalary = (int)employeeDetails.Salary;

            int ConveyanceAllowance = 0, MedicalAllowance = 0, HouseRentAllowance = 0, NetSalary = 0, TotalAllowances;

            if (basicsalary >= 40000)
            {
                ConveyanceAllowance = basicsalary * 20 / 100;
                MedicalAllowance = basicsalary * 30 / 100;
                HouseRentAllowance = basicsalary * 40 / 100;
            }
            else if (basicsalary >= 35000)
            {
                ConveyanceAllowance = basicsalary * 15 / 100;
                MedicalAllowance = basicsalary * 25 / 100;
                HouseRentAllowance = basicsalary * 30 / 100;
            }
            else if (basicsalary >= 30000)
            {
                ConveyanceAllowance = basicsalary * 10 / 100;
                MedicalAllowance = basicsalary * 20 / 100;
                HouseRentAllowance = basicsalary * 25 / 100;
            }
            else
            {
                ConveyanceAllowance = 0;
                MedicalAllowance = 0;
                HouseRentAllowance = 0;
            }
            TotalAllowances = ConveyanceAllowance + MedicalAllowance + HouseRentAllowance;
            NetSalary = basicsalary + TotalAllowances;
            Payroll p = new Payroll();
            p.EmployeeId = employeeId;
            p.BasicSalary = basicsalary;
            p.Allowances = TotalAllowances;
            db.Payrolls.Add(p);
            db.SaveChanges();
            return true;
        }






     
    }
}
