using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Feedback
{
    public partial class Login : System.Web.UI.Page
    {
        SqlDataAdapter da;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
        DataSet DS = new DataSet();
        SqlCommand CMD;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                var email = Email_TextBox.Text.ToString();
                var pass = Password_TextBox.Text.ToString();
                Hash hashObject = new Hash();
                var hashedPassword = hashObject.HashText(pass, "", new SHA256CryptoServiceProvider());
                LoginUser(email, pass);
            }   
        }

        public string LoginUser(string email, string pass)
        {
            string status;
            try
            {
                con.Open();
                CMD = new SqlCommand("LOGIN", con);
                CMD.Parameters.Add(new SqlParameter("@EMAIL", email));
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

    }
}