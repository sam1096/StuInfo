<%@ Page Language="C#" AutoEventWireup="true" CodeFile="delete.aspx.cs" Inherits="delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo.css" media="all" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 294px;
        }
    </style>
</head>
<body class="container">
      <header>
				<h1><span>Tutorials</span>  Register  Here</h1>
     </header>  
    <div class="form">
    <form id="contactform" runat="server">
    <div>
    
    </div>
        <table class="center">
            <tr>
                <td class="auto-style2"> Enrollment Number:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="225px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td>
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="False" OnClick="Button1_Click" Text="Delete" Width="100px" class="buttom" />
                </td>
            </tr>
        </table>
    </form>
        </div>
</body>
</html>
