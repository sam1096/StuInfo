<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buttons.aspx.cs" Inherits="buttons" %>

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
            width: 271px;
        }
        .auto-style3 {
            width: 320px;
        }
    </style>
</head>
<body class="container">
    <form id="contactform" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" style="margin-left: 87px" Text="Add Student" Width="88px" OnClick="Button1_Click" />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" style="margin-left: 121px" Text="Edit Student Details" Width="140px" OnClick="Button2_Click1" />
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Font-Bold="True" style="margin-left: 103px" Text="Delete Information" Width="128px" OnClick="Button3_Click" />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button4" runat="server" Font-Bold="True" style="margin-left: 87px" Text="Search" Width="89px" OnClick="Button4_Click" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button5" runat="server" Font-Bold="True" style="margin-left: 126px" Text="Add Result" Width="104px" OnClick="Button5_Click" />
                </td>
                <td>
                    <asp:Button ID="Add_result" runat="server" Font-Bold="True" style="margin-left: 118px" Text="View Result" Width="98px" OnClick="Add_result_Click" />
                </td>
            </tr>
                        <tr>
                <td class="auto-style2">
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button6" runat="server" Font-Bold="True" style="margin-left: 87px" Text="Logout" Width="89px" OnClick="Button6_Click"/>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    e</td>
                
            </tr>
        </table>
    </form>
</body>
</html>

