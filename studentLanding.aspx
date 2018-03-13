<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentLanding.aspx.cs" Inherits="studentLanding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" style="margin-left: 87px" Text="View Profile" Width="88px" OnClick="Button1_Click" />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" style="margin-left: 121px" Text="Edit Profile" Width="111px" OnClick="Button2_Click1" />
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Font-Bold="True" style="margin-left: 103px" Text="Logout" Width="128px" OnClick="Button3_Click" />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            </table>
    </div>
    </form>
</body>
</html>
