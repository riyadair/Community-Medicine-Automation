using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using CommunityMedicineAutomation.DAL;
using CommunityMedicineAutomation.Model;

namespace CommunityMedicineAutomation.BLL
{
    public class CenterManager
    {
        CenterGateway centerGateway = new CenterGateway();
        Center aCenter = new Center();
        public string SaveCenter(Center aCenter)
        {
            string message = " ";
            if (aCenter.Name == string.Empty)
            {
                message = "Please Fill Name";
            }
            else if (centerGateway.IsCenterNameExist(aCenter.Name))
            {
                message = "Center name Already exist";
            }
            else
            {
                message = "Center Saved";
                centerGateway.SaveCenter(aCenter);
            }
            return message;
        }

        public DataTable GetAllCenterById(int id)
        {
            return centerGateway.GetAllCenterById(id);
        }
    }
}