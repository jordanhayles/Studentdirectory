using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Studentdirectory
{
    public partial class adminregister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
            System.Data.SqlClient.SqlCommand mycommand = new System.Data.SqlClient.SqlCommand();
            con.Open();
            mycommand.CommandText = "insert into admin (id,fname,lname,gender,dob,email,faculty,contact,address,password,conpass) values('" + id.Text + "','" + fname.Text + "','" + lname.Text + "','" + gender.Text + "','" + dob.Text + "','" + email.Text + "','" + faculty.Text + "','" + contact.Text + "','" + address.Text + "','" + pass.Text + "','" + conpass.Text + "')";
            mycommand.Connection = con;
            regtxt.Text = "Registration Complete!";
            mycommand.ExecuteNonQuery();
            con.Close();
        }

        protected void return_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
}