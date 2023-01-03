﻿using System;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Task2._1._2023.Models;

namespace Task2._1._2023.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);

            if (result.Succeeded)
            {
                string Id = "";
                SqlConnection conn = new SqlConnection("data source =DESKTOP-EK069V4\\SQLEXPRESS; database = aspnet-Task2.1.2023-20230103072455 ; integrated security=SSPI");
                SqlCommand command1 = new SqlCommand($"select Id from AspNetUsers where email='moath@yahoo.com'", conn);
                conn.Open();
                SqlDataReader sdr = command1.ExecuteReader();
                if (sdr.Read())
                {
                    Id = sdr[0].ToString();
                }
                conn.Close();
                SqlCommand command2 = new SqlCommand($"Insert into AspNetUserRoles values('{Id}',{Convert.ToInt32(RadioButtonList1.SelectedValue)})", conn);
                conn.Open();
                command2.ExecuteNonQuery();
                conn.Close();

                // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");
                signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                
            }
            else 
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }
    }
}