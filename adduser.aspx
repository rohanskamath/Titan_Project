<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="adduser.aspx.cs" Inherits="adduser" Title="Add New User/Employee Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table>
        <tr>
            <td colspan="2" style="height: 80px; width: 949px;">
                <span style="font-size: 16pt; color: #ffff99"> <span style="font-size: 24pt;">
                    <span style="font-size: 16pt"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; </strong></span><span style="text-decoration: underline; font-family: Copperplate Gothic Bold;">
                            ADD USER ACCOUNT!!</span></span></span></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 34px; width: 949px;">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; USERNAME :</span></strong>
                &nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="txtuser" runat="server" Width="164px" Enabled="False" ToolTip="Click on New To Add User-id!!" Font-Bold="True"></asp:TextBox>
                <asp:LinkButton ID="linkreg" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Small" ForeColor="Yellow" Font-Underline="False" OnClick="linkreg_Click" ToolTip="Click To Add User-id!!!">NEW</asp:LinkButton></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 48px; width: 949px;">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PASSWORD :
                    &nbsp; &nbsp; &nbsp;<asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="164px" ToolTip="Enter Password!!!"></asp:TextBox></span></strong></td>
        </tr>
        <tr>
            <td colspan="2" style="width: 949px; height: 48px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;&nbsp;
                <asp:CheckBox ID="checkpass" runat="server" AutoPostBack="True" Font-Bold="True"
                    Font-Names="Times New Roman" ForeColor="White" OnCheckedChanged="checkpass_CheckedChanged"
                    Text="ShowPassword" /></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 43px; width: 949px;">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<asp:Button ID="btnreg" runat="server" Font-Bold="True"
                    Font-Names="Times New Roman" Font-Size="Medium" Height="40px" OnClick="btnreg_Click"
                    Text="REGISTER" Width="124px" CssClass ="btn btn2 btn3" ToolTip="Click Here To Register Employee!!!!" />
                &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button ID="btnback" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" OnClick="btnback_Click" Text="BACK" Width="124px" CssClass ="btn btn2 btn3" ToolTip="Click Here To Go Home!!!" /></td>
        </tr>
    </table>
</asp:Content>

