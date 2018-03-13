<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addResultData.aspx.cs" Inherits="addResultData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo.css" media="all" />
    <style type="text/css">
        #Text1 {
            width: 143px;
        }
            table.center {
    margin-left:auto; 
    margin-right:auto;
    }
        .auto-style1 {
            height: 2px;
        }
    </style>
    
</head>
<body class="container">
    
     <div class="clr"></div>
    <header>
				<h1><span>ADD RESULT</span></h1>
     </header>  
    <div class="form">
    <form id="contactform" runat="server">

            <table class="center" style="text-align:left;">
            <tr>
                <td>Enrollment Number </td>
                <td>
                    <asp:TextBox ID="enrollNo" runat="server" Width="239px" class="input" placeholder="Enrollment Number"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>Roll Number </td>
                <td>
                    <asp:TextBox ID="rollNo" runat="server" Width="239px" class="input" placeholder="Roll Number"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Student Name</td>
                <td>
                    <asp:TextBox ID="studentName" runat="server" Width="239px" class="input" placeholder="Student Name"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>Branch </td>
                <td>
                    <asp:TextBox ID="branch" runat="server" Width="239px" class="input" placeholder="Branch" Text="IT">IT</asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Batch</td>
                <td>
                    <asp:TextBox ID="batch" runat="server" Width="239px" class="input" placeholder="Batch" Text="2014">2014</asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>Sem</td>
                <td>
                    <asp:TextBox ID="sem" runat="server" Width="239px" class="input" placeholder="Sem" Text="5">5</asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Theory</td>
                <td>
                    <asp:TextBox ID="theory" runat="server" Width="239px" class="input" placeholder="Theory" OnTextChanged="theory_TextChanged"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>Sessional</td>
                <td>
                    <asp:TextBox ID="sessional" runat="server" Width="239px" class="input" placeholder="Sessional" OnTextChanged="sessional_TextChanged"></asp:TextBox>
                </td>
            </tr>

             <tr>
                <td></td>
                <td></td>
                <td>Total :&nbsp; </td>
                <td>
                    <asp:Label ID="total" runat="server"></asp:Label>
                 </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
                
            </tr>
            
        </table>
            <p>
                <asp:Button ID="insert" runat="server" Text="Insert" style="margin-left:550px; margin-right:auto; float:left;" Width="96px" OnClick="insert_Click" class="buttom"/>
                 <input id="Reset1" type="reset" value="Reset"  style="margin-left:100px; margin-right:auto; width: 96px;" class="buttom"/>

            </p>
    </form>
        </div>
</body>
</html>
