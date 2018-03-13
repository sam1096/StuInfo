using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            conn.Open();
            String check = "select count(*) from student where enrollno='" + enroll.Text + "'";
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

                Session["enroll"] = enroll.Text;
                if (dob.Text != "")
                {
                    String check2 = "select dob from student where enrollno='" + enroll.Text + "'";
                    SqlCommand cmd1 = new SqlCommand(check2, conn);
                    SqlDataReader ids = cmd1.ExecuteReader();
                    String id1 = "";
                    while (ids.Read())
                    {
                        id1 = ids.GetString(0);
                    }
                    string s1 = dob.Text;
                    if (id1 == s1)
                    {
                        Server.Transfer("login.aspx");                        
                    }
                    else Response.Write("Invalid Enrollment Number or Date of Birth");
                }
            }
            else
            {  Session["enroll"]=enroll.Text;
                Session["dob"]=dob.Text;
           //Response.Redirect("registration.aspx?enroll=" + Server.UrlEncode(enroll.Text));
      
     /*String insert = "insert into student (enrollno) values(@enrollno);
            SqlCommand com = new SqlCommand(insert, conn);
            com.Parameters.AddWithValue("@enrollno", enroll.Text);*/
                if (enroll.Text != "" && dob.Text != "")
                    Server.Transfer("registration.aspx");
                      else if(dob.Text==""||dob.Text==" ")
                    Response.Write("Invalid Date of Birth!!  Check out (dd/mm/yyyy) format");
                else
                    Response.Write("Invalid Enrollment Number");
             }
                conn.Close();
        }

    }
}