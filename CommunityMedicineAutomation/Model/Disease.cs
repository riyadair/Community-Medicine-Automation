﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CommunityMedicineAutomation.Model
{
    public class Disease
    {
        public int Id { get; set; }
        public string  Name { get; set; }
        public string  Description { get; set; }
        public string  TreatmentProcedure { get; set; }
    }
}