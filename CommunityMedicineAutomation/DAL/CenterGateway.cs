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
    public class CenterGateway
    {
        private string connectionString =
           ConfigurationManager.ConnectionStrings["CommunityMedicineAutomationConString"].ConnectionString;

        public int SaveCenter(Center aCenter)
        {
            string query = string.Format("INSERT INTO tbl_centre VALUES('{0}','{1}','{2}','{3}')",aCenter.Name,aCenter.Code,aCenter.Password,aCenter.ThanaId);
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(query,connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }

        public bool IsCenterNameExist(string name)
        {
            string query = string.Format("SELECT * FROM tbl_centre WHERE name='{0}'",name);
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(query,connection);
            bool isCenterNameExist = false;
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                isCenterNameExist = true;
                break;
            }
            reader.Close();
            connection.Close();
            return isCenterNameExist;
        }

        public DataTable GetAllCenterById(int id)
        {
            string query = string.Format("SELECT * FROM tbl_centre WHERE thana_Id='{0}'",id);
            SqlConnection connection = new SqlConnection(connectionString);
            SqlDataAdapter adapter = new SqlDataAdapter(query,connection);
            connection.Open();
            DataTable data = new DataTable();
            adapter.Fill(data);
            connection.Close();
            return data;
        }
    }
}