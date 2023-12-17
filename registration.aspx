<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>New User Registration Page</title>
    <link href="Stylesheet/register.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-image: url(images/reg.jpg)">
    <form id="form1" runat="server">
    <div class="login">
    <img src="images/register.jpg" class ="logo" style="left: 173px; width: 146px; top: -2%; height: 123px"/>
    <form>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
         
         <p>
             <strong>USERNAME :</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
             &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtuser" runat="server" Width="205px" Enabled="False" Font-Bold="True"></asp:TextBox></p>
        <p>
            <strong>PASSWORD :</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtpass" runat="server" Width="205px" TextMode="Password" AutoPostBack="True" ToolTip="Enter Password!!!"></asp:TextBox></p>
        <p>
            <strong>CONFIRM PASSWORD :</strong>&nbsp; &nbsp;
            <asp:TextBox ID="txtcp" runat="server" Width="205px" TextMode="Password" AutoPostBack="True"></asp:TextBox>
            &nbsp;</p>
        <p>
            <strong>SECURITY QUESTION :</strong>&nbsp; &nbsp;&nbsp;<asp:DropDownList ID="ddlist" runat="server" Width="212px" ToolTip="Select Security Question!!!">
                <asp:ListItem>-----Select-----</asp:ListItem>
                <asp:ListItem>What is your fathers name?</asp:ListItem>
                <asp:ListItem>Which school did you Study in?</asp:ListItem>
                <asp:ListItem>Which is your favourite game?</asp:ListItem>
                <asp:ListItem>Which is your favourite color?</asp:ListItem>
                <asp:ListItem>Where do you live?</asp:ListItem>
            </asp:DropDownList>
            &nbsp;</p>
        <p>
            <strong>SECURITY ANSWER:</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:TextBox ID="txtans" runat="server" Width="205px" ToolTip="Answer The Question!!!" OnTextChanged="txtans_TextChanged"></asp:TextBox>
            &nbsp;</p>
        <p>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:CheckBox ID="checkpass" runat="server" AutoPostBack="True" Font-Bold="True"
                OnCheckedChanged="checkpass_CheckedChanged" Text="Show password" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:Button ID="btnregister" runat="server" Text="REGISTER" CssClass ="btn btn2 btn3" Width="415px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" OnClick="btnregister_Click" ToolTip="Click Here To Register!!!!" />
        <br />
            <asp:Button ID="btnreset" runat="server" Text="RESET" CssClass="btn btn2 btn3" Width="415px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" OnClick="btnreset_Click" ToolTip="Click Here To Reset!!!" />
            <asp:Button ID="btnback" runat="server" Text="HOME" CssClass ="btn btn2 btn3" Width="415px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" OnClick="btnback_Click" ToolTip="Click Here To Go To Login Page!!!" />
    </form>
    </div>
        
    </form>
</body>
</html>
