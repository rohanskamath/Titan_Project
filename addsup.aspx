<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="addsup.aspx.cs" Inherits="addsup" Title="Supplier Registration Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table>
        <tr>
            <td colspan="4" style="height: 104px">
                <span style="font-size: 16pt; color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong><span
                        style="font-size: 24pt"><strong> </strong><span style="text-decoration: underline; font-family: Copperplate Gothic Bold;">
                        SUPPLIER REGISTRATION!!!!</span></span></span></td>
        </tr>
        <tr>
            <td style="width: 441px; height: 37px">
                <span style="color: #ffffff"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;&nbsp; SUPPLIER-ID :</strong></span></td>
            <td style="width: 278px; height: 37px">
                <asp:TextBox ID="txtsupid" runat="server" Width="180px" Enabled="False" Font-Bold="True"></asp:TextBox>&nbsp;
                <asp:Button ID="btnnew" runat="server" Font-Bold="True" Height="22px" OnClick="btnnew_Click"
                    Text="NEW" Width="53px" Font-Names="Times New Roman" ToolTip="Click Here For Supplier-Id!!!" /></td>
            <td style="width: 127px; height: 37px">
                <strong><span style="color: #ffffff">ADDRESS :</span></strong></td>
            <td style="width: 196px; height: 37px">
                <asp:TextBox ID="txtadrs" runat="server" Width="180px" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 441px; height: 39px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;&nbsp; SUPPLIER NAME :</span></strong></td>
            <td style="width: 278px; height: 39px">
                <asp:TextBox ID="txtname" runat="server" Width="180px" OnTextChanged="txtname_TextChanged"></asp:TextBox></td>
            <td style="width: 127px; height: 39px">
                <strong><span style="color: #ffffff">CITY :</span></strong></td>
            <td style="width: 196px; height: 39px">
                <asp:TextBox ID="txtcity" runat="server" Width="180px" OnTextChanged="txtcity_TextChanged"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 441px; height: 39px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    &nbsp; &nbsp;&nbsp;
                    EMAIL-ID :<asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                        runat="server" ControlToValidate="txtmail" ErrorMessage="*" ForeColor="Yellow"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></span></strong></td>
            <td style="width: 278px; height: 39px">
                <asp:TextBox ID="txtmail" runat="server" Width="180px"></asp:TextBox></td>
            <td style="width: 127px; height: 39px">
                <strong><span style="color: #ffffff">PINCODE:</span></strong></td>
            <td style="width: 196px; height: 39px">
                <asp:TextBox ID="txtpin" runat="server" Width="180px" OnTextChanged="txtpin_TextChanged" MaxLength="6"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 441px; height: 44px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;PHONE NUMBER :</span></strong></td>
            <td style="width: 278px; height: 44px">
                <asp:TextBox ID="TextBox4" runat="server" Enabled="False" Width="22px">+91</asp:TextBox>
                <asp:TextBox ID="txtphone" runat="server" Width="149px" MaxLength="10" OnTextChanged="txtphone_TextChanged"></asp:TextBox></td>
            <td style="width: 127px; height: 44px">
                <span style="color: #ffffff"><strong>STATE :</strong></span></td>
            <td style="width: 196px; height: 44px">
                <asp:TextBox ID="txtstate" runat="server" Width="180px" OnTextChanged="txtstate_TextChanged"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 78px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" OnClick="Button1_Click" Text="REGISTER" Width="124px" CssClass ="btn btn2 btn3" ToolTip="Click Here To Register Supplier!!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button
                    ID="btnback" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"
                    Height="40px" Text="BACK" Width="124px" OnClick="btnback_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Go Home!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button ID="btncancel" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" Text="CANCEL" Width="124px" OnClick="btncancel_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Clear!!!" /></td>
        </tr>
    </table>
    <br />
    <hr />
    <br />
</asp:Content>

