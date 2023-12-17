<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userlogin.aspx.cs" Inherits="userlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>UserLogin Page</title>
    <link rel ="stylesheet" href="Stylesheet/userlogin.css" type="text/css" />
</head>
<body style="background-image: url(images/userback.jpg)">
    <form id="form1" runat="server">
    <div class ="login">
        <img src="images/ulogo.jpg" class ="logo" style="left: 149px; top: -4%" />
        <h1>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<span style="font-size: 16pt; color: #ffff66; font-family :Copperplate Gothic Bold;">LOGIN HERE</span></h1>
        <form>
            <p>USER-ID:</p>
            <asp:TextBox ID="txtemp" runat="server" ToolTip="Enter User-Id/Emp-Id..!!!" OnTextChanged="txtemp_TextChanged"></asp:TextBox>
            <p>PASSWORD:</p>
            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" ToolTip="Enter Password To Login..!!"></asp:TextBox>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <input id="Checkbox1" type="checkbox" onchange ="document.getElementById('txtpass').type = this.checked ? 'text' : 'password'" style="width: 7%" />Show password<br />
            <asp:Button ID="btnlogin" runat="server" Text="SIGN IN" CssClass ="btn btn2 btn3" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" OnClick="btnlogin_Click" />
            <asp:Button ID="btnhome" runat="server" Text="HOME" CssClass ="btn btn2 btn3" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" OnClick="btnhome_Click" /><br />
            <asp:LinkButton ID="linkforpas" runat="server" Font-Bold="True" ForeColor="Yellow" Cssclass="link" OnClick="linkforpas_Click" Font-Size="Medium" Width="196px">FORGOT PASSWORD?</asp:LinkButton>
        </form>
        
    </div>
    </form>
</body>
</html>
