using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if ((Session["enroll"]) == null)
        {
            
            Response.Write("Invalid Access! Redirected to home page!");
            Session.Abandon();
            Server.Transfer("enroll.aspx", true);
        }

        else
        {
            enroll.Text = Session["enroll"].ToString();
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        conn.Open();
        String check = "select count(*) from student where uname='" + TextBox1.Text + "'";
        SqlCommand com = new SqlCommand(check, conn);

        try
        {
            com.ExecuteNonQuery();

        }
        catch
        {
            Response.Write("Blaa!");
        }
        int tem = Convert.ToInt32(com.ExecuteScalar().ToString());
        if (tem == 1)
        {
            string checkpass = "select password from student where uname='" + TextBox1.Text+ "'";
            SqlCommand pass = new SqlCommand(checkpass, conn);

            try
            {
                pass.ExecuteNonQuery();

            }
            catch
            {
                Response.Write("Blaa!");
            }
            string password = pass.ExecuteScalar().ToString().Replace(" ", "");
            if (password == TextBox2.Text)
            {
                Session["LoggedIn"] = true;
                Session["LogUser"] = "student";

                Response.Write("password is correct!!");
                Response.Redirect("studentLanding.aspx");
                    
            }
            else
            { Response.Write("password is incorrect!!"); }
        }
        else
        { Response.Write("username is incorrect!!"); }

        conn.Close();
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void enroll_TextChanged(object sender, EventArgs e)
    {

    }
}