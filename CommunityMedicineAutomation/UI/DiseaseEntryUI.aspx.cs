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
    public partial class DiseaseEntryUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            diseaseGridView.DataSource = diseaseManager.GetAllDisease();
            diseaseGridView.DataBind();
        }
        Disease aDisease = new Disease();
        DiseaseManager diseaseManager = new DiseaseManager();
        protected void saveButton_Click(object sender, EventArgs e)
        {
            aDisease.Name = diseaseNameTextBox.Text;
            aDisease.Description = descriptionTextBox.Text;
            aDisease.TreatmentProcedure = treatmentTextBox.Text;

            messageShowLabel.Text=diseaseManager.Save(aDisease);
            diseaseGridView.DataSource = diseaseManager.GetAllDisease();
            diseaseGridView.DataBind();

            diseaseNameTextBox.Text = string.Empty;
            descriptionTextBox.Text = string.Empty;
            treatmentTextBox.Text = string.Empty;
        }

    }
}