<%@ Page Language="C#" AutoEventWireup="true" CodeFile="enroll.aspx.cs" Inherits="Default2" %>

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
				<h1><span>WELCOME!!!</span></h1>
     </header>  
    <div  class="form">
    <form id="contactform" runat="server">
        <table class="center" style="text-align:left;">
            <tr>
                <td class="auto-style2">Enrollment Number:</td>
                <td class="auto-style5">
               
                     <asp:TextBox ID="enroll" runat="server" placeholder="Enrollment Number"  Width="239px" class="input"></asp:TextBox>
                
                    </td>
                <td>&nbsp;</td>

                <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="enroll" ErrorMessage="Enter valid enroll no.!!!" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
                 <td>&nbsp;</td>
            </tr>

            <tr>

                <td class="auto-style2">Date-Of-Birth:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="dob" runat="server" type="password" placeholder="Date of Birth"  Width="239px" class="input"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                </tr>
            <tr>
                <td>

                   
                    <td>&nbsp;</td>
                    </td>
                </tr>
                <tr>
                <td>
                
               </td>
           </tr>
  </table>
         <center><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Proceed" class="buttom" /></center>
        <center> <a href="adminlogin.aspx">Click here to register or login</a></center>
        
    </form>
        </div>
    
    
</body>
</html>
