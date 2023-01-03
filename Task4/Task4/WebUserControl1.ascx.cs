using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task4
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {




            if (Request.Cookies["v"] != null)
            {

                Button1.Visible = false;
                RadioButtonList1.Visible = false;
                int count100, count75, count50, count25, count0;

                SqlConnection connection =
                 new SqlConnection("data source =  DESKTOP-EK069V4\\SQLEXPRESS; database = task1 ; integrated security=SSPI");
                SqlCommand command1 = new SqlCommand($"select count(valu) from task4 where valu=100 ", connection);
                connection.Open();
                count100 = Convert.ToInt32(command1.ExecuteScalar());
                connection.Close();
                SqlCommand command2 = new SqlCommand($"select count(valu) from task4 where valu=75 ", connection);
                connection.Open();
                count75 = Convert.ToInt32(command2.ExecuteScalar());
                connection.Close();
                SqlCommand command3 = new SqlCommand($"select count(valu) from task4 where valu=50 ", connection);
                connection.Open();
                count50 = Convert.ToInt32(command3.ExecuteScalar());
                connection.Close();
                SqlCommand command4 = new SqlCommand($"select count(valu) from task4 where valu=25 ", connection);
                connection.Open();
                count25 = Convert.ToInt32(command4.ExecuteScalar());
                connection.Close();
                SqlCommand command5 = new SqlCommand($"select count(valu) from task4 where valu=0 ", connection);
                connection.Open();
                count0 = Convert.ToInt32(command5.ExecuteScalar());
                connection.Close();
                double sum = count100 + count25 + count50 + count75 + count0;
                double avg100 = sum / count100;
                double avv100 = 100 / avg100;
                double avg75 = sum / count75;
                double avv75 = 100 / avg75;
                double avg50 = sum / count50;
                double avv50 = 100 / avg50;
                double avg25 = sum / count25;
                double avv25 = 100 / avg25;
                double avg0 = sum / count0;
                double avv0 = 100 / avg0;
                avv100 = Math.Round(avv100, 2);
                avv75 = Math.Round(avv75, 2);
                avv50 = Math.Round(avv50, 2);
                avv0 = Math.Round(avv0, 2);
                avv25 = Math.Round(avv25, 2);
                bar1.Style.Add("width", $"{Convert.ToInt32(avv100)}" + "%");
                bar1.InnerText = avv100.ToString();
                bar2.Style.Add("width", $"{Convert.ToInt32(avv75)}" + "%");
                bar2.InnerText = avv75.ToString();
                bar3.Style.Add("width", $"{Convert.ToInt32(avv50)}" + "%");
                bar3.InnerText = avv50.ToString();
                bar4.Style.Add("width", $"{Convert.ToInt32(avv25)}" + "%");
                bar4.InnerText = avv25.ToString();
                bar5.Style.Add("width", $"{Convert.ToInt32(avv0)}" + "%");
                bar5.InnerText = avv0.ToString();
                Label3.Text = "Excellent";
                Label4.Text = "Very well";
                Label5.Text = "good";
                Label6.Text = "weak";
                Label7.Text = "acceptable";



                //}
            }
            else
            {
                //bar1.Visible = false;
                //bar2.Visible = false;
                //bar3.Visible = false;
                //bar4.Visible = false;
                //bar5.Visible = false;
                bars.Visible = false;
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            int count100, count75, count50, count25, count0;
            int y = Convert.ToInt32(RadioButtonList1.SelectedValue);


            HttpCookie cookie = new HttpCookie("v");
            cookie.Values.Add("id", "done");
            cookie.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(cookie);





            SqlConnection connection =
           new SqlConnection("data source =  DESKTOP-EK069V4\\SQLEXPRESS; database = task1 ; integrated security=SSPI");
            SqlCommand command = new SqlCommand($"insert into task4  values ('a','a',{y})  ", connection);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            SqlCommand command1 = new SqlCommand($"select count(valu) from task4 where valu=100 ", connection);
            connection.Open();
            count100 = Convert.ToInt32(command1.ExecuteScalar());
            connection.Close();
            SqlCommand command2 = new SqlCommand($"select count(valu) from task4 where valu=75 ", connection);
            connection.Open();
            count75 = Convert.ToInt32(command2.ExecuteScalar());
            connection.Close();

            SqlCommand command3 = new SqlCommand($"select count(valu) from task4 where valu=50 ", connection);
            connection.Open();
            count50 = Convert.ToInt32(command3.ExecuteScalar());
            connection.Close();

            SqlCommand command4 = new SqlCommand($"select count(valu) from task4 where valu=25 ", connection);
            connection.Open();
            count25 = Convert.ToInt32(command4.ExecuteScalar());

            connection.Close();

            SqlCommand command5 = new SqlCommand($"select count(valu) from task4 where valu=0 ", connection);
            connection.Open();
            count0 = Convert.ToInt32(command5.ExecuteScalar());

            connection.Close();

            double sum = count100 + count25 + count50 + count75 + count0;
            double avg100 = sum / count100;
            double avv100 = 100 / avg100;
            double avg75 = sum / count75;
            double avv75 = 100 / avg75;
            double avg50 = sum / count50;
            double avv50 = 100 / avg50;
            double avg25 = sum / count25;
            double avv25 = 100 / avg25;
            double avg0 = sum / count0;
            double avv0 = 100 / avg0;
            Response.Redirect("1.aspx");
        }
    }
}