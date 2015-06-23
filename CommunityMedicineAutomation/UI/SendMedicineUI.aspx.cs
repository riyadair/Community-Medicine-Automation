using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommunityMedicineAutomation.BLL;

namespace CommunityMedicineAutomation.UI
{
    public partial class SendMedicineUI : System.Web.UI.Page
    {
        DistrictManager districtManager = new DistrictManager();
        ThanaManager thanaManager = new ThanaManager();
        MedicineManager medicineManager = new MedicineManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DistrictDropDownList.DataSource = districtManager.GetAllDistrict();
                DistrictDropDownList.DataTextField = "name";
                DistrictDropDownList.DataValueField = "id";
                DistrictDropDownList.DataBind();
                MedicineDropDownList.DataSource = medicineManager.GetAllMedicine();
                MedicineDropDownList.DataTextField = "name";
                MedicineDropDownList.DataValueField = "id";
                MedicineDropDownList.DataBind();
            }
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {

        }

        protected void DistrictDropDownList_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(DistrictDropDownList.SelectedValue);
            ThanaDropDownList.DataSource = thanaManager.GetAllThanaById(id);
            ThanaDropDownList.DataTextField = "name";
            ThanaDropDownList.DataValueField = "id";
            ThanaDropDownList.DataBind();
        }
        CenterManager centerManager = new CenterManager();
        protected void ThanaDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(ThanaDropDownList.SelectedValue);
            CenterDropDownList.DataSource = centerManager.GetAllCenterById(id);
            CenterDropDownList.DataTextField = "name";
            CenterDropDownList.DataValueField = "id";
            CenterDropDownList.DataBind();
        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            DataTable dataTable= new DataTable();
            DataRow dr = dataTable.NewRow();
            dr[CenterDropDownList.SelectedValue] = string.Empty;//Have Problem

            dataTable.Rows.Add(dr);
            MedicineGridView.DataSource = dataTable;
            MedicineGridView.DataBind();
        }
    }
}