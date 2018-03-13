using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class fetchResult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string enrolln = Session["enroll"].ToString();

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        conn.Open();

        String result = "select * from it5 where enroll=@enroll";
        SqlCommand resultq = new SqlCommand(result, conn);
        resultq.Parameters.AddWithValue("@enroll", enrolln);
        SqlDataReader reader = resultq.ExecuteReader();
        if (reader.Read())
        {
            roll.Text = reader[0].ToString();
            name.Text = reader[1].ToString();
            total.Text = reader[3].ToString();
            theory.Text = reader[4].ToString();
            sessional.Text = reader[5].ToString();
            sem.Text = reader[8].ToString();
            enroll.Text = enrolln;

            reader.Close();
            conn.Close();
        }
        /*
        String rolln = "select roll from it5 where enroll=\"@enroll\"";
        SqlCommand rollq = new SqlCommand(rolln, conn);
        rollq.Parameters.AddWithValue("@enroll", enroll);

        String namen = "select name from it5 where enroll=\"@enroll\"";
        SqlCommand nameq = new SqlCommand(namen, conn);
        nameq.Parameters.AddWithValue("@enroll", enroll);

        String semn = "select sem from it5 where enroll=\"@enroll\"";
        SqlCommand semq = new SqlCommand(semn, conn);
        semq.Parameters.AddWithValue("@enroll", enroll);

        String theoryn = "select theory from it5 where enroll=\"@enroll\"";
        SqlCommand theoryq = new SqlCommand(theoryn, conn);
        theoryq.Parameters.AddWithValue("@enroll", enroll);

        String sessionaln = "select sessional from it5 where enroll=\"@enroll\"";
        SqlCommand sessionalq = new SqlCommand(sessionaln, conn);
        sessionalq.Parameters.AddWithValue("@enroll", enroll);

        String totaln = "select total from it5 where enroll=\"@enroll\"";
        SqlCommand totalq = new SqlCommand(totaln, conn);
        totalq.Parameters.AddWithValue("@enroll", enroll);

        roll.Text = rolln;
        name.Text = namen;
        sem.Text = semn;
        theory.Text = theoryn;
        sessional.Text = sessionaln;
        total.Text = totaln;
         */
    }
}