using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace CarRental
{
    public partial class Login : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM users WHERE username='" + txtunm.Text + "' AND password='" + txtpwd.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, config.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                Session["username"] = txtunm.Text;
                Response.Redirect("Index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Error')</script>");
            }
        }
    }
}