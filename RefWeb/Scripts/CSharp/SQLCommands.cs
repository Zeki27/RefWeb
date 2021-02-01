using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace RefWeb.Scripts.CSharp
{
    public class SQLCommands
    {
        public static MySqlConnection dbConn;
        public static MySqlCommand command;
        public static MySqlDataReader reader;


        public static List<RefWeb.Models.mdlNews> GetNews()
        {
            List<RefWeb.Models.mdlNews> sour = new List<Models.mdlNews>();

            string query = "select * from myrefappnews";
            dbConn = RefWeb.Scripts.CSharp.SQLConnection.NewSQLConn();
            command = new MySqlCommand(query, dbConn);

            dbConn.Open();

            reader = command.ExecuteReader();

            while (reader.Read())
            {
                int id = int.Parse(reader["myrefappnewsid"].ToString());
                string nname = reader["myrefappnewsname"].ToString();
                DateTime ndate = DateTime.Parse(reader["myrefappnewsdate"].ToString());
                string ndesc = reader["myrefappnewsdescription"].ToString();

                RefWeb.Models.mdlNews news = new Models.mdlNews(id, nname, ndate, ndesc);
                sour.Add(news);
            }
            dbConn.Close();
            return sour;
        }
    }
}