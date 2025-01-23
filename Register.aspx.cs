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
    public partial class Register : System.Web.UI.Page
    {
   
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerbtn_Click(object sender, EventArgs e)
        {
            string sql = "INSERT INTO users VALUES('" + txtfnm.Text + "','" + txtunm.Text + "','" + txtmail.Text + "','" + txtmob.Text + "','" + txtpwd.Text + "')";
            SqlDataAdapter da = new SqlDataAdapter(sql, config.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 0)
            {
                Response.Write("<script>alert('Register Successfully')</script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("<script>alert('Error')</script>");
            }
        }
    }
}