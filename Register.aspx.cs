using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Feedback
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.FirstName_TextBox.Text = string.Empty;
            this.LastName_TextBox.Text = string.Empty;
            this.Email_TextBox.Text = string.Empty;
            this.Mobile_TextBox.Text = string.Empty;
        }
    }
}