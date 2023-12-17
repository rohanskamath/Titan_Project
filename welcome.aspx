<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="welcome.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Welcome Page</title>
    <link href="Stylesheet/welcome.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-image: url(images/Welcome.jpg)" onmouseover="black">
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color: #ffff66"><span><span
            style="font-size: 16pt"><strong><span style="font-size: 24px" id="text2">LOGIN AS</span><br />
                <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong><br />
        </span>
            </span></span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:ImageButton ID="admin" runat="server" Height="137px" ImageUrl="~/images/admin.jpg" OnClick="admin_Click" Width="161px" ToolTip="Click Here To Admin Login!!!!!!!" CssClass ="btn"/>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;&nbsp;
        <asp:ImageButton ID="user" runat="server" Height="137px" ImageUrl="~/images/user.jpg" OnClick="user_Click" Width="161px" ToolTip="Click Here To Go To Employee/New User Login!!!!!!" CssClass ="btn"/><br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; <span style="font-size: 14pt; color: #ffffff"><strong><span style="text-decoration: underline" id="text2">ADMINISTRATOR</span>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <span style="text-decoration: underline" id="text2">USER</span></strong></span><br />
        &nbsp;</div>
    </form>
</body>
</html>
