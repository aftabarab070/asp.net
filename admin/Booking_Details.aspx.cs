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
    public partial class Booking_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (Session["admin"] != null)
            {
                adminunm.Text = Session["admin"].ToString();
                string id = Request.QueryString["id"];
                string sql = "SELECT * FROM customer WHERE id='" + id + "'";
                SqlDataAdapter da = new SqlDataAdapter(sql, config.con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                CustomerDetails.DataSource = dt;
                CustomerDetails.DataBind();
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
        protected string GetActionButtons(string status, string bookingId, string carId)
        {
            if (status == "RETURNED")
            {
                return "<button class='btn btn-primary no-print' onclick='window.print()'>Print</button>";
            }
            else if (status == "APPROVED")
            {
                return "<button class='btn btn-primary no-print' onclick='window.print()'>Print</button>" +
                       $"<a href='ReturnCar.aspx?id={bookingId}&carid={carId}' class='btn btn-danger no-print' onclick='return confirm(\"Do you really want to Return Car?\")'>Return Car</a>";
            }
            else
            {
                return $"<a href='ApproveBooking.aspx?id={bookingId}&carid={carId}' class='btn btn-primary no-print' onclick='return confirm(\"Do you really want to Approve this booking?\")'>Approve Booking</a>" +
                       $"<a href='ReturnCar.aspx?id={bookingId}&carid={carId}' class='btn btn-danger no-print' onclick='return confirm(\"Do you really want to Return Car?\")'>Return Car</a>";
            }
        }

    }
}