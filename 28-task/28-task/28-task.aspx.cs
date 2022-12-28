using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace _28_task
{
    public partial class _28_task : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection connection =
            new SqlConnection("data source =  DESKTOP-EK069V4\\SQLEXPRESS; database = lubna ; integrated security=SSPI");
            SqlCommand command = new SqlCommand("Insert into task28(comment) values(@name)", connection);
            connection.Open();
            command.Parameters.AddWithValue("@name", TextBox1.Text);
            command.ExecuteNonQuery();
            connection.Close();

            //    TextBox1.Text = "";
            //    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
            //}

            //protected void Timer1_Tick(object sender, EventArgs e)
            //{

            //}
        }
    }
}