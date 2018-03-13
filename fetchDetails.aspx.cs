using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class fetchDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string enroll = null;
        try
        {
           enroll = Session["enroll"].ToString();
        }

        catch(Exception ex)
        {
            Response.Write("Invalid Access! Redirected to home page!");
            Session.Abandon();
            Server.Transfer("enroll.aspx", true);
        }

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        conn.Open();

        String result = "select * from student where enrollno=@enroll";
        SqlCommand resultq = new SqlCommand(result, conn);
        resultq.Parameters.AddWithValue("@enroll", enroll);
        SqlDataReader reader = resultq.ExecuteReader();
        if (reader.Read())
        {
            enrolln.Text = reader[0].ToString();
            name.Text = reader[1].ToString();
            email.Text = reader[3].ToString();
            address.Text = reader["addr"].ToString();
            fname.Text = reader["fname"].ToString();
            phone.Text = reader["mob"].ToString();
            city.Text = reader["city"].ToString();
            state.Text = reader["state"].ToString();
            gender.Text = reader[12].ToString();
            dob.Text = reader[13].ToString();
            sem.Text = reader["sem"].ToString();
            reader.Close();

        }

        String resultR = "select * from it5 where enroll=@enroll";
        SqlCommand resultqR = new SqlCommand(resultR, conn);
        resultqR.Parameters.AddWithValue("@enroll", enroll);
        //try
        //{

            reader = resultqR.ExecuteReader();
            if (reader.Read())
            {
                total.Text = reader[3].ToString();
                theory.Text = reader[4].ToString();
                sessional.Text = reader[5].ToString();
                psem.Text = reader[8].ToString();

                reader.Close();
                conn.Close();
            }

      //  }

        //catch (Exception ex)
       // {
         //   Response.Write("Session Expired! Redirected to home page!");
           // Session.Abandon();
            //Server.Transfer("enroll.aspx", true);
      //  }
    }
}