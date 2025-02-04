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
    public partial class ApproveClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCustomerDetails();
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
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int id = Convert.ToInt32(btn.CommandArgument);
            string deleteQuery = "DELETE FROM customer WHERE id = " + id;
            SqlDataAdapter da = new SqlDataAdapter(deleteQuery, config.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Response.Redirect("ApproveClient.aspx");
            BindCustomerDetails();
        }
        private void BindCustomerDetails()
        {
            string selectQuery = "SELECT * FROM customer WHERE status='APPROVED'";
            SqlDataAdapter da = new SqlDataAdapter(selectQuery, config.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            CustomerDetails.DataSource = dt;
            CustomerDetails.DataBind();
        }
    }
}
