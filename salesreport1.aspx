<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="salesreport1.aspx.cs" Inherits="salesreport1" Title="Sales Report Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table>
        <tr>
            <td colspan="3" style="height: 81px">
                <span style="font-size: 24pt; color: #ffff99; font-family: Copperplate Gothic Bold">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <span style="text-decoration: underline">SALES<span> REPORT!!</span></span></span></td>
        </tr>
        <tr>
            <td style="width: 713px; height: 53px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;YEAR : &nbsp; </span>
                </strong>&nbsp;<asp:DropDownList ID="ddlisty" runat="server" AutoPostBack="True"
                    Width="166px" ToolTip="Select Year First!!!">
                    <asp:ListItem>-----Select-----</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem>2021</asp:ListItem>
                    <asp:ListItem>2022</asp:ListItem>
                    <asp:ListItem>2023</asp:ListItem>
                    <asp:ListItem>2024</asp:ListItem>
                    <asp:ListItem>2025</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 102px; height: 53px">
                <strong><span style="color: #ffffff">MONTH :&nbsp; </span></strong>
            </td>
            <td style="width: 401px; height: 53px">
                <asp:DropDownList ID="ddlistm" runat="server" AutoPostBack="True" Width="166px" ToolTip="Select Month!!!!">
                    <asp:ListItem>-----Select-----</asp:ListItem>
                    <asp:ListItem>Januvary</asp:ListItem>
                    <asp:ListItem>Febrauary</asp:ListItem>
                    <asp:ListItem>March</asp:ListItem>
                    <asp:ListItem>April</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>June</asp:ListItem>
                    <asp:ListItem>July</asp:ListItem>
                    <asp:ListItem>August</asp:ListItem>
                    <asp:ListItem>September</asp:ListItem>
                    <asp:ListItem>October</asp:ListItem>
                    <asp:ListItem>November</asp:ListItem>
                    <asp:ListItem>December</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 713px; height: 36px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="btnview" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" OnClick="btnview_Click" Text="View Saled Products" Width="193px" CssClass ="btn btn2 btn3" ToolTip="Click Here To View Saled Products!!!" /></td>
            <td style="width: 102px; height: 36px">
                <asp:Button ID="btnback" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" OnClick="btnback_Click" Text="BACK" Width="103px" CssClass ="btn btn2 btn3" ToolTip="Click Here To Go Home!!!" /></td>
            <td style="width: 401px; height: 36px">
            </td>
        </tr>
    </table>
</asp:Content>

