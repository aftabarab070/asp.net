using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRental
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null && !string.IsNullOrEmpty(Session["username"].ToString()))
            {
                string email = Session["username"].ToString();
                string msg = "Welcome: " + email;
                lbluser.Text = msg;
                Response.Write(msg);
                lgbtn.Visible = false;
                mybookingbtn.Visible = true;
            }
            else
            {
                logoutbtn.Visible = false;
                mybookingbtn.Visible = false;
            }
        }

        protected void logoutbtn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            lgbtn.Visible = true;
            Response.Redirect("Index.aspx");
        }
    }
}