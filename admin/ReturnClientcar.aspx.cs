using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRental.Admin
{
    public partial class ReturnClientcar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM customer WHERE status='RETURNED'";
            SqlDataAdapter da = new SqlDataAdapter(sql, config.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            CustomerDetails.DataSource = dt;
            CustomerDetails.DataBind();

            if (Session["admin"] != null)
            { 
                adminunm.Text = Session["admin"].ToString();
            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }
        protected void adminlogoutbtn_Click1(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("AdminLogin.aspx");
        }
    }
}