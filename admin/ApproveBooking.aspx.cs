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
    public partial class ApproveBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            string sql = "SELECT status FROM customer WHERE id = '"+id+"'";
            SqlDataAdapter da = new SqlDataAdapter(sql,config.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0 )
            {
                if (dt.Rows[0]["status"].ToString() == "APPROVED" || dt.Rows[0]["status"].ToString() == "RETURNED")
                {
                    Response.Write("<script>alert('Car Already Approved')</script>");
                    Response.Redirect("Approveclient.aspx");
                }
                else
                {
                    string sql1 = "UPDATE customer SET status='APPROVED' WHERE id='" + id + "'";
                    SqlDataAdapter da2 = new SqlDataAdapter(sql1,config.con);
                    DataTable dt2 = new DataTable();
                    da2.Fill(dt2);
                    Response.Write("<script>alert('Car Approved Successfully')</script>");
                    Response.Redirect("ApproveClient.aspx");
                }
            }
        }
    }
}