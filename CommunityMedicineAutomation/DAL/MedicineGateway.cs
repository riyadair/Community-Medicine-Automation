using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using CommunityMedicineAutomation.Model;

namespace CommunityMedicineAutomation.DAL
{
    public class MedicineGateway
    {
        private string connectionString =
            ConfigurationManager.ConnectionStrings["CommunityMedicineAutomationConString"].ConnectionString;

        public int Save(Medicine aMedicine)
        {
            string query = String.Format("INSERT INTO tbl_medicine VALUES ('" + aMedicine.Name + "')");
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(query,connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }

        public bool IsMedicineNameExist(string name)
        {
            string query = String.Format("SELECT * FROM tbl_medicine WHERE name = '{0}'",name);
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(query, connection);
            bool isMedicineNameExist = false;
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                isMedicineNameExist = true;
                break;               
            }
            reader.Close();
            connection.Close();
            return isMedicineNameExist;
        }

        public DataTable GetAllMedicine()
        {
            string query = string.Format("SELECT * FROM tbl_medicine");
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