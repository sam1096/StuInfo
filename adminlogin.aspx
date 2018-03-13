<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

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
            width: 245px;
            text-align: right;
        }
        .auto-style3 {
            width: 245px;
            text-align: right;
        }
        .auto-style4 {
            width: 269px;
        }
    </style>
</head>
<body  class="container">
      <div class="clr"></div>
    <header>
				<h1><span>ADMIN LOGIN </span></h1>
     </header> 
    <form id="form1" runat="server">
        <table class="center">
            <tr>
                <td class="auto-style3">Admin Name:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="adname" runat="server" Width="258px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Admin Password:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="adpass" runat="server" TextMode="password" Width="259px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" Text="GO" Width="93px" OnClick="Button1_Click" style="margin-left: 81px" class="buttom" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
