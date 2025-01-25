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
    public partial class AdminLogin : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM admin WHERE username='"+txtunm.Text+"' AND password='"+txtpwd.Text+"'";
            SqlDataAdapter da = new SqlDataAdapter(sql, config.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count == 1 )
            {
                Session["admin"] = txtunm.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Error')</script>");
            }
        }
    }
}