using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class res_search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String user = Session["LogUser"].ToString();
        if (user != "admin"||user=="")
        {
            Response.Write("Sorry, you aren't logged in as admin. Please Log in!");
            Server.Transfer("adminlogin.aspx", true);
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        conn.Open();
        String query = "select enrollno,name,sem from student where name like'" + TextBox2.Text + "%'";
        SqlCommand com = new SqlCommand(query, conn);
        SqlDataReader ds = com.ExecuteReader();
        while(ds.Read())
        {

            String t1 = ds[0].ToString();
            String t2 = ds[1].ToString();
            String t3 = ds[2].ToString();
            TableRow row = new TableRow();
            TableCell cell1 = new TableCell();
            TableCell cell2 = new TableCell();
            TableCell cell3 = new TableCell();
            cell1.Text = t1;
            cell2.Text = t2;
            cell3.Text = t3;
            row.Cells.Add(cell1);
            row.Cells.Add(cell2);
            row.Cells.Add(cell3);
            Table1.Rows.Add(row);
           
        }
        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        conn.Open();
        String check = "select count(*) from student where enrollno='" + TextBox1.Text + "'";
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
            Session["enroll"] = TextBox1.Text; Server.Transfer("fetchDetails.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        conn.Open();
        String check = "select count(*) from student where enrollno='" + TextBox1.Text + "'";
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
            Server.Transfer("fetchResult.aspx");
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}