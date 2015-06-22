using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using CommunityMedicineAutomation.DAL;
using CommunityMedicineAutomation.Model;

namespace CommunityMedicineAutomation.BLL
{
    public class DiseaseManager
    {
        DiseaseGateWay diseaseGateWay = new DiseaseGateWay();
        public string Save(Disease aDisease)
        {
            string message = " ";
            if (aDisease.Name == string.Empty)
            {
                message = "Please Enter Disease Name";
            }
            else if (aDisease.Description == string.Empty)
            {
                message = "Please Enter Description";
            }
            else if (aDisease.TreatmentProcedure == string.Empty)
            {
                message = "Please Enter Treatment Procedure";
            }        
            else if (diseaseGateWay.IsDiseaseNameExist(aDisease.Name))
            {
                message = "Medicine Name Already Exist.";
            }
            else
            {
                message = "Saved successfully";
                diseaseGateWay.Save(aDisease);
            }
            return message;
        }

        public DataTable GetAllDisease()
        {
            return diseaseGateWay.GetAllDisease();
        }
    }
}