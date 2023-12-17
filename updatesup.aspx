<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="updatesup.aspx.cs" Inherits="updatesup" Title="Updating Supplier Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table>
        <tr>
            <td colspan="4" style="height: 47px">
                <span style="font-size: 16pt; color: #ffff99"> <span style="font-size: 24pt;"><strong>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; </strong><span style="text-decoration: underline; font-family: Copperplate Gothic Bold;">
                        UPDATION OF SUPPLIER INFORMATION!!!</span></span></span></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 69px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:TextBox
                    ID="txtsearch" runat="server" Width="167px" ToolTip="Enter Supplier-id!!!"></asp:TextBox>&nbsp;<asp:Button ID="btnsearch"
                        runat="server" Font-Bold="True" Font-Names="Times New Roman" Height="21px" OnClick="btnsearch_Click"
                        Text="SEARCH" CssClass ="btn btn2 btn3" ToolTip="Click Here To Search!!" /></td>
        </tr>
        <tr>
            <td style="width: 464px; height: 45px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp;&nbsp; SUPPLIER-ID :</span></strong></td>
            <td style="width: 202px; height: 45px">
                <asp:TextBox ID="txtsupid" runat="server" Enabled="False" Width="180px"></asp:TextBox></td>
            <td style="width: 100px; height: 45px">
                <strong><span style="color: #ffffff">ADDRESS :</span></strong></td>
            <td style="width: 190px; height: 45px">
                <asp:TextBox ID="txtadrs" runat="server" Width="180px" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 464px; height: 38px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;SUPPLIER NAME :</span></strong></td>
            <td style="width: 202px; height: 38px">
                <asp:TextBox ID="txtname" runat="server" Width="180px" Enabled="False"></asp:TextBox></td>
            <td style="width: 100px; height: 38px">
                <span style="color: #ffffff"><strong>CITY :</strong></span></td>
            <td style="width: 190px; height: 38px">
                <asp:TextBox ID="txtcity" runat="server" OnTextChanged="txtcity_TextChanged" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 464px; height: 37px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp;&nbsp; EMAIL-ID :</span></strong></td>
            <td style="width: 202px; height: 37px">
                <asp:TextBox ID="txtmail" runat="server" Width="180px" Enabled="False"></asp:TextBox></td>
            <td style="width: 100px; height: 37px">
                <strong><span style="color: #ffffff">PINCODE :<asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                    runat="server" ControlToValidate="txtpin" ErrorMessage="*" ForeColor="Yellow"
                    ValidationExpression="^([1-5]{1})([0-9]{5})$"></asp:RegularExpressionValidator></span></strong></td>
            <td style="width: 190px; height: 37px">
                <asp:TextBox ID="txtpin" runat="server" Width="180px" MaxLength="6"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 464px; height: 39px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;PHONE NUMBER :<asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                        runat="server" ControlToValidate="txtphone" ErrorMessage="*" ForeColor="Yellow"
                        ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator></span></strong></td>
            <td style="width: 202px; height: 39px">
                <asp:TextBox ID="txtphone" runat="server" MaxLength="10" 
                    Width="180px"></asp:TextBox></td>
            <td style="width: 100px; height: 39px">
                <span style="color: #ffffff"><strong>STATE :</strong></span></td>
            <td style="width: 190px; height: 39px">
                <asp:TextBox ID="txtstate" runat="server" OnTextChanged="txtstate_TextChanged" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="4">
                <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp;<asp:Button ID="btnupdate" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" OnClick="btnupdate_Click" Text="UPDATE" Width="124px" CssClass ="btn btn2 btn3" ToolTip="Click Here To Update!!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Button ID="btnback" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" Text="BACK" Width="124px" CssClass ="btn btn2 btn3" OnClick="btnback_Click" ToolTip="Click Here To Go Home!!!" /><br />
            </td>
        </tr>
    </table>
</asp:Content>

