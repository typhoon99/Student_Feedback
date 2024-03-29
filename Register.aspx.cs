﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Feedback
{
    public partial class Register : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //this.FirstName_TextBox.Text = string.Empty;
            //this.LastName_TextBox.Text = string.Empty;
            //this.Email_TextBox.Text = string.Empty;
            //this.Mobile_TextBox.Text = string.Empty;
        }

        protected void Register_Button_Click(object sender, EventArgs e)
        {
            string branch, year, gender, division, firstName, lastName, name="", email, mobile, roll;
            string password, hashedPassword;

            branch = Department_DropDownList.Text.ToString().Trim();
            year = Year_DropDownList.Text.ToString().Trim();
            division = Division_DropDownList.Text.ToString().Trim();
            roll = Roll_TextBox.Text.ToString().Trim();
            if (Gender_DropDownList.Text.ToString() == "Mr.")
            {
                gender = "Male";
                name = "Mr.";
            }
            else if (Gender_DropDownList.Text.ToString() == "Miss." || Gender_DropDownList.Text.ToString() == "Mrs.")
            {
                gender = "Male";
                name = Gender_DropDownList.Text.ToString();
            }
            else
                gender = "Others";
            firstName = FirstName_TextBox.Text.ToString().Trim();
            firstName = char.ToUpper(firstName[0]) + firstName.Substring(1).ToLower();
            lastName = LastName_TextBox.Text.ToString().Trim();
            lastName = char.ToUpper(lastName[0]) + lastName.Substring(1).ToLower();
            name = name + " " + firstName + " " + lastName;
            email = Email_TextBox.Text.ToString().ToLower();
            mobile = Mobile_TextBox.Text.ToString().Trim();
            password = Password_TextBox.Text.ToString();
            Hash hashObject = new Hash();
            hashedPassword = hashObject.HashText(password, "", new SHA256CryptoServiceProvider());
            string status;
            RegisterMethods rm = new RegisterMethods();
            if (rm.CheckUser(branch,year,division,roll)!=0)
            {
                Response.Write("<script>alert('User already Exists. Try again.')</script>");
            }
            else
            {
                status = rm.InsertData(branch, year, division, roll, gender, name, email, mobile, hashedPassword);
                Response.Redirect("login.aspx");
            }
            
        }
            
    }
}