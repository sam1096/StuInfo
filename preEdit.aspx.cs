using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class preEdit : System.Web.UI.Page
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
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        conn.Open();
        String check = "select count(*) from student where enrollno='" + enrollnm.Text + "'";
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
            Session["enroll"] = enrollnm.Text; 
            Server.Transfer("edit.aspx");
        }

        else
        {
            Response.Write("Enrollment Number doesn't exist! Try again.");
            Server.Transfer("preEdit.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        conn.Open();
        String check = "select count(*) from student where enrollno='" + enrollnm.Text + "'";
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
            Session["enroll"] = enrollnm.Text;
            Server.Transfer("edit.aspx");
        }

        else
        {
            Response.Write("Enrollment Number doesn't exist! Try again.");
            Server.Transfer("addResultData.aspx");
        }
    }
}