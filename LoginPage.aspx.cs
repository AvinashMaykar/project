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
    public partial class LoginPage : System.Web.UI.Page
       
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection SQLConn = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            SQLConn.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;initial catalog=Project;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SQLConn.Open();
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select count(*) from tbluser where UserName=@uname And Password=@pwd", SQLConn);
            cmd.Parameters.AddWithValue("@uname", SqlDbType.VarChar).Value = txtuname.Text;
            cmd.Parameters.AddWithValue("@pwd", SqlDbType.VarChar).Value = txtpwd.Text;
            //SQLConn.Open();

            Int32 cnt = Convert.ToInt32(cmd.ExecuteScalar());

            SQLConn.Close();


            if (cnt==0)
            {
                lblmsg.Text = "Username or Password is Incorrect";
                
            }

            else 
            {
                MultiView1.ActiveViewIndex = 1;
                Literal1.Text = txtuname.Text;
                //Response.Redirect("ChangePassword.aspx");
                Session["uname"] = txtuname.Text; 
            }

            

        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            Session.Abandon();
            txtuname.Text = "";
            txtpwd.Text = "";

        }

        
    }
}