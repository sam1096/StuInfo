using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class edit : System.Web.UI.Page
{
    static int visit = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        string enroll = null;
        try
        {
            enroll = Session["enroll"].ToString();
        }

        catch (Exception ex)
        {
            Response.Write("Invalid Enrollment Number! Redirected back!");
            Session.Abandon();
            Server.Transfer("buttons.aspx", true);
        }

        if (visit==0)
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            conn.Open();

            String result = "select * from student where enrollno=@enroll";
            SqlCommand resultq = new SqlCommand(result, conn);
            resultq.Parameters.AddWithValue("@enroll", enroll);
            SqlDataReader reader = resultq.ExecuteReader();

            if (reader.Read())
            {
                lol.Text = enroll;
                name.Text = reader["name"].ToString();
                email.Text = reader["email"].ToString();
                addr.Text = reader["addr"].ToString();
                fname.Text = reader["fname"].ToString();
                mob.Text = reader["mob"].ToString();
                dr1.Text = reader["city"].ToString();
                dr2.Text = reader["state"].ToString();
                rd1.Text = reader["gender"].ToString();
                //rd1.Items.FindByValue(reader["gender"].ToString()).Selected = true;
                dob.Text = reader["dob"].ToString();
                sem.Text = reader["sem"].ToString();
                coll.Text = reader["coll"].ToString();
                //uname.Text = reader["uname"].ToString();
                //password.Text = reader["password"].ToString();
                reader.Close();

                visit++;

            }
        }

        else
        {
            Response.Write("Multiple requests recieved, please retry!");
            visit = 0;
            String user = Session["LogUser"].ToString();

            if (user == "admin")
            {
                Server.Transfer("preEdit.aspx", true);
            }

            else if(user == "student")
            {
                Server.Transfer("login.aspx", true);
            }

            else
            {
                Response.Write("Invalid Request, please retry!");
                Session.Abandon();
                Server.Transfer("enroll.aspx", true);
            }
            
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String enroll = Session["enroll"].ToString();
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("update student set dob=@dob,name=@name,email=@email,addr=@addr,fname=@fname,mob=@mob,coll=@coll,city=@city,sem=@sem,state=@state,gender=@gender where enrollno=" + enroll +"", conn);
        cmd.Parameters.AddWithValue("@sem", sem.Text);
        cmd.Parameters.AddWithValue("@name",name.Text);
        //cmd.Parameters.AddWithValue("@uname", uname.Text);
        cmd.Parameters.AddWithValue("@email", email.Text);
        //cmd.Parameters.AddWithValue("@pass", password.Text);
        cmd.Parameters.AddWithValue("@addr", addr.Text);
        cmd.Parameters.AddWithValue("@fname", fname.Text);
        cmd.Parameters.AddWithValue("@mob", mob.Text);
        cmd.Parameters.AddWithValue("@coll", coll.Text);
        cmd.Parameters.AddWithValue("@city", dr1.Text);
        cmd.Parameters.AddWithValue("@state", dr2.Text);
        cmd.Parameters.AddWithValue("@gender", rd1.Text);
        cmd.Parameters.AddWithValue("@dob", dob.Text);
        cmd.ExecuteNonQuery();

        conn.Close();
        Session.Abandon();
        Response.Write("Database Updated! ");
        Server.Transfer("buttons.aspx", true);

    }
}