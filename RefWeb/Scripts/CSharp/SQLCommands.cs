using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace RefWeb.Scripts.CSharp
{
    public class SQLCommands
    {
        public static string newsHunTable = "myrefappnewshun";
        public static string newsEngTable = "myrefappnewsen";
        public static string newsTable = "myrefappnewsen";
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
                string nnamehun = reader["myrefappnewsnamehun"].ToString();
                string nnameeng = reader["myrefappnewsnameeng"].ToString();
                DateTime ndate = DateTime.Parse(reader["myrefappnewsdate"].ToString());
                string ndeschun = reader["myrefappnewsdeschun"].ToString();
                string ndesceng = reader["myrefappnewsdesceng"].ToString();
                int userid = int.Parse(reader["myrefappnewsuserid"].ToString());

                RefWeb.Models.mdlNews news = new Models.mdlNews(id, nnamehun, nnameeng, ndate, ndeschun, ndesceng, userid);
                sour.Add(news);
            }
            dbConn.Close();
            return sour;
        }


        public static RefWeb.Models.mdlNews GetSingleNews(int newsid)
        {
            RefWeb.Models.mdlNews renews = new Models.mdlNews(1, "blank", "blank", DateTime.Now, "blank", "blank", 1);

            string query = "select * from myrefappnews where myrefappnewsid = " + newsid;
            dbConn = RefWeb.Scripts.CSharp.SQLConnection.NewSQLConn();
            command = new MySqlCommand(query, dbConn);

            dbConn.Open();
            reader = command.ExecuteReader();

            while (reader.Read())
            {
                int id = int.Parse(reader["myrefappnewsid"].ToString());
                string nnamehun = reader["myrefappnewsnamehun"].ToString();
                string nnameeng = reader["myrefappnewsnameeng"].ToString();
                DateTime ndate = DateTime.Parse(reader["myrefappnewsdate"].ToString());
                string ndeschun = reader["myrefappnewsdeschun"].ToString();
                string ndesceng = reader["myrefappnewsdesceng"].ToString();
                int userid = int.Parse(reader["myrefappnewsuserid"].ToString());

                RefWeb.Models.mdlNews news = new Models.mdlNews(id, nnamehun, nnameeng, ndate, ndeschun, ndesceng, userid);
                renews = news;
            }
            dbConn.Close();

            return renews;
        }
    }
}