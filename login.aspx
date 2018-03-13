<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 136px;
        }
        .auto-style2 {
            width: 257px;
        }
        .auto-style3 {
            width: 257px;
            text-align: right;
        }
        .auto-style4 {
            width: 276px;
        }
        #Reset1 {
            width: 81px;
            margin-left: 36px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo.css" media="all" />
</head>
<body class="container">
      <div class="clr"></div>
    <header>
				<h1><span>Tutorials</span>  Register  Here</h1>
     </header> 
    <form id="form1" runat="server">
        <table class="auto-style1">
           <tr>
                <td class="auto-style3">Enrollment Number</td>
                <td class="auto-style4">
                    <asp:TextBox ID="enroll" runat="server" value="" Width="269px" OnTextChanged="enroll_TextChanged" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">UserName</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="269px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username is required" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server" Width="268px" TextMode="Password" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter valid password" Font-Bold="True" ForeColor="Blue"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 5px" Text="SUBMIT" Width="86px" />
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
