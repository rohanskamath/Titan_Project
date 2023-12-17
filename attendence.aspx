<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="attendence.aspx.cs" Inherits="attendence" Title="Employee Attendance Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table>
        <tr>
            <td colspan="4" style="height: 121px">
                <span style="color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong><span
                        style="font-size: 24pt; text-decoration: underline; font-family: Copperplate Gothic Bold;">EMPLOYEE ATTENDANCE INFORMATION!!</span></span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td colspan="4" style="height: 68px">
                <span style="color: #ffff99;"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style="font-size: 14pt">
                        <span style="text-decoration: underline">EMPLOYEE DETAILS</span></span></strong></span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 585px; height: 52px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp; &nbsp;EMPLOYEE-ID :</span></strong></td>
            <td style="width: 326px; height: 52px">
                <asp:TextBox ID="txtempid" runat="server" ToolTip="Enter Employee-Id!!!" Font-Bold="True" OnTextChanged="txtempid_TextChanged"></asp:TextBox>
                &nbsp; 
                <asp:Button ID="btnok" runat="server" Text="OK" Font-Bold="True" Font-Names="Times New Roman" OnClick="btnok_Click" Width="79px" CssClass ="btn btn2 btn3" Height="23px" ToolTip="Click Here  To Register Attendance!!!"  /></td>
            <td colspan="2" rowspan="2">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 585px; height: 38px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; DESIGNATION :</span></strong></td>
            <td style="width: 326px; height: 38px">
                <asp:TextBox ID="txtdesig" runat="server" Enabled="False" Font-Bold="True"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 585px">
            </td>
            <td style="width: 326px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 96px">
            </td>
        </tr>
    </table>
    <hr />
    <asp:Panel ID="Panel1" runat="server" Height="97px" Visible="False" Width="1154px">
        <table>
            <tr>
                <td colspan="4" style="height: 63px">
                    <strong><span style="font-size: 16pt; color: #ffff99">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="text-decoration: underline">ATTENDANCE
                            INFORMATION!!</span></span></strong></td>
            </tr>
            <tr>
                <td style="width: 493px; height: 51px">
                    <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;DATE :</span></strong></td>
                <td style="width: 174px; height: 51px">
                <asp:TextBox ID="txtdate" runat="server" ReadOnly="True"></asp:TextBox></td>
                <td style="width: 199px; height: 51px">
                    <strong><span style="color: #ffffff">LEAVE GIVEN :</span></strong></td>
                <td style="width: 247px; height: 51px">
                <asp:TextBox ID="txtlgiven" runat="server" Enabled="False"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 493px; height: 56px">
                    <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;MONTH :</span></strong></td>
                <td style="width: 174px; height: 56px">
                <asp:TextBox ID="txtmonth" runat="server" ReadOnly="True"></asp:TextBox></td>
                <td style="width: 199px; height: 56px">
                    <strong><span style="color: #ffffff">LEAVE TAKEN :</span></strong></td>
                <td style="width: 247px; height: 56px">
                <asp:TextBox ID="txtltaken" runat="server" ToolTip="Enter Leave Taken By Employee!!!"></asp:TextBox>&nbsp;
                <asp:Button ID="btncal" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="X-Small" OnClick="btncal_Click" Text="CALCULATE" Visible="False" Width="84px" /></td>
            </tr>
            <tr>
                <td style="width: 493px; height: 46px">
                    <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;YEAR :</span></strong></td>
                <td style="width: 174px; height: 46px">
                <asp:TextBox ID="txtyear" runat="server" ReadOnly="True"></asp:TextBox></td>
                <td style="width: 199px; height: 46px">
                    <strong><span style="color: #ffffff">EXTRA LEAVE :</span></strong></td>
                <td style="width: 247px; height: 46px">
                <asp:TextBox ID="txtxtra" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 493px; height: 53px">
                    <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    TOTAL&nbsp; DAYS :</span></strong></td>
                <td style="width: 174px; height: 53px">
                <asp:TextBox ID="txttotdays" runat="server" ReadOnly="True"></asp:TextBox></td>
                <td style="width: 199px; height: 53px">
                    <strong><span style="color: #ffffff">No. OF&nbsp; DAYS WORKED :</span></strong></td>
                <td style="width: 247px; height: 53px">
                <asp:TextBox ID="txtwdays" runat="server" Enabled="False"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="4" style="height: 95px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="btnsave" runat="server"
                    Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Height="40px"
                    OnClick="btnsave_Click" Text="REGISTER" Width="124px" CssClass ="btn btn2 btn3" ToolTip="Click Here To Register Attendance!!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    &nbsp; &nbsp;&nbsp;
                    <asp:Button
                    ID="btncancel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"
                    Height="40px" OnClick="btncancel_Click" Text="CANCEL" Width="124px" CssClass="btn btn2 btn3" ToolTip="Click Here To Clear!!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button ID="btnback" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" OnClick="btnback_Click" Text="BACK" Width="124px" CssClass ="btn btn2 btn3" ToolTip="Click Here To Go Home!!!" /></td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <br />
    &nbsp;<br />
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
</asp:Content>

