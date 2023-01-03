using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task4
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = TextBox1.Text;
            string pass = TextBox2.Text;
            SqlConnection connection =
            new SqlConnection("data source =  DESKTOP-EK069V4\\SQLEXPRESS; database = task1 ; integrated security=SSPI");
            SqlCommand command = new SqlCommand($"select myID from  task4 where username='{user}' and passwords='{pass}' ", connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if(reader.Read())
            {
                Session["id"] = reader[0];
                Response.Redirect("1.aspx");
            }
            else
            {
                Response.Write("wrong");
            }
        }
    }
}