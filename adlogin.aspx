<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adlogin.aspx.cs" Inherits="adlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>AdminLogin Page</title>
    <link rel="stylesheet" type="text/css" href="Stylesheet/login.css" />
</head>
<body style="background-image: url(images/adback.jpg); font-size: 12pt;">
    <form id="form1" runat="server">
    <div class="login">
    <img src="images/adlogo.jpg" class ="logo" style="left: 108px; top: -6%" />
        <h1>
            &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-size: 16pt; color: #ffff66; font-family :Copperplate Gothic Bold;">LOGIN HERE</span></h1>
        <form >
            <p>USERNAME:</p>
            <asp:TextBox ID="txtuser" runat="server" Enabled="False" Font-Bold="True">Admin</asp:TextBox>
            <p>PASSWORD:</p>
            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" ToolTip="Enter Password to Login..!!!!"></asp:TextBox>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp;
            <input id="Checkpass" type="checkbox" onchange ="document.getElementById('txtpass').type = this.checked ? 'text' : 'password'" style="width: 9%"/>Show password<br />
            <asp:Button ID="btnlogin" runat="server" Text="SIGN IN" CssClass ="btn btn2 btn3" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" OnClick="btnlogin_Click" />
            <asp:Button ID="btnhome" runat="server" Text="HOME" CssClass ="btn btn2 btn3" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" OnClick="btnhome_Click" />
        </form>
    </div>
    </form>
</body>
</html>
