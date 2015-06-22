using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using CommunityMedicineAutomation.DAL;

namespace CommunityMedicineAutomation.BLL
{
    public class DistrictManager
    {
        DistrictGateway districtGateway = new DistrictGateway();
        public DataTable GetAllDistrict()
        {
            return districtGateway.GetAllDistrict();
        }
    }
}