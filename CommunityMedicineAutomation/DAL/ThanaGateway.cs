using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CommunityMedicineAutomation.DAL
{
    public class ThanaGateway
    {
        private string connectionString =
           ConfigurationManager.ConnectionStrings["CommunityMedicineAutomationConString"].ConnectionString;

        public DataTable GetAllThanaById(int id)
        {
            string query = string.Format("SELECT * FROM tbl_thana WHERE district_Id='{0}'", id);
            SqlConnection connection = new SqlConnection(connectionString);
            SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
            connection.Open();
            DataTable data = new DataTable();
            adapter.Fill(data);
            connection.Close();
            return data;
        }
    }
}