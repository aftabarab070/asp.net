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
    public partial class AddCar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM cars";
            SqlDataAdapter da = new SqlDataAdapter(sql, config.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cardata.DataSource = dt;
            cardata.DataBind();
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

        protected void uploadcardata_Click(object sender, EventArgs e)
        {
            if (carimg.FileName != null)
            {
                string path = Server.MapPath("~/Admin/upload/");
                string ext = System.IO.Path.GetExtension(carimg.FileName);
                if (ext == ".jpg")
                {
                    string tempfilename = new Random().Next().ToString();
                    string newfilename = tempfilename + ext;
                    carimg.SaveAs(path + newfilename);
                    string sql = "INSERT INTO cars VALUES('" + carname.Text + "','" + caryear.Text + "','" + carcap.Text + "','" + carfueltype.Text + "','" + carkm.Text + "','" + cartype.Text + "','" + caramt.Text + "','" + cardes.Text + "','" + carquantity.Text + "','" + newfilename + "')";
                    SqlDataAdapter da = new SqlDataAdapter(sql, config.con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    carname.Text = string.Empty;
                    caryear.Text = string.Empty;
                    carcap.Text = string.Empty;
                    carfueltype.Text = string.Empty;
                    carkm.Text = string.Empty;
                    caramt.Text = string.Empty;
                    cartype.Text = string.Empty;
                    cardes.Text = string.Empty;
                    carquantity.Text = string.Empty;
                }
                else
                {
                    Response.Write("<script>alert('Palese Select Jpg File')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Palese Select File')</script>");
            }
        }
    }
}