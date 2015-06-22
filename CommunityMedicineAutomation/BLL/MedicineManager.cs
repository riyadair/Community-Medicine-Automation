using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using CommunityMedicineAutomation.DAL;
using CommunityMedicineAutomation.Model;

namespace CommunityMedicineAutomation.BLL
{
    public class MedicineManager
    {
        MedicineGateway medicineGateway = new MedicineGateway();
        public string Save(Medicine aMedicine)
        {
            string message = " ";
            if (aMedicine.Name == string.Empty)
            {
                message = "Please Enter Medicine Name";
            }
            else if (medicineGateway.IsMedicineNameExist(aMedicine.Name))
            {
                message = "Medicine Name Already Exist.";
            }
            else
            {
                message = "Saved successfully";
                medicineGateway.Save(aMedicine);
            }
            return message;
        }

        public DataTable GetAllMedicine()
        {
            return medicineGateway.GetAllMedicine();
        }
    }
}