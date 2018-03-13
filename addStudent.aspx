<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addStudent.aspx.cs" Inherits="addStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo.css" media="all" />
    
    </style>
    <style type="text/css">
        .auto-style1 {
            width: 257px;
        }
        .auto-style2 {
            width: 110px;
        }
        .auto-style3 {
            width: 133px;
        }
    </style>
</head>
<body class="container">

      <div class="clr"></div>
    <header>
				<h1><span>ADD NEW STUDENT</span></h1>
     </header> 
    <div class="form">


    <form id="form1" runat="server">
        <table id="contactform" style="text-align:left;">
            <tr>
                <td class="auto-style3">Enrollment Number:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="t1" runat="server" Width="239px" class="input" placeholder="Enrollment Number"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                 <td class="auto-style2">Date of Birth:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="dob" runat="server" Width="239px" class="input" placeholder="Date of Birth" ></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Student Name:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="name" runat="server" Width="239px" class="input" placeholder="Student Name"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                 <td class="auto-style2">Father&#39;s Name:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="fname" runat="server" Width="239px" class="input" placeholder="Father's Name"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Email id:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="email" runat="server" Width="239px" class="input" placeholder="Email ID"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Current Address:</td>
                <td class="auto-style1">
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
                <td class="auto-style1">
                    <asp:TextBox ID="coll" runat="server" Width="239px" class="input" placeholder="College Name"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Current Semester:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="sem" runat="server"  Width="239px" class="input" placeholder="Current Semester"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                </tr>
           <tr>
                <td class="auto-style2">City:</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="dr1" runat="server" class="input"  Width="242px" Height="16px">
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
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">State:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="dr2" runat="server" class="input"  Width="248px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>M.P</asp:ListItem>
                        <asp:ListItem>Maharashtra</asp:ListItem>
                        <asp:ListItem>Uttaranchal</asp:ListItem>
                        <asp:ListItem>J&amp;K</asp:ListItem>
                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                        <asp:ListItem>Karnataka</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <br />
                </td>
                </tr>
            <tr>
            
                <td class="auto-style2">Gender:</td>
                <td class="auto-style1">
                    <asp:RadioButtonList ID="rd1" runat="server" RepeatDirection="Horizontal" >
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Username:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="uname" runat="server" Width="239px" class="input"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>

                <td class="auto-style2">Password:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="password" runat="server" Width="239px" class="input" TextMode="password" ></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="86px" class="buttom" style="margin-left: 88px"/>
                    </td>
                <td>
                    <input id="Reset1" type="reset" value="Reset" class="buttom" style="width:86px;"/></td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
        </div>
</body>
</html>
