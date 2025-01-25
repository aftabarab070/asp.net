using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRental.Admin
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Customer Count
            string sql = "SELECT COUNT(*) AS total FROM customer";
            SqlDataAdapter da = new SqlDataAdapter(sql, config.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                int total = Convert.ToInt32(dt.Rows[0]["total"]);
                NewClientCount.Text = total.ToString();
            }

            // Cars Count
            string sql1 = "SELECT COUNT(*) AS total FROM cars";
            SqlDataAdapter da1 = new SqlDataAdapter(sql1, config.con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);

            if (dt1.Rows.Count > 0)
            {
                int total = Convert.ToInt32(dt1.Rows[0]["total"]);
                CountCars.Text = total.ToString();
            }

            // User Count
            string sql3 = "SELECT COUNT(*) AS total FROM users";
            SqlDataAdapter da3 = new SqlDataAdapter(sql3, config.con);
            DataTable dt3 = new DataTable();
            da3.Fill(dt3);

            if (dt3.Rows.Count > 0)
            {
                int total = Convert.ToInt32(dt3.Rows[0]["total"]);
                UserCount.Text = total.ToString();
            }

            // Pending CLient Count
            string sql4 = "SELECT COUNT(*) AS total FROM customer WHERE status='Pending'";
            SqlDataAdapter da4 = new SqlDataAdapter(sql4, config.con);
            DataTable dt4 = new DataTable();
            da4.Fill(dt4);

            if (dt4.Rows.Count > 0)
            {
                int total = Convert.ToInt32(dt4.Rows[0]["total"]);
                PendingClientCount.Text = total.ToString();
            }

            // Approve Client Count
            string sql5 = "SELECT COUNT(*) AS total FROM customer WHERE status='APPROVED'";
            SqlDataAdapter da5 = new SqlDataAdapter(sql5, config.con);
            DataTable dt5 = new DataTable();
            da5.Fill(dt5);

            if (dt5.Rows.Count > 0)
            {
                int total = Convert.ToInt32(dt5.Rows[0]["total"]);
                ApprovedClientCount.Text = total.ToString();
            }

            string sql6 = "SELECT COUNT(*) AS total FROM customer WHERE status='RETURNED'";
            SqlDataAdapter da6 = new SqlDataAdapter(sql6, config.con);
            DataTable dt6 = new DataTable();
            da6.Fill(dt6);

            if (dt6.Rows.Count > 0)
            {
                int total = Convert.ToInt32(dt6.Rows[0]["total"]);
                ReturnClientCount.Text = total.ToString();
            }

            string sql7 = "SELECT COUNT(*) AS total FROM feedback";
            SqlDataAdapter da7 = new SqlDataAdapter(sql7, config.con);
            DataTable dt7 = new DataTable();
            da7.Fill(dt7);

            if (dt7.Rows.Count > 0)
            {
                int total = Convert.ToInt32(dt7.Rows[0]["total"]);
                FeedBackCount.Text = total.ToString();
            }

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