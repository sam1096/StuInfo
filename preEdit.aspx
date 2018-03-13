<%@ Page Language="C#" AutoEventWireup="true" CodeFile="preEdit.aspx.cs" Inherits="preEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo.css" media="all" />
</head>
<body class="container">

     <div class="clr"></div>
    <header>
				<h1><span>SEARCH</span></h1>
     </header>  

    <div class="form">
    <form id="contactform" runat="server">

    <div>
            <table class="center">
            <tr>
                <td class="auto-style2">Enter Enrollment Number:</td>
                <td>
                    <asp:TextBox ID="enrollnm" runat="server" Width="248px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                
                    <td><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search"  class="buttom" /></td>
                    <td><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="View Result" class="buttom" /></td>
             
            </tr>
        </table>
    </div>
    </form>
        </div>
</body>
</html>
