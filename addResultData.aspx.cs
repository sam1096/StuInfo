using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class addResultData : System.Web.UI.Page
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
    protected void sessional_TextChanged(object sender, EventArgs e)
    {
        total.Text = Convert.ToString(Convert.ToInt32(theory.Text) + Convert.ToInt32(sessional.Text)); 
    }
    protected void theory_TextChanged(object sender, EventArgs e)
    {
        total.Text = Convert.ToString(Convert.ToInt32(theory.Text) + Convert.ToInt32(sessional.Text));
    }
    protected void insert_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            conn.Open();
            String insert = "insert into it5(roll,name,enroll,total,theory,sessional,branch,batch,sem) values(@roll,@name,@enroll,@total,@theory,@sessional,@branch,@batch,@sem)";
            SqlCommand com = new SqlCommand(insert, conn);

            com.Parameters.AddWithValue("@roll", rollNo.Text);
            com.Parameters.AddWithValue("@name", studentName.Text);
            com.Parameters.AddWithValue("@enroll", enrollNo.Text);
            com.Parameters.AddWithValue("@total", total.Text);
            com.Parameters.AddWithValue("@theory", theory.Text);
            com.Parameters.AddWithValue("@sessional", sessional.Text);
            com.Parameters.AddWithValue("@branch", branch.Text);
            com.Parameters.AddWithValue("@batch", batch.Text);
            com.Parameters.AddWithValue("@sem", sem.Text);
            com.ExecuteNonQuery();


            Response.Write("Data Entered!");
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}