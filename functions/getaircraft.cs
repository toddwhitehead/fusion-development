using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;

namespace contosoair.flightops
{
    public static class getaircraft
    {
        [FunctionName("getaircraft")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Function, "get", "post", Route = null)] HttpRequest req,
            ILogger log,
            [Sql("GetAircraft", CommandType = System.Data.CommandType.StoredProcedure, 
                Parameters = "", ConnectionStringSetting = "ContosoAirConnectionString")] 
                IEnumerable<Aircraft> aircraftList)
        {

            return new OkObjectResult(aircraftList);
        }
    }

        public class Aircraft {
            public string registration { get; set; }
            public string model { get; set; }
            public string serial { get; set; }
            public int year { get; set; }
            public int capacity { get; set; }
            public float rate { get; set; }
            public string status { get; set; }
            public DateTime? maintenance_date { get; set; }
            public int mtow { get; set; }
            public string engine_type { get; set; }
            public int number_of_engines { get; set; }
            public string image_url { get; set; }
    }
}
