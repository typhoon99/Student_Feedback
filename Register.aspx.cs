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
    public partial class Register : System.Web.UI.Page
    {
        SqlDataAdapter da;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
        DataSet DS = new DataSet();
        SqlCommand CMD;
        protected void Page_Load(object sender, EventArgs e)
        {
            //this.FirstName_TextBox.Text = string.Empty;
            //this.LastName_TextBox.Text = string.Empty;
            //this.Email_TextBox.Text = string.Empty;
            //this.Mobile_TextBox.Text = string.Empty;
        }

        public int InsertData()
        {
            try
            {
                con.Open();
                CMD = new SqlCommand("REGISTER", con);
                CMD.Parameters.Add(new SqlParameter("@BRANCH", Department_DropDownList.Text.ToString()));
                CMD.Parameters.Add(new SqlParameter("@YEAR", Year_DropDownList.Text.ToString()));
                CMD.Parameters.Add(new SqlParameter("@DIVISION", Division_DropDownList.Text.ToString()));
                if (Gender_DropDownList.Text.ToString() == "Mr.")
                    CMD.Parameters.Add(new SqlParameter("@GENDER", "M"));
                else if (Gender_DropDownList.Text.ToString() == "Miss." || Gender_DropDownList.Text.ToString() == "Mrs.")
                    CMD.Parameters.Add(new SqlParameter("@GENDER", "F"));
                else
                    CMD.Parameters.Add(new SqlParameter("@GENDER", "Others"));
                string firstName = FirstName_TextBox.Text.ToString().Trim();
                firstName = char.ToUpper(firstName[0]) + firstName.Substring(1).ToLower();
                string lastName = LastName_TextBox.Text.ToString().Trim();
                lastName = char.ToUpper(lastName[0]) + lastName.Substring(1).ToLower();
                string name = firstName + lastName;
                CMD.Parameters.Add(new SqlParameter("@NAME", name));
                CMD.Parameters.Add(new SqlParameter("@EMAIL", Email_TextBox.Text.ToString().Trim().ToLower()));
                CMD.Parameters.Add(new SqlParameter("@MOBILE", Mobile_TextBox.Text.ToString().Trim()));
                string password = Password_TextBox.Text.ToString();
                string hashedPassword = Hash.HashText(password, Mobile_TextBox.Text.ToString().Trim(), new SHA256CryptoServiceProvider());
                CMD.Parameters.Add(new SqlParameter("@PASSWORD", hashedPassword));
                CMD.CommandType = CommandType.StoredProcedure;
                CMD.ExecuteNonQuery();
                con.Close();
                return 1;
            }
            catch (Exception ee)
            {
                Response.Write("<script>alert(ee)</script>");
                return 0;
            }

        }
        protected void Register_Button_Click(object sender, EventArgs e)
    {
            int status;
            status = InsertData();
            if (status == 1)
            {
                Response.Redirect("login/Feedback.aspx");
            }
            else
            {

            }
            con.Open();
            //CMD = new SqlCommand("REGISTER", con);
            //CMD.Parameters.Add(new SqlParameter("@BRANCH", Department_DropDownList.Text.ToString()));
            //CMD.Parameters.Add(new SqlParameter("@YEAR", Year_DropDownList.Text.ToString()));
            //CMD.Parameters.Add(new SqlParameter("@DIVISION", Division_DropDownList.Text.ToString()));
            //if (Gender_DropDownList.Text.ToString() == "Mr.")
            //    CMD.Parameters.Add(new SqlParameter("@GENDER", "M"));
            //else if (Gender_DropDownList.Text.ToString() == "Miss." || Gender_DropDownList.Text.ToString() == "Mrs.")
            //    CMD.Parameters.Add(new SqlParameter("@GENDER", "F"));
            //else
            //    CMD.Parameters.Add(new SqlParameter("@GENDER", "Others"));
            //string firstName = FirstName_TextBox.Text.ToString();
            //firstName = firstName[0].ToString().ToUpper() + firstName.Substring(1).ToString().ToLower();
            //string lastName = LastName_TextBox.Text;
            //lastName = lastName[0].ToString().ToUpper() + lastName.Substring(1).ToString().ToLower();
            //string name = firstName + lastName;
            //CMD.Parameters.Add(new SqlParameter("@NAME", name));
            //CMD.Parameters.Add(new SqlParameter("@EMAIL", Email_TextBox.Text.ToString().Trim().ToLower()));
            //CMD.Parameters.Add(new SqlParameter("@MOBILE", Mobile_TextBox.Text.ToString().Trim()));
            //string password = Password_TextBox.Text.ToString();
            //string hashedPassword = Hash.HashText(password, Mobile_TextBox.Text.ToString().Trim(), new SHA256CryptoServiceProvider());
            //CMD.Parameters.Add(new SqlParameter("@PASSWORD", hashedPassword));
            //CMD.CommandType = CommandType.StoredProcedure;
            //CMD.ExecuteNonQuery();
            //con.Close();
            //Email_TextBox.Text = firstName;
        }
    }
}