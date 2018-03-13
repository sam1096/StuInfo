using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class addStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String user = Session["LogUser"].ToString();

        if (user != "admin")
        {
            Response.Write("Sorry, you aren't logged in as admin. Please Log in!");
            Server.Transfer("adminlogin.aspx", true);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    { try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            conn.Open();
            //string enroll = Server.UrlDecode(Request.QueryString["enroll"]);

            Response.Write(dob.Text);

          String insert = "insert into student(enrollno,name,fname,email,addr,mob,coll,sem,city,state,gender,uname,password,dob) values(@enrollno,@name,@fname,@email,@addr,@mob,@coll,@sem,@city,@state,@gender,@uname,@password,@dob)";
            SqlCommand com = new SqlCommand(insert, conn);

            com.Parameters.AddWithValue("@enrollno", t1.Text);
            com.Parameters.AddWithValue("@name", name.Text);
            com.Parameters.AddWithValue("@fname", fname.Text);
            com.Parameters.AddWithValue("@email", email.Text);
            com.Parameters.AddWithValue("@addr", addr.Text);
            com.Parameters.AddWithValue("@mob", mob.Text);
            com.Parameters.AddWithValue("@coll", coll.Text);
            com.Parameters.AddWithValue("@sem", sem.Text);
            com.Parameters.AddWithValue("@city", dr1.Text);
            com.Parameters.AddWithValue("@state", dr2.Text);
            com.Parameters.AddWithValue("@gender", rd1.Text);
            com.Parameters.AddWithValue("@uname", uname.Text);
            com.Parameters.AddWithValue("@password", password.Text);
            com.Parameters.AddWithValue("@dob", dob.Text);

            com.ExecuteNonQuery();


            Response.Write("database updated");
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    
}