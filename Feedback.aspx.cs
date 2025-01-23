using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRental
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (Session["username"] != null)
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

        protected void subfeedback_Click(object sender, EventArgs e)
        {
            string sql = "INSERT INTO feedback VALUES('" + txtname.Text + "','" + txtmail.Text + "','" + feedback.Text + "')";
            SqlDataAdapter da = new SqlDataAdapter(sql, config.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Response.Write("<script>alert('Thank You For Your Feedback')</script>");
        }
    }
}