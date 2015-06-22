using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using CommunityMedicineAutomation.DAL;

namespace CommunityMedicineAutomation.BLL
{
    public class ThanaManager
    {
        ThanaGateway thanaGateway = new ThanaGateway();
        public DataTable GetAllThanaById(int id)
        {
            return thanaGateway.GetAllThanaById(id);
        }

    }
}