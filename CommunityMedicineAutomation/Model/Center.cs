using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CommunityMedicineAutomation.Model
{
    public class Center
    {
        public int Id { set; get; }
        public string Name { set; get; }
        public string Code { set; get; }
        public string Password { set; get; }
        public int ThanaId { set; get; }
    }
}