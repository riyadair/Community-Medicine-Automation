using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommunityMedicineAutomation.BLL;
using CommunityMedicineAutomation.Model;

namespace CommunityMedicineAutomation.UI
{
    public partial class CenterEnrtyUI : System.Web.UI.Page
    {
        DistrictManager districtManager = new DistrictManager();
        ThanaManager thanaManager = new ThanaManager();
        CenterManager centerManager = new CenterManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DistrictDropDownList.DataSource = districtManager.GetAllDistrict();
                DistrictDropDownList.DataTextField = "name";
                DistrictDropDownList.DataValueField = "id";
                DistrictDropDownList.DataBind();
            }
            
        }
        
        protected void SaveCenterButton_Click(object sender, EventArgs e)
        {
            Random rnd = new Random();
            Center aCenter = new Center();
            aCenter.Name = CenterNameTextBox.Text;
            aCenter.Code = aCenter.Name + rnd.Next(1111, 9999);
            aCenter.Password =CreatePassword(10);//this line is uncomplete
            aCenter.ThanaId = Convert.ToInt32(ThanaDropDownList.SelectedValue);
            string message=centerManager.SaveCenter(aCenter);
            showMessageLabel.Text = message;

        }
        public string CreatePassword(int length)
        {
            const string valid = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890#$%&@";
            StringBuilder res = new StringBuilder();
            Random rnd = new Random();
            while (0 < length--)
            {
                res.Append(valid[rnd.Next(valid.Length)]);
            }
            return res.ToString();
        }
        protected void DistrictDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(DistrictDropDownList.SelectedValue);
            ThanaDropDownList.DataSource = thanaManager.GetAllThanaById(id);
            ThanaDropDownList.DataTextField = "name";
            ThanaDropDownList.DataValueField = "id";
            ThanaDropDownList.DataBind();
        }
    }
}