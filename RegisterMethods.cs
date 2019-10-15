using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Student_Feedback
{
    public class RegisterMethods : Register
    {
        SqlDataAdapter da;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
        DataSet DS = new DataSet();
        SqlCommand CMD;
        public string InsertData(string branch, string year, string div, string roll, string gender, string name, string email, string mobile, string pass)
        {
            string status;
            try
            {
                con.Open();
                CMD = new SqlCommand("REGISTER", con);
                CMD.Parameters.Add(new SqlParameter("@BRANCH", branch));
                CMD.Parameters.Add(new SqlParameter("@YEAR", year));
                CMD.Parameters.Add(new SqlParameter("@DIVISION", div));
                CMD.Parameters.Add(new SqlParameter("@ROLL_NO", roll));
                CMD.Parameters.Add(new SqlParameter("@GENDER", gender));
                CMD.Parameters.Add(new SqlParameter("@NAME", name));
                CMD.Parameters.Add(new SqlParameter("@EMAIL", email));
                CMD.Parameters.Add(new SqlParameter("@MOBILE", mobile));
                CMD.Parameters.Add(new SqlParameter("@PASSWORD", pass));
                CMD.CommandType = CommandType.StoredProcedure;
                CMD.ExecuteNonQuery();
                con.Close();
                status = "Success";
                return status;
            }
            catch (Exception ee)
            {
                status = ee.ToString();
                return status;
            }
        }

        public int CheckUser(string branch, string year, string div, string roll)
        {
            int user_serial;
            try
            {
                da = new SqlDataAdapter("CHECK_USER", con);
                da.SelectCommand.Parameters.Add(new SqlParameter("@BRANCH", branch));
                da.SelectCommand.Parameters.Add(new SqlParameter("@YEAR", year));
                da.SelectCommand.Parameters.Add(new SqlParameter("@DIVISION", div));
                da.SelectCommand.Parameters.Add(new SqlParameter("@ROLL_NO", roll));
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                da.Fill(DS, "SERIAL");
                user_serial = int.Parse(DS.Tables["SERIAL"].Rows[0][0].ToString());
            }
            catch (Exception ee) { user_serial = 0; }
            return user_serial;
        }
    }
}