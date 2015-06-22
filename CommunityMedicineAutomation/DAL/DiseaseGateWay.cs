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
    public class DiseaseGateWay
    {
        private string connectionString =
            ConfigurationManager.ConnectionStrings["CommunityMedicineAutomationConString"].ConnectionString;

        public int Save(Disease aDisease)
        {
            string query = String.Format("INSERT INTO tbl_disease VALUES ('{0}','{1}', '{2}')", aDisease.Name, aDisease.Description, aDisease.TreatmentProcedure);
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }

        public bool IsDiseaseNameExist(string name )
        {
            string query = String.Format("SELECT * FROM tbl_disease WHERE name = '{0}'", name);
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(query, connection);
            bool isDiseaseNameExist = false;
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                isDiseaseNameExist = true;
                break;
            }
            reader.Close();
            connection.Close();
            return isDiseaseNameExist;
        }
        public DataTable GetAllDisease()
        {
            string query = string.Format("SELECT * FROM tbl_disease");
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