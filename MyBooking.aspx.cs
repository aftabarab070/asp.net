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
    public partial class MyBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                string email = Session["username"].ToString();
                LoadBookingDetails(email);

                string msg = "Welcome: " + email;
                lbluser.Text = msg;
                lgbtn.Visible = false;
                mybookingbtn.Visible = true;
            }
            else
            {
                lgbtn.Visible = true;
                mybookingbtn.Visible = false;
                Response.Redirect("ViewCar.aspx");
            }
        }

        protected void logoutbtn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Index.aspx");
        }

        private void LoadBookingDetails(string email)
        {
            string connStr = "Data Source=DESKTOP-PMM147A\\SQLEXPRESS;Initial Catalog=carrental;Integrated Security=True;Encrypt=False";

            string sql = @"
            SELECT 
                c.car_image, c.car_name, c.car_amount, c.car_year, 
                c.car_capacity, c.car_kilometer, c.car_fueltype, 
                cust.status, cust.pdate, cust.ddate, cust.tamount
            FROM customer cust
            INNER JOIN cars c ON cust.car_id = c.car_id
            WHERE cust.username = @Email
            ORDER BY cust.id DESC";

            using (SqlConnection con = new SqlConnection(connStr))
            {
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                da.SelectCommand.Parameters.AddWithValue("@Email", email);

                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count == 0)
                {
                    Response.Write("<script>alert('There are no booking details');</script>");
                    Response.Redirect("cars.aspx");
                }
                else
                {
                    CustomerCarDetails.DataSource = dt;
                    CustomerCarDetails.DataBind();
                }
            }
        }
    }
}