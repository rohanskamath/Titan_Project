<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="payslip.aspx.cs" Inherits="payslip" Title="PaySlip Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <table>
        <tr>
            <td colspan="4" style="width: 984px">
                <strong><span><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-size: 24pt">*****</span></span><span
                        style="font-size: 24pt"><span style="color: #ffff99">WORLD OF TITAN</span><span style="color: #ffffff">*****<br />
                        </span></span></span><br />
                </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span
                    style="font-size: 16pt; color: #ffffff; font-family: Copperplate Gothic Bold; text-decoration: underline;">PAYSLIP</span></td>
        </tr>
    </table>
    <br />
    <hr />
    <br />
    <table>
        <tr style="font-size: 12pt">
            <td colspan="4" style="height: 78px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="font-size: 16pt; color: #ffffff"><strong>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    PAYSLIP-ID :</strong></span>
                <asp:TextBox ID="txtsearch" runat="server" Width="180px" Enabled="False" Font-Bold="True"></asp:TextBox>&nbsp;
                <asp:Button ID="btnnew" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Text="NEW" OnClick="btnnew_Click" ToolTip="Click On New Button For PaySlip-Id!!" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 382px; height: 30px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;EMPLOYEE-ID :</span></strong></td>
            <td style="width: 275px; height: 30px">
                <asp:TextBox ID="txtempid" runat="server" Width="180px" ToolTip="Enter Employee-Id!!!" OnTextChanged="txtempid_TextChanged"></asp:TextBox>&nbsp;<asp:Button
                    ID="btngive" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Get Info"
                    Width="68px" OnClick="btngive_Click" ToolTip="Click Here To Get Information!!!" Visible="False" /></td>
            <td style="width: 187px; height: 30px">
                <strong><span style="color: #ffffff">TOTAL DAYS :</span></strong></td>
            <td style="width: 97px; height: 30px">
                <asp:TextBox ID="txttdays" runat="server" Width="180px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 382px; height: 30px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;FIRST NAME :</span></strong></td>
            <td style="width: 275px; height: 30px">
                <asp:TextBox ID="txtfname" runat="server" Width="180px" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 187px; height: 30px">
                <strong><span style="color: #ffffff"> LEAVE TAKEN :</span></strong></td>
            <td style="width: 97px; height: 30px">
                <asp:TextBox ID="txtltaken" runat="server" Width="180px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 382px; height: 31px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;LAST NAME :</span></strong></td>
            <td style="width: 275px; height: 31px">
                <asp:TextBox ID="txtlname" runat="server" Width="180px" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 187px; height: 31px">
                <strong><span style="color: #ffffff">EXTRA LEAVE :</span></strong></td>
            <td style="width: 97px; height: 31px">
                <asp:TextBox ID="txtextra" runat="server" Width="180px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 382px; height: 30px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;DESIGNATION :</span></strong></td>
            <td style="width: 275px; height: 30px">
                <asp:TextBox ID="txtdesig" runat="server" Width="180px" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 187px; height: 30px">
                <strong><span style="color: #ffffff">DAYS WORKED :</span></strong></td>
            <td style="width: 97px; height: 30px">
                <asp:TextBox ID="txtworked" runat="server" Width="180px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 382px; height: 31px">
                <span style="color: #ffffff"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PHONE NUMBER :</strong></span></td>
            <td style="width: 275px; height: 31px">
                <asp:TextBox ID="TextBox6" runat="server" Enabled="False" Width="25px">+91</asp:TextBox>
                <asp:TextBox ID="txtphone" runat="server" Width="145px" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 187px; height: 31px">
                <strong><span style="color: #ffffff">SALARY :</span></strong></td>
            <td style="width: 97px; height: 31px">
                <asp:TextBox ID="txtsal" runat="server" Width="180px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 382px; height: 34px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;ADDRESS :</span></strong></td>
            <td style="width: 275px; height: 34px">
                <asp:TextBox ID="txtadrs" runat="server" TextMode="MultiLine" Width="180px" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 187px; height: 34px">
                <strong><span style="color: #ffffff">DA :</span></strong></td>
            <td style="width: 97px; height: 34px; color: #000000;">
                <asp:TextBox ID="txtda" runat="server" Width="180px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt; color: #000000">
            <td style="width: 382px; height: 33px">
                <span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<strong>YEAR :</strong></span></td>
            <td style="width: 275px; height: 33px">
                <asp:TextBox ID="txtyear" runat="server" Width="180px" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 187px; height: 33px">
                <strong><span style="color: #ffffff">HRA :</span></strong></td>
            <td style="width: 97px; height: 33px">
                <asp:TextBox ID="txthra" runat="server" Width="180px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 382px; height: 33px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; MONTH :</span></strong></td>
            <td style="width: 275px; height: 33px">
                <asp:DropDownList ID="ddlistmonth" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlistmonth_SelectedIndexChanged"
                    ToolTip="Select Month For Attendance Details!!!!" Width="186px">
                    <asp:ListItem>-----Select-----</asp:ListItem>
                    <asp:ListItem>January</asp:ListItem>
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
            <td style="width: 187px; height: 33px">
                <strong><span style="color: #ffffff">PF :</span></strong></td>
            <td style="width: 97px; height: 33px">
                <asp:TextBox ID="txtpf" runat="server" Width="180px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 382px; height: 45px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; DATE</span></strong>
                <strong><span style="color: #ffffff"> :</span></strong></td>
            <td style="width: 275px; height: 45px">
                <asp:TextBox ID="txtdate" runat="server" Width="180px" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 187px; height: 45px">
                <strong><span style="color: #ffffff">SALARY DEDUCTION :</span></strong></td>
            <td style="width: 97px; height: 45px; color: #000000;">
                <asp:TextBox ID="txtsalde" runat="server" Width="180px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt; color: #000000">
            <td colspan="4" style="height: 104px">
                <span style="color: #ffffff"><span style="font-size: 16pt">&nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <strong>TOTAL SALARY
                        :</strong></span><strong> &nbsp; </strong>
                    <asp:TextBox ID="txttotsal" runat="server" Width="180px" Enabled="False" Font-Bold="True"></asp:TextBox></span></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 84px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; <asp:Button
                    ID="btngen" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"
                    Height="40px" Text="CALCULATE" Width="124px" OnClick="btngen_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here Show Bill!!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 
                <asp:Button ID="btnreset" runat="server"
                    Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Text="PRINT BILL" CssClass ="btn btn2 btn3" Height="40px" OnClick="btnreset_Click" Width="124px" ToolTip="Click Here To Print PaySlip!!!" Enabled="False" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                &nbsp;
                <asp:Button ID="btnback"
                    runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"
                    Height="40px" Text="BACK" Width="124px" OnClick="btnback_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Go Home!!!" />
                &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
    </table>
    <hr style="height: 1px; background-color: #000000" />
</asp:Content>

