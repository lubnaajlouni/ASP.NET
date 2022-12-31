using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task_29
{
    public partial class login_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["log"] != null)
            {
                TextBox1.Text = Request.Cookies["log"]["UserName"].ToString();
                TextBox2.Attributes["value"] = Request.Cookies["log"]["Password"].ToString();

                //TextBox1.BackColor = System.Drawing.Color.LightBlue;
                //TextBox2.BackColor = System.Drawing.Color.LightBlue;
                //TextBox1.BorderColor = System.Drawing.Color.LightBlue;
                //TextBox2.BorderColor = System.Drawing.Color.LightBlue;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie q = new HttpCookie("login");
            q.Values.Add("UserName", TextBox1.Text);
            q.Values.Add("Password", TextBox2.Text);
            if (CheckBox1.Checked)
            {
                q.Expires = DateTime.Now.AddSeconds(20);
                Response.Cookies.Add(q);
                Response.Redirect("default.aspx");

            }
        }
    }
}