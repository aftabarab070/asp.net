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
    public partial class CarDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            string sql = "SELECT * FROM cars WHERE car_id='"+id+"'";
            SqlDataAdapter da = new SqlDataAdapter(sql,config.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cardetails.DataSource = dt;
            cardetails.DataBind();
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
    }
}