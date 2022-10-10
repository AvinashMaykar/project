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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection SQLConn = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            SQLConn.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;initial catalog=Project;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SQLConn.Open();

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {

        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void btncreate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into tbluser values(@uname,@pwd,@repwd,@fname,@mname,@lname,@que,@ans)",SQLConn);
            cmd.Parameters.AddWithValue("@uname",SqlDbType.VarChar).Value=txtuname.Text;
            cmd.Parameters.AddWithValue("@pwd",SqlDbType.VarChar).Value = txtpwd.Text;
            cmd.Parameters.AddWithValue("@repwd",SqlDbType.VarChar).Value = txtrepwd.Text;
            cmd.Parameters.AddWithValue("@fname",SqlDbType.VarChar).Value = txtfname.Text;
            cmd.Parameters.AddWithValue("@mname",SqlDbType.VarChar).Value = txtmname.Text;
            cmd.Parameters.AddWithValue("@lname",SqlDbType.VarChar).Value = txtlname.Text;
            cmd.Parameters.AddWithValue("@que",SqlDbType.VarChar).Value = txtque.Text;
            cmd.Parameters.AddWithValue("@ans",SqlDbType.VarChar).Value = txtans.Text;

           // SQLConn.Open();
            
            cmd.ExecuteNonQuery();

            //SQLConn.Close();

            MultiView1.ActiveViewIndex = 1;

        }

        protected void btnconti_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

      
    }
}