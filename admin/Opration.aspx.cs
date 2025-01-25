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
    public partial class Opration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                adminunm.Text = Session["admin"].ToString();
            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }
            string carid = Request.QueryString["id"];
            string action = Request.QueryString["action"];

            if (action == "Update")
            {
                string sql = "SELECT * FROM cars WHERE car_id='" + carid + "'";        
                SqlDataAdapter da = new SqlDataAdapter(sql, config.con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    carname.Text = dt.Rows[0]["car_name"].ToString();
                    caryear.Text = dt.Rows[0]["car_year"].ToString();
                    carcap.Text = dt.Rows[0]["car_capacity"].ToString();
                    carfueltype.Text = dt.Rows[0]["car_fueltype"].ToString();
                    carkm.Text = dt.Rows[0]["car_kilometer"].ToString();
                    cartype.Text = dt.Rows[0]["car_type"].ToString();
                    caramt.Text = dt.Rows[0]["car_amount"].ToString();
                    cardes.Text = dt.Rows[0]["car_description"].ToString();
                    carquantity.Text = dt.Rows[0]["car_quantity"].ToString();
                }
            }

            else if (action == "Delete")
            {
                string sql = "DELETE FROM cars WHERE car_id='" + carid + "'";
                SqlDataAdapter da = new SqlDataAdapter(sql, config.con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Response.Redirect("AddCar.aspx");
            }
        }
        protected void adminlogoutbtn_Click1(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("AdminLogin.aspx");
        }
        protected void updatecardata_Click(object sender, EventArgs e)
        {
            /*if (carimg.FileName != null)
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
            }*/
        }
    }
}