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

        #region Personal info
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
        #endregion

        #region Education
        public static List<RefWeb.Models.CVModels.mdlEducation> GetEdu()
        {
            List<RefWeb.Models.CVModels.mdlEducation> sour = new List<Models.CVModels.mdlEducation>();

            string query = "select * from myrefappeduc";

            try
            {
                dbConn = RefWeb.Scripts.CSharp.SQLConnection.NewSQLConn();
                command = new MySqlCommand(query, dbConn);

                dbConn.Open();
                reader = command.ExecuteReader();

                while (reader.Read())
                {
                    int eduid = Int32.Parse(reader["edu_id"].ToString());
                    string edustart = reader["edu_startdate"].ToString();
                    string eduend = reader["edu_enddate"].ToString();
                    string edusnamehun = reader["edu_schoolnamehun"].ToString();
                    string edusnameeng = reader["edu_schoolnameeng"].ToString();
                    string edunamehun = reader["edu_eduhun"].ToString();
                    string edunameeng = reader["edu_edueng"].ToString();
                    int eduuid = Int32.Parse(reader["edu_uid"].ToString());

                    RefWeb.Models.CVModels.mdlEducation s = new Models.CVModels.mdlEducation(eduid, edustart, eduend, edusnamehun, edusnameeng, edunamehun, edunameeng, eduuid);
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
        #endregion

        #region Workplace
        public static List<RefWeb.Models.CVModels.mdlWork> GetWork()
        {
            List<RefWeb.Models.CVModels.mdlWork> sour = new List<Models.CVModels.mdlWork>();

            string query = "select * from myrefappworkp";

            try
            {
                dbConn = RefWeb.Scripts.CSharp.SQLConnection.NewSQLConn();
                command = new MySqlCommand(query, dbConn);

                dbConn.Open();
                reader = command.ExecuteReader();

                while (reader.Read())
                {
                    int workid = Int32.Parse(reader["wp_id"].ToString());
                    string workstart = reader["wp_startdate"].ToString();
                    string workend = reader["wp_enddate"].ToString();
                    string worknamehun = reader["wp_wpnamehun"].ToString();
                    string worknameeng = reader["wp_wpnameeng"].ToString();
                    string rolehun = reader["wp_rolehun"].ToString();
                    string roleeng = reader["wp_roleeng"].ToString();
                    int workuid = Int32.Parse(reader["wp_uid"].ToString());

                    RefWeb.Models.CVModels.mdlWork s = new Models.CVModels.mdlWork(workid, workstart, workend, worknamehun, worknameeng, rolehun, roleeng, workuid);
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
        #endregion

        #region Experience
        public static List<RefWeb.Models.CVModels.mdlExp> GetExp()
        {
            List<RefWeb.Models.CVModels.mdlExp> sour = new List<Models.CVModels.mdlExp>();

            string query = "select * from myrefappexp";

            try
            {
                dbConn = RefWeb.Scripts.CSharp.SQLConnection.NewSQLConn();
                command = new MySqlCommand(query, dbConn);

                dbConn.Open();
                reader = command.ExecuteReader();

                while (reader.Read())
                {
                    int expid = Int32.Parse(reader["exp_id"].ToString());
                    string expnamehun = reader["exp_deschun"].ToString();
                    string expnameeng = reader["exp_desceng"].ToString();
                    int expuid = Int32.Parse(reader["exp_uid"].ToString());

                    RefWeb.Models.CVModels.mdlExp s = new Models.CVModels.mdlExp(expid, expnamehun, expnameeng, expuid);
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
        #endregion

        #region Language
        public static List<RefWeb.Models.CVModels.mdlLang> GetLanguage()
        {
            List<RefWeb.Models.CVModels.mdlLang> sour = new List<Models.CVModels.mdlLang>();

            string query = "select * from myrefapplang";

            try
            {
                dbConn = RefWeb.Scripts.CSharp.SQLConnection.NewSQLConn();
                command = new MySqlCommand(query, dbConn);

                dbConn.Open();
                reader = command.ExecuteReader();

                while (reader.Read())
                {
                    int langid = Int32.Parse(reader["lang_id"].ToString());
                    string langnamehun = reader["lang_namehun"].ToString();
                    string langnameeng = reader["lang_nameeng"].ToString();
                    string langlevelhun = reader["lang_levelhun"].ToString();
                    string langleveleng = reader["lang_leveleng"].ToString();
                    int languid = Int32.Parse(reader["lang_uid"].ToString());

                    RefWeb.Models.CVModels.mdlLang s = new Models.CVModels.mdlLang(langid, langnamehun, langnameeng, langlevelhun, langleveleng, languid);
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
        #endregion

        #region Driving License
        public static List<RefWeb.Models.CVModels.mdlDrivLic> GetDrivli()
        {
            List<RefWeb.Models.CVModels.mdlDrivLic> sour = new List<Models.CVModels.mdlDrivLic>();

            string query = "select * from myrefappdrivlic";

            try
            {
                dbConn = RefWeb.Scripts.CSharp.SQLConnection.NewSQLConn();
                command = new MySqlCommand(query, dbConn);

                dbConn.Open();
                reader = command.ExecuteReader();

                while (reader.Read())
                {
                    int dlid = Int32.Parse(reader["dl_id"].ToString());
                    string dlcat = reader["dl_cat"].ToString();
                    DateTime myAcDateTime = DateTime.Parse(reader["dl_acdate"].ToString());
                    string dlacdate = myAcDateTime.Date.ToString("yyyy-MM-dd");
                    DateTime myExDateTime = DateTime.Parse(reader["dl_expdate"].ToString());
                    string dlexdate = myExDateTime.Date.ToString("yyyy-MM-dd");
                    int dluid = Int32.Parse(reader["dl_uid"].ToString());

                    RefWeb.Models.CVModels.mdlDrivLic s = new Models.CVModels.mdlDrivLic(dlid, dlcat, dlacdate, dlexdate, dluid);
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
        #endregion

        #region Personal description
        public static List<RefWeb.Models.CVModels.mdlPersonalDesc> GetPersDesc()
        {
            List<RefWeb.Models.CVModels.mdlPersonalDesc> sour = new List<Models.CVModels.mdlPersonalDesc>();

            string query = "select * from myrefapppersonaldesc";

            try
            {
                dbConn = RefWeb.Scripts.CSharp.SQLConnection.NewSQLConn();
                command = new MySqlCommand(query, dbConn);

                dbConn.Open();
                reader = command.ExecuteReader();

                while (reader.Read())
                {
                    int pdid = Int32.Parse(reader["pd_id"].ToString());
                    string pdhun = reader["pd_deschun"].ToString();
                    string pdeng = reader["pd_desceng"].ToString();
                    int pduid = Int32.Parse(reader["pd_uid"].ToString());

                    RefWeb.Models.CVModels.mdlPersonalDesc s = new Models.CVModels.mdlPersonalDesc(pdid, pdhun, pdeng, pduid);
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
        #endregion
    }
}