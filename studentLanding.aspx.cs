using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class studentLanding : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String user = null;
        try
        {
            user = Session["LogUser"].ToString();
        }

        catch(Exception ex)
        {
            Response.Write("Invalid Access. Redirected to home page!");
            Server.Transfer("enroll.aspx", true);
        }

        if(user != "student")
        {
            Response.Write("Sorry, you aren't logged in as student. Please Log in!");
            Server.Transfer("enroll.aspx", true);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("fetchDetails.aspx", true);
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Server.Transfer("edit.aspx", true);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Server.Transfer("enroll.aspx", true);
    }
}