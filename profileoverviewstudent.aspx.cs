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
    public partial class profileoverview : System.Web.UI.Page
    {
        System.Data.SqlClient.SqlCommand mycommand = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("studentlogin.aspx");
            }
            else
            {
                con.ConnectionString = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
                con.Open();
                show();
            }
        }
        public void show()
        {
            mycommand.CommandText = "select * from student where id='" + Session["id"] + "'";
            mycommand.Connection = con;
            sda.SelectCommand = mycommand;
            sda.Fill(ds);
            first.Text = ds.Tables[0].Rows[0]["fname"].ToString();
            last.Text = ds.Tables[0].Rows[0]["lname"].ToString();
            idnum.Text = ds.Tables[0].Rows[0]["id"].ToString();
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Remove("id");
            Response.Redirect("studentlogin.aspx");
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}