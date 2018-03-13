using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String enroll = null;
        try
        {
            enroll = Session["enroll"].ToString();
        }

        catch (Exception ex)
        {
            Response.Write("Invalid Access. Redirected to home page!");
            Server.Transfer("enroll.aspx", true);
        }
        

    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            conn.Open();
            //string enroll = Server.UrlDecode(Request.QueryString["enroll"]);
            int enroll = Convert.ToInt32(Session["enroll"]);
            string dob = (string)(Session["dob"]);
            String insert = "insert into student(enrollno,name,fname,email,addr,mob,coll,sem,city,state,gender,uname,password,dob) values(@enrollno,@name,@fname,@email,@addr,@mob,@coll,@sem,@city,@state,@gender,@uname,@password,@dob)";
            SqlCommand com = new SqlCommand(insert, conn);

            com.Parameters.AddWithValue("@enrollno",enroll);
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
            com.Parameters.AddWithValue("@dob", dob);

            com.ExecuteNonQuery();

 
            Response.Write("Registration Successful! Please log in.");
            conn.Close();
            Server.Transfer("enroll.aspx", true);
        }
        catch(Exception ex)
       {
           Response.Write(ex);
       }
    }
    protected void password_TextChanged(object sender, EventArgs e)
    {

    }
    protected void dob_TextChanged(object sender, EventArgs e)
    {

    }
}