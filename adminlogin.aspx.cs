using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Studentdirectory
{
    public partial class adminlogin : System.Web.UI.Page
    {
        System.Data.SqlClient.SqlCommand mycommand = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                Response.Redirect("profileoverviewadmin.aspx");
            }
            else
            {
                con.ConnectionString = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
                con.Open();
            }
        }

        protected void login_Click(object sender, EventArgs e)
        {
            string id = user.Text.Trim();

            mycommand.CommandText = "select * from admin where id ='" + user.Text + "' and conpass='" + pass.Text + "'";
            mycommand.Connection = con;
            sda.SelectCommand = mycommand;
            sda.Fill(ds, "admin");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["id"] = id;

                Response.Redirect("profileoverviewadmin.aspx");
            }
            else
            {
                Label1.Text = "Username and Password is incorrect. Please check again.";
            }
            mycommand.ExecuteNonQuery();
            con.Close();
        }
    }
}