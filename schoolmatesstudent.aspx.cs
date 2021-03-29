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
    public partial class schoolmatesstudent : System.Web.UI.Page
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

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("id");
            Response.Redirect("studentlogin.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("schoolmatesstudent.aspx");
        }


        protected void search_Click1(object sender, EventArgs e)
        {
            string val = value.Text;
            string val1 = value1.Text;
            string val2 = value2.Text;
            string val3 = value3.Text;
            string Filter = "";
            if (val != "") { Filter = Filter + "id like '%" + val + "%' and "; }
            if (val1 != "") { Filter = Filter + "fname like '%" + val1 + "%' and "; }
            if (val2 != "") { Filter = Filter + "lname like '%" + val2 + "%' and "; }
            if (val3 != "") { Filter = Filter + "program like '%" + val3 + "%' and "; }

            if (Filter.Length > 0)
            {
                string FinalFilter = Filter.Remove(Filter.Length - 5, 4);
                SqlDataSource1.FilterExpression = FinalFilter;
            }
            else
            {
                GridView1.DataBind();
            }
        }
    }
    }
