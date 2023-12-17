<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="inactivemp.aspx.cs" Inherits="inactivemp" Title="Inactivate Employee Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table style="width: 921px">
        <tr>
            <td colspan="2" style="height: 85px">
                <span style="font-size: 16pt; color: #ffff99"> <span style="font-size: 24pt;"><strong>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp;</strong><span style="text-decoration: underline; font-family: Copperplate Gothic Bold;">RESIGN EMPLOYEE!!!!</span></span></span></td>
        </tr>
        <tr>
            <td style="width: 470px; height: 13px;">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span
                    style="color: #ffffff"><strong>ENTER EMP-ID TO INACTIVATE:</strong></span></td>
            <td style="width: 100px; height: 13px;">
                <asp:TextBox ID="txtempid" runat="server" Width="180px" ToolTip="Enter Employee-Id!!!" OnTextChanged="txtempid_TextChanged"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;<br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Button ID="btnrem" runat="server" Text="RESIGN" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Height="40px" OnClick="btnrem_Click" Width="124px" CssClass ="btn btn2 btn3" ToolTip="Click Here To Resign Employee!!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Button ID="btnback" runat="server" Text="BACK" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Height="40px" Width="124px" CssClass ="btn btn2 btn3" OnClick="btnback_Click" ToolTip="Click here To Go Home!!!" /></td>
        </tr>
    </table>
</asp:Content>

