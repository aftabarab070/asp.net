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
    public partial class ReturnCar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            string carid = Request.QueryString["carid"];
            string sql = "SELECT status FROM customer WHERE id = '" + id + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, config.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                if (dt.Rows[0]["status"].ToString() == "RETURNED")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "NoBookings", "alert('Car Already Returned');", true);
                    Response.Redirect("ReturnClientcar.aspx");
                }
                else
                {
                    string sql1 = "UPDATE customer SET status='RETURNED' WHERE id='" + id + "'";
                    SqlDataAdapter da2 = new SqlDataAdapter(sql1, config.con);
                    DataTable dt2 = new DataTable();
                    da2.Fill(dt2);

                    string sql3 = "UPDATE cars SET car_quantity = car_quantity + 1 WHERE car_id='"+carid+"'";
                    SqlDataAdapter da3 = new SqlDataAdapter(sql3, config.con);
                    DataTable dt3 = new DataTable();
                    da3.Fill(dt3);
                    Response.Redirect("ReturnClientcar.aspx");
                }
            }
        }
    }
}