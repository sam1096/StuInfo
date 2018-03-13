using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class buttons : System.Web.UI.Page
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
        Server.Transfer("addStudent.aspx");
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Server.Transfer("preEdit.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        
        Server.Transfer("delete.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        
        Server.Transfer("res-search.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Server.Transfer("addResultData.aspx");
    }


    protected void Add_result_Click(object sender, EventArgs e)
    {
        Server.Transfer("res-search.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Server.Transfer("adminlogin.aspx");
    }
}