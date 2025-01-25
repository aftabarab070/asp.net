using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace CarRental.Admin
{
    public partial class User : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                adminunm.Text = Session["admin"].ToString();
                string sql = "SELECT * FROM users";
                SqlDataAdapter da = new SqlDataAdapter(sql,config.con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                userdetails.DataSource = dt;
                userdetails.DataBind();
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