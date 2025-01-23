using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CarRental
{
    public class config
    {
        public static SqlConnection con = new SqlConnection("Data Source=DESKTOP-PMM147A\\SQLEXPRESS;Initial Catalog=carrental;Integrated Security=True;Encrypt=False");
    }
}