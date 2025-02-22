using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Routing;

namespace CarRental
{
    public partial class CarBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            string sql = "SELECT * FROM cars WHERE car_id='" + id + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, config.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cardetails.DataSource = dt;
            cardetails.DataBind();
            if (Session["username"] != null)
            {
                string user = Session["username"].ToString();
                string msg = "Welcome: " + user;
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
        protected void countDates()
        {       
            string startDateInput = startdate.Text;
            string endDateInput = enddate.Text;         
            DateTime startDate = DateTime.ParseExact(startDateInput, "yyyy-MM-dd", null);
            DateTime endDate = DateTime.ParseExact(endDateInput, "yyyy-MM-dd", null);
            int daysDifference = (endDate - startDate).Days + 1; 
            duration.Text = daysDifference.ToString();
        }
        protected void rentbtn_Click(object sender, EventArgs e)
        {
            countDates();

            if (Session["username"] == null)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "myscript", "<script>alert('Please Login');window.location.replace('Login.aspx');</script>");
            }
            else
            {
                string car_id = Request.QueryString["id"];
                string sql = "SELECT car_amount, car_name FROM cars WHERE car_id = '" + car_id + "'";
                SqlDataAdapter da = new SqlDataAdapter(sql, config.con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                string car_name = string.Empty;
                decimal car_amount = 0;
                if (dt.Rows.Count > 0)
                {
                    car_amount = Convert.ToDecimal(dt.Rows[0]["car_amount"]);
                    car_name = dt.Rows[0]["car_name"].ToString();
                }

                string user = Session["username"]?.ToString();

                string sql1 = "SELECT * FROM users WHERE username = '" + user + "'";
                SqlDataAdapter da1 = new SqlDataAdapter(sql1, config.con);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);

                string username = string.Empty;
                string fullname = string.Empty;
                string email = string.Empty;
                string mob = string.Empty;
                string bookingnumber = new Random().Next(100000, 999999).ToString();

                if (dt1.Rows.Count > 0)
                {
                    username = dt1.Rows[0]["username"].ToString();
                    fullname = dt1.Rows[0]["fullname"].ToString();
                    email = dt1.Rows[0]["email"].ToString();
                    mob = dt1.Rows[0]["mob"].ToString();
                }

                string status = "Pending";
                string mess = Address.Text;
                string pdate = startdate.Text;
                string ddate = enddate.Text;
                string days = duration.Text;

                decimal totalamount = 0;
                if (decimal.TryParse(days, out decimal daysCount))
                {
                    totalamount = car_amount * daysCount;
                }

                if (DateTime.Parse(pdate) < DateTime.Parse(ddate))
                {
                    // Check if the car is already booked for the selected dates
                    string checkBookingSql = "SELECT COUNT(*) FROM customer WHERE car_id = '" + car_id + "' AND ((pdate == '" + pdate + "'))";
                    SqlDataAdapter daCheck = new SqlDataAdapter(checkBookingSql, config.con);
                    DataTable dtCheck = new DataTable();
                    daCheck.Fill(dtCheck);

                    int bookingCount = Convert.ToInt32(dtCheck.Rows[0][0]);

                    if (bookingCount > 0)
                    {
                        // If car is already booked, show alert
                        Response.Write("<script>alert('The car is already booked for the selected dates. Please choose different dates.');</script>");
                    }
                    else
                    {
                        // If not booked, proceed with booking
                        string sql3 = "INSERT INTO customer (car_id, car_name, car_amount, bookingnumber, fullname, username, email, mobilenum, pdate, ddate, address, duration, total_amount, status, postingdate) VALUES ('" + car_id + "','" + car_name + "','" + car_amount + "','" + bookingnumber + "', '" + fullname + "', '" + username + "', '" + email + "', '" + mob + "', '" + pdate + "', '" + ddate + "', '" + mess + "', '" + days + "', '" + totalamount.ToString() + "', '" + status + "', GETDATE())";
                        SqlDataAdapter da3 = new SqlDataAdapter(sql3, config.con);
                        DataTable dt3 = new DataTable();
                        da3.Fill(dt3);

                        string update = "UPDATE cars SET car_quantity = car_quantity - 1 WHERE car_id = '" + car_id + "'";
                        SqlDataAdapter da2 = new SqlDataAdapter(update, config.con);
                        DataTable dt2 = new DataTable();
                        da2.Fill(dt2);

                        Page.ClientScript.RegisterStartupScript(this.GetType(), "myscript", "<script>alert('Car Booking Successful');window.location.replace('MyBooking.aspx');</script>");
                        startdate.Text = string.Empty;
                        enddate.Text = string.Empty;
                        Address.Text = string.Empty;
                    }
                }
                else
                {
                    Response.Write("<script>alert('Please Select Correct Date')</script>");
                }
            }
        }

    }
}
