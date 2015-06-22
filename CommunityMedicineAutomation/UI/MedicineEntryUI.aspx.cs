using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommunityMedicineAutomation.BLL;
using CommunityMedicineAutomation.Model;

namespace CommunityMedicineAutomation.UI
{
    public partial class MedicineEntryUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            medicineGridView.DataSource = medicineManager.GetAllMedicine();
            medicineGridView.DataBind();
        }
        
        Medicine aMedicine = new Medicine();
        MedicineManager medicineManager= new MedicineManager();
        protected void saveButton_Click(object sender, EventArgs e)
        {
           aMedicine.Name= MedicineTextBox.Text;
           messageShowLabel.Text=  medicineManager.Save(aMedicine);
            medicineGridView.DataSource = medicineManager.GetAllMedicine();
            medicineGridView.DataBind();

            MedicineTextBox.Text = string.Empty;
        }
    }

}