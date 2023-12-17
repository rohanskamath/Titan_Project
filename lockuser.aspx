<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="lockuser.aspx.cs" Inherits="deleteuser" Title="Lock User Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table style="width: 971px">
        <tr>
            <td colspan="2" style="height: 53px">
                <span style="font-size: 16pt; color: #ffffff"><span style="color: #ffff99"><span
                    style="color: #ffffff"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong></span><span style="text-decoration: underline"><span
                        style="font-size: 24pt"><span style="font-family: Copperplate Gothic Bold">LOCK<span> USER ACCOUNT!!!!</span></span></span></span></span></span></td>
        </tr>
        <tr>
            <td style="width: 328px; height: 56px">
                <strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <span style="color: #ffffff">
                    ENTER USER-ID TO LOCK :</span></strong></td>
            <td style="width: 100px; height: 56px">
                <asp:TextBox ID="txtuser" runat="server" Width="156px" ToolTip="Enter User-Id To Lock!!!" OnTextChanged="txtuser_TextChanged"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 26px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="btndel" runat="server" Font-Bold="True"
                    Font-Names="Times New Roman" Font-Size="Medium" Height="40px" OnClick="btndel_Click"
                    Text="LOCK USER" Width="132px" CssClass ="btn btn2 btn3" ToolTip="Click Here To Lock User!!!" />
                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                <asp:Button ID="btnback" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" OnClick="btnback_Click" Text="BACK" Width="106px" CssClass ="btn btn2 btn3" ToolTip="Click Here To Go Home!!!" /></td>
        </tr>
    </table>
</asp:Content>

