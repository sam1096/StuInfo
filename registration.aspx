<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo.css" media="all" />
    <style>
    table.center {
    margin-left:auto; 
    margin-right:auto;
    }
    </style>
</head>
<body class="container">

     <div class="clr"></div>
    <header>
				<h1><span>Tutorials</span>  Register  Here</h1>
     </header>  

    <div class="form">
    <form id="contactform" runat="server">
        <table class="center" style="text-align:left;">
            <tr>
                <td class="auto-style2">Student Name:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="name" runat="server" Width="239px" class="input" placeholder="Student Name"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Father&#39;s Name:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="fname" runat="server" Width="239px" class="input" placeholder="Father's Name"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Email id:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="email" runat="server" Width="239px" class="input" placeholder="Email ID"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Current Address:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="addr" runat="server" Width="239px" class="input" placeholder="Current Address"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Contact Number:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="mob" runat="server" Width="239px" class="input" placeholder="Contact Number"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style2">College Name:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="coll" runat="server" Width="239px" class="input" placeholder="College Name"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Current Semester:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="sem" runat="server" OnTextChanged="TextBox7_TextChanged" Width="239px" class="input" placeholder="Current Semester"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">City:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="dr1" runat="server" class="input"  Width="289px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Indore</asp:ListItem>
                        <asp:ListItem>Bhopal</asp:ListItem>
                        <asp:ListItem>Jabalpur</asp:ListItem>
                        <asp:ListItem>Pune</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Nagpur</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Kolkata</asp:ListItem>
                        <asp:ListItem>Dehradun</asp:ListItem>
                        <asp:ListItem>Banglore</asp:ListItem>
                        <asp:ListItem>Hyderabad</asp:ListItem>
                        <asp:ListItem>Shrinagar</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">State:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="dr2" runat="server" class="input"  Width="289px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>M.P</asp:ListItem>
                        <asp:ListItem>Maharashtra</asp:ListItem>
                        <asp:ListItem>Uttaranchal</asp:ListItem>
                        <asp:ListItem>J&amp;K</asp:ListItem>
                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                        <asp:ListItem>Karnataka</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Gender:</td>
                <td class="auto-style5">
                    <asp:RadioButtonList ID="rd1" runat="server" RepeatDirection="Horizontal" >
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Username:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="uname" runat="server" Width="239px" class="input"></asp:TextBox>
                </td>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="password" runat="server" Width="239px" class="input" TextMode="password" OnTextChanged="password_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button1"  runat="server" OnClick="Button1_Click" Text="Submit" Width="86px" class="buttom"/>
                    <input id="Reset1" type="reset" value="Reset" class="buttom" style="width:86px;"/></td>
                <td>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    <div>
    
    </div>
        
    </form>
        </div>
</body>
</html>
