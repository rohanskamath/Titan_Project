<%@ Page Language="C#" MasterPageFile="~/homepage2.master" AutoEventWireup="true" CodeFile="updatecust2.aspx.cs" Inherits="updatecust2" Title="Updating Customer Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table>
        <tr>
            <td colspan="4" style="height: 82px">
                <strong><span style="font-size: 16pt; color: #ffff99">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span
                        style="font-size: 24pt; font-family: Copperplate Gothic Bold; text-decoration: underline">UPDATION
                        OF CUSTOMER INFORMATION!!</span></span></strong></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 81px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                &nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="txtsearch" runat="server" Height="17px" Width="180px" ToolTip="Enter Cust-Id First!!!" OnTextChanged="txtsearch_TextChanged"></asp:TextBox>&nbsp;<asp:Button
                    ID="btnsearch" runat="server" CssClass="btn btn2 btn3" Font-Bold="True" Height="22px"
                    OnClick="btnsearch_Click" Text="SEARCH" Width="111px" ToolTip="Click Here To Search!!!" /></td>
        </tr>
        <tr>
            <td style="width: 398px; height: 46px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CUSTOMER-ID
                    :</span></strong></td>
            <td style="width: 208px; height: 46px">
                <asp:TextBox ID="txtcid" runat="server" Enabled="False" Width="180px" Font-Bold="True"></asp:TextBox></td>
            <td style="width: 161px; height: 46px">
                <span><span style="color: #ffffff"><strong>PHONE NUMBER :<asp:RegularExpressionValidator
                    ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphone"
                    ErrorMessage="*" ForeColor="Yellow" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator></strong></span></span></td>
            <td style="width: 100px; height: 46px">
                <asp:TextBox ID="TextBox5" runat="server" Enabled="False" Width="27px">+91</asp:TextBox>
                <asp:TextBox ID="txtphone" runat="server" Width="141px" MaxLength="10" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 398px; height: 51px">
                <strong><span style="color: #000000">&nbsp;<span style="color: #ffffff"> &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; CUSTOMER NAME :</span></span></strong></td>
            <td style="width: 208px; color: #000000; height: 51px">
                <asp:TextBox ID="txtcame" runat="server" Width="180px"></asp:TextBox></td>
            <td style="width: 161px; color: #000000; height: 51px">
                <span style="color: #ffffff"><strong>ADDRESS :</strong></span></td>
            <td style="width: 100px; height: 51px">
                <asp:TextBox ID="txtadrs" runat="server" TextMode="MultiLine" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 398px; height: 49px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; GENDER
                    :</span></strong></td>
            <td style="width: 208px; height: 49px">
                <asp:RadioButton ID="RadioButton1" runat="server" Enabled="False" ForeColor="White"
                    Text="Male" /><span style="color: #ffffff"><strong> &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</strong></span><asp:RadioButton
                        ID="RadioButton2" runat="server" Enabled="False" ForeColor="White" Text="Female" /></td>
            <td style="font-weight: bold; width: 161px; height: 49px">
                <span style="color: #ffffff">CITY :</span></td>
            <td style="font-weight: bold; width: 100px; color: #000000; height: 49px">
                <asp:TextBox ID="txtcity" runat="server" Width="180px"></asp:TextBox></td>
        </tr>
        <tr style="font-weight: bold; color: #000000">
            <td style="width: 398px; height: 48px">
                <span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="color: #ffffff">DOB:</span></span></td>
            <td style="width: 208px; height: 48px">
                <asp:TextBox ID="txtdob" runat="server" Enabled="False" Width="180px"></asp:TextBox></td>
            <td style="width: 161px; height: 48px">
                <span style="color: #ffffff">PINCODE :<asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                    runat="server" ControlToValidate="txtpin" ErrorMessage="*" ForeColor="Yellow"
                    ValidationExpression="^([1-5]{1})([0-9]{5})$"></asp:RegularExpressionValidator></span></td>
            <td style="width: 100px; height: 48px">
                <asp:TextBox ID="txtpin" runat="server" Width="180px" MaxLength="6"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 398px; height: 35px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; EMAIL-ID
                    :</span></strong></td>
            <td style="width: 208px; height: 35px">
                <asp:TextBox ID="txtmail" runat="server" Enabled="False" Width="180px"></asp:TextBox></td>
            <td style="width: 161px; height: 35px">
                <strong><span style="color: #ffffff">STATE :</span></strong></td>
            <td style="width: 100px; height: 35px">
                <asp:TextBox ID="txtstate" runat="server" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 121px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="btnupdate" runat="server" CssClass="btn btn2 btn3"
                    Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Height="43px"
                    OnClick="btnupdate_Click" Text="UPDATE" Width="124px" ToolTip="Click Here To Update!!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                <asp:Button ID="btnback" runat="server" CssClass="btn btn2 btn3" Font-Bold="True"
                    Font-Names="Times New Roman" Font-Size="Medium" Height="47px" OnClick="btnback_Click"
                    Text="BACK" Width="124px" ToolTip="Click Here To Go Back!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>

