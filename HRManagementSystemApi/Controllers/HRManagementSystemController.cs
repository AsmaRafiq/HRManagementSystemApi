using HRManagementSystemApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace HRManagementSystemApi.Controllers
{
    public class HRManagementSystemController : ApiController
    {

        [HttpGet]
        [Route("api/HRManagementSystem/EmployeeDetails")]
        public bool EmployeeDetails(InformationOfEmployee Information)
        {
            return true;
        }


        [HttpGet]
        [Route("api/HRManagementSystem/EmployeePerformance")]
        public bool EmployeePerformance(InformationOfEmployee Information)
        {
            return true;
        }


        [HttpGet]
        [Route("api/HRManagementSystem/Payroll")]
        public float Payroll()
        {
            return 0;
        }

    }
}
