using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Booksmart.ViewModels
{
    public class DataResult
    {
        public List<IGrouping<string, UserPerformance>> results { get; set; }
        public Dictionary<string, double?> chartData { get; set; }

    }
    public class UserPerformance
    {

        public string name { get; set; }
        public string surname { get; set; }

        public double? averageTheory { get; set; }
        public double? averagePrac { get; set; }
    }
}