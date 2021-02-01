using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace RefWeb.Scripts.CSharp
{
    public class SQLConnection
    {
        #region SQL properties
        public static MySqlConnection dbConn;
        public static MySqlCommand command;

        public static string server = "localhost";
        public static string user = "root";
        public static string password = "";
        public static string database = "myrefappdb";
        public static string SslMode = "none";


        public string Username { get; private set; }
        public string Password { get; private set; }

        private SQLConnection(string u, string p)
        {
            Username = u;
            Password = p;
        }

        public static void InitializeDb()
        {
            MySqlConnection connString = new MySqlConnection("server =" + server + ";user id=" + user + "; password = " + password + ";database =" + database + ";SslMode =" + SslMode + ";");
            //MySqlConnection connString = new MySqlConnection("server=localhost;user id=root;database=exampledatabase;SslMode=none;");
            dbConn = connString;
        }
        #endregion

        //gets the new prameters from the frmModifySQLConn 
        public static void ModifyConParam(string serv, string usid, string pass, string db, string ssl)
        {
            server = serv;
            user = usid;
            password = pass;
            database = db;
            SslMode = ssl;
            MySqlConnection connString = new MySqlConnection("server =" + server + ";user id=" + user + "; password = " + password + ";database =" + database + ";SslMode =" + SslMode + ";");
            dbConn = connString;
        }

        public static MySqlConnection NewSQLConn()
        {
            MySqlConnection con = new MySqlConnection("server =" + server + ";user id=" + user + "; password = " + password + ";database =" + database + ";SslMode =" + SslMode + ";");
            return con;
        }
    }
}