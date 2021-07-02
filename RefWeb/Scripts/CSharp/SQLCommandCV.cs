using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RefWeb.Scripts.CSharp
{
    public class SQLCommandCV
    {
        public static MySqlConnection dbConn;
        public static MySqlCommand command;
        public static MySqlDataReader reader;

        public static List<RefWeb.Models.CVModels.mdlPersonalInfo> GetPersonalInfo()
        {
            List<RefWeb.Models.CVModels.mdlPersonalInfo> sour = new List<Models.CVModels.mdlPersonalInfo>();

            string query = "select * from myrefapppersonalinf";

            try
            {
                dbConn = RefWeb.Scripts.CSharp.SQLConnection.NewSQLConn();
                command = new MySqlCommand(query, dbConn);

                dbConn.Open();
                reader = command.ExecuteReader();

                while (reader.Read())
                {
                    int piid = Int32.Parse(reader["pi_id"].ToString());
                    string piname = reader["pi_name"].ToString();
                    string pibirthp = reader["pi_birthp"].ToString();
                    DateTime myDateTime = DateTime.Parse(reader["pi_birtht"].ToString());
                    string pibirtht = myDateTime.Date.ToString("yyyy-MM-dd");
                    string piaddress = reader["pi_address"].ToString();
                    string piphone = reader["pi_phonen"].ToString();
                    string piemail = reader["pi_email"].ToString();
                    int piuid = Int32.Parse(reader["pi_uid"].ToString());

                    RefWeb.Models.CVModels.mdlPersonalInfo s = new Models.CVModels.mdlPersonalInfo(piid, piname, pibirthp, pibirtht, piaddress, piphone, piemail, piuid);
                    sour.Add(s);
                }
                dbConn.Close();
            }
            catch (Exception e)
            {
                throw e;
            }
            return sour;
        }
    }
}