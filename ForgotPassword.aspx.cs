using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Project
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection SQLConn = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            SQLConn.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;initial catalog=Project;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SQLConn.Open();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from tbluser where UserName=@uname", SQLConn);
            cmd.Parameters.AddWithValue("@uname", SqlDbType.VarChar).Value =txtuname.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lbluser.Text = txtuname.Text;
                lblque.Text = dr.GetString(6);
                MultiView1.ActiveViewIndex += 1;

            }
            else
            {
                lblmsg1.Text = "Invalid Username!";
            }

            dr.Close();
            SQLConn.Close();


        }

        protected void btnget_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select count(*),Password from tbluser where UserName=@uname and HintAnswer=@ans group by UserName,Password", SQLConn);
            cmd.Parameters.AddWithValue("@uname", SqlDbType.VarChar).Value = txtuname.Text;
            cmd.Parameters.AddWithValue("@ans", SqlDbType.VarChar).Value = txtans.Text;

            //SQLConn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                if (dr.GetInt32(0) == 1)
                {
                    lblpwd.Text = dr.GetString(1);
                    MultiView1.ActiveViewIndex += 1;
                }


            }

            else
            {


                lblmsg2.Text = "Invalid Answer!";
            }

            dr.Close();
            SQLConn.Close();

        }

        protected void btnconti_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}