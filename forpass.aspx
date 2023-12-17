<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forpass.aspx.cs" Inherits="forpass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Forgot Password Page</title>
    <link href="Stylesheet/btn.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-position-x: center; background-image: url(images/forpass.jpg)">
    <form id="form1" runat="server">
    <div>
        <br />
        <span style="font-size: 24pt"><span style="color: #ffffff; font-family: Copperplate Gothic Bold">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; <span style="text-decoration: underline">
                FORGOT YOUR PASSWORD????</span></span><span style="color: #ffffff; font-family: Copperplate Gothic Bold">&nbsp;<br />
                            <br />
                </span></span>
                            <span style="font-size: 11pt">
                                <span style="color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(Enter the uername and answer the security question&nbsp;
                                for verification&nbsp; of user account .After account is verified change your&nbsp;
                                    password)</strong><br />
                                </span>
                            </span>
        <br />
        <br />
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <table>
                    <tr>
                        <td style="width: 879px; height: 37px">
                            <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; USER-ID :</span></strong></td>
                        <td style="width: 868px; height: 37px">
                    <asp:TextBox ID="txtuser" runat="server" Width="206px" OnTextChanged="txtuser_TextChanged" ToolTip="Enter User-id!!!!"></asp:TextBox>&nbsp;
                    <asp:LinkButton ID="linkquestion" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                        ForeColor="Yellow" OnClick="linkquestion_Click" Font-Size="11pt" ToolTip="Click Here to Check For User-id And Scurity Question!!!">CHECK</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td style="width: 879px; height: 37px">
                            <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; SECURITY QUESTION :</span></strong></td>
                        <td style="width: 868px; height: 37px">
                    <asp:TextBox ID="txtsec" runat="server" Width="206px" Enabled="False"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 879px; height: 35px">
                            <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; SECURITY ANSWER :</span></strong></td>
                        <td style="width: 868px; height: 35px">
                    <asp:TextBox ID="txtans" runat="server" Width="206px" ToolTip="Enter Your Answer!!!"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 73px">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp; <asp:Button ID="btnverify" runat="server" Height="45px" Text="VERIFY" Width="122px" CssClass ="btn btn2 btn3" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" OnClick="btnverify_Click" ToolTip="Click Here To Verify Security Question And Answer!!!" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            <asp:Button ID="btnback" runat="server" Height="45px" Text="BACK" Width="122px" CssClass="btn btn2 btn3" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" OnClick="btnback_Click" ToolTip="Click Here To Go Home!!!" />
                            &nbsp;&nbsp;
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;<strong><span style="font-size: 16pt; color: #66ffff; text-decoration: underline">CHANGE YOUR PASSWORD HERE!!!<br />
                    <br />
                </span></strong>
                        <table>
                            <tr>
                                <td style="width: 615px; height: 41px">
                                    <strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color: #ffffff"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="font-size: 12pt"> &nbsp;NEW PASSWORD :&nbsp;</span></span></strong></td>
                                <td style="width: 270px; height: 41px">
                                    <asp:TextBox ID="txtnp" runat="server" Width="184px" TextMode="Password" ToolTip="Enter New Password!!!"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 615px; height: 39px">
                                    <strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; <span style="color: #ffffff">&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-size: 12pt">CONFRIM PASSWORD :</span></span></strong></td>
                                <td style="width: 270px; height: 39px">
                                    <asp:TextBox ID="txtcp" runat="server" Width="184px" TextMode="Password"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 615px; height: 39px">
                                </td>
                                <td style="width: 270px; height: 39px">
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 64px">
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp;&nbsp;<br />
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<asp:Button ID="btnchange" runat="server" Text="CHANGE" CssClass="btn btn2 btn3" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Height="46px" OnClick="btnchange_Click" Width="122px" ToolTip="Click Here To Change Your Password!!!" />
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button
                                        ID="btnreset" runat="server" Text="BACK" CssClass="btn btn2 btn3" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Height="45px" OnClick="btnreset_Click" Width="122px" ToolTip="Click Here To Login!!!" /><br />
                                </td>
                            </tr>
                        </table>
                        <br />
            </asp:View>
        </asp:MultiView>&nbsp;</div>
    </form>
</body>
</html>
