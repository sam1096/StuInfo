using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class delete : System.Web.UI.Page
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
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("delete from student where enrollno='" + TextBox1.Text + "'", conn);
        cmd.ExecuteNonQuery();
        conn.Close();


    }
}