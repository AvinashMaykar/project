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
    public partial class ChangePassword : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("update tbluser set Password=@npwd ,ReenterPassword=@repwd where UserName=@uname and Password=@opwd", SQLConn);
            //if (String.IsNullOrEmpty("txtnpwd"))
            //{
            //    cmd.Parameters.AddWithValue("@npwd", DBNull.Value);
            //}
            //else
            //    cmd.Parameters.AddWithValue("@npwd", txtnpwd.Text);

            cmd.Parameters.AddWithValue("@npwd", SqlDbType.VarChar).Value = txtnpwd.Text;
            //if (String.IsNullOrEmpty("txtrepwd"))
            //{
            //    cmd.Parameters.AddWithValue("@repwd", DBNull.Value);
            //}
            //else
            //    cmd.Parameters.AddWithValue("@repwd", txtnpwd.Text);
            cmd.Parameters.AddWithValue("@repwd", SqlDbType.VarChar).Value = txtrepwd.Text;
            //if (String.IsNullOrEmpty("txtopwd"))
            //{
            //    cmd.Parameters.AddWithValue("@opwd", DBNull.Value);
            //}
            //else
            //    cmd.Parameters.AddWithValue("@opwd", txtnpwd.Text);
            cmd.Parameters.AddWithValue("@opwd", SqlDbType.VarChar).Value = txtopwd.Text;
            //if (String.IsNullOrEmpty("txtuname"))
            //{
            //    cmd.Parameters.AddWithValue("@uname", DBNull.Value);
            //}
            //else
                //cmd.Parameters.AddWithValue("@npwd", txtnpwd);

            cmd.Parameters.AddWithValue("@uname", SqlDbType.VarChar).Value = Session["uname"];

            //int cnt;
            int cnt = cmd.ExecuteNonQuery();
            //cmd.ExecuteNonQuery();
            SQLConn.Close();

            if (cnt == 1)
            {
                MultiView1.ActiveViewIndex = 1;

            }
            else
            {
                Console.WriteLine("Invalid Password");
  
            }
        }

        protected void btncontinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}