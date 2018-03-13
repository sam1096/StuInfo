<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fetchDetails.aspx.cs" Inherits="fetchDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo.css" media="all" />
    <style type="text/css">
        .auto-style4 {
            width: 167px;
        }
        .auto-style5 {
            width: 167px;
            height: 23px;
        }
        .auto-style9 {
            width: 192px;
            height: 23px;
        }
        .auto-style10 {
            width: 192px;
        }
        .auto-style12 {
            width: 160px;
        }
        .auto-style14 {
            width: 140px;
            height: 23px;
        }
        .auto-style15 {
            width: 140px;
        }
        .auto-style1 {
            width: 317px;
        }
        .auto-style2 {
            width: 244px;
        }
        .auto-style3 {
            width: 213px;
        }
        </style>
</head>
<body class="container">
     <div class="clr"></div>
    <header>
				<h1><span>Student Info</span> Student detail</h1>
     </header>  
    <div  class="form">
    <form id="contactform" runat="server">
    <div>
    
    </div>
    <table class="center">
        <tr>
            <td class="auto-style4">Name : </td>
            <td class="auto-style10">
                <asp:Label ID="name" runat="server"></asp:Label>
            </td>
            <td class="auto-style15"></td>
            <td rowspan ="6" class="auto-style12">[PHOTO]</td>

        </tr>
        <tr>
            <td class="auto-style4">Roll Number : </td>
            <td class="auto-style10">
                <asp:Label ID="roll" runat="server"></asp:Label>
            </td>

        </tr>
        
        <tr>
            <td class="auto-style4">Enrollment Number : </td>
            <td class="auto-style10">
                <asp:Label ID="enrolln" runat="server"></asp:Label>
            </td>
            <td class="auto-style15"></td>
  
        </tr>
        <tr>
            <td class="auto-style5">Semester :</td>
            <td class="auto-style9">
                <asp:Label ID="sem" runat="server"></asp:Label>
            </td>
            <td class="auto-style14"></td>

        </tr>
                <tr>
            <td class="auto-style4">Gender :</td>
            <td class="auto-style10">
                <asp:Label ID="gender" runat="server"></asp:Label>
            </td>
            <td class="auto-style15">&nbsp;</td>

        </tr>
         <tr>
            <td class="auto-style4">DOB : </td>
            <td class="auto-style10">
                <asp:Label ID="dob" runat="server"></asp:Label>
            </td>
            <td class="auto-style15">&nbsp;</td>

        </tr>
        <tr>
            <td class="auto-style4">Father&#39;s Name : </td>
            <td class="auto-style10">
                <asp:Label ID="fname" runat="server"></asp:Label>
            </td>
            <td class="auto-style15">&nbsp;</td>

        </tr>
        <tr>
            <td class="auto-style4">Current Address :</td>
            <td class="auto-style10">
                <asp:Label ID="address" runat="server"></asp:Label>
            </td>
            <td class="auto-style15">Phone Number : </td>
            <td class="auto-style12">
                 <asp:Label ID="phone" runat="server"></asp:Label>
            </td>
        </tr>

        <tr>
            <td class="auto-style4">City :</td>
            <td class="auto-style10">
                <asp:Label ID="city" runat="server"></asp:Label>
            </td>
            <td class="auto-style15">Email Address</td>
            <td class="auto-style12">
                 <asp:Label ID="email" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">State :</td>
            <td class="auto-style10">
                <asp:Label ID="state" runat="server"></asp:Label>
            </td>
            <td class="auto-style15">Zip Code</td>
            <td class="auto-style12">
                 <asp:Label ID="zip" runat="server"></asp:Label>
            </td>
        </tr>

        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style10"></td>
            <td class="auto-style15"></td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style4">Previous Result (Sem :
                 <asp:Label ID="psem" runat="server"></asp:Label>
                )</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style12">
                 &nbsp;</td>
        </tr>

        <tr>
            <td class="auto-style4">Theory : </td>
            <td class="auto-style1">
                <asp:Label ID="theory" runat="server"></asp:Label>
            </td>
            <td class="auto-style2">Sessional :</td>
            <td class="auto-style3">
                <asp:Label ID="sessional" runat="server"></asp:Label>
            </td>
        </tr>

        <tr>
            <td class="auto-style4"> Total : </td>
            <td class="auto-style1">
                <asp:Label ID="total" runat="server"></asp:Label>
            </td>
        </tr>

    </table>
    </form>
        </div>
    </body>
</html>
