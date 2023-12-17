<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="updatecust.aspx.cs" Inherits="updatecust" Title="Updating Customer Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table>
        <tr>
            <td colspan="4" style="height: 82px">
                <strong><span style="font-size: 16pt; color: #ffff99">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span
                        style="text-decoration: underline; font-size: 24pt; font-family: Copperplate Gothic Bold;">UPDATION OF CUSTOMER INFORMATION!!</span></span></strong></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 81px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                &nbsp;&nbsp; &nbsp; 
                <asp:TextBox
                    ID="txtsearch" runat="server" Width="180px" Height="17px" Font-Names="Times New Roman" ToolTip="Enter Cust-Id Here!!" OnTextChanged="txtsearch_TextChanged" ></asp:TextBox>&nbsp;<asp:Button ID="btnsearch"
                        runat="server" Font-Bold="True" Height="22px" Text="SEARCH"
                        Width="111px" OnClick="btnsearch_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Search!!"/></td>
        </tr>
        <tr>
            <td style="width: 398px; height: 46px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CUSTOMER-ID
                    :</span></strong></td>
            <td style="width: 208px; height: 46px">
                <asp:TextBox ID="txtcid" runat="server" Enabled="False" Width="180px" Font-Bold="True"></asp:TextBox></td>
            <td style="width: 157px; height: 46px">
                <strong><span style="color: #ffffff">PHONE NUMBER :<asp:RegularExpressionValidator
                    ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphone"
                    ErrorMessage="*" ForeColor="Yellow" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator></span></strong></td>
            <td style="width: 100px; height: 46px">
                <asp:TextBox ID="TextBox5" runat="server" Enabled="False" Width="27px">+91</asp:TextBox>
                <asp:TextBox ID="txtphone" runat="server" Width="141px" MaxLength="10" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 398px; height: 51px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CUSTOMER
                    NAME :</span></strong></td>
            <td style="width: 208px; height: 51px">
                <asp:TextBox ID="txtcame" runat="server" Width="180px" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 157px; height: 51px">
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
                    Text="Male" />
                &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:RadioButton ID="RadioButton2" runat="server"
                    Enabled="False" Text="Female" ForeColor="White" /></td>
            <td style="width: 157px; height: 49px">
                <strong><span style="color: #ffffff">CITY :</span></strong></td>
            <td style="width: 100px; height: 49px">
                <asp:TextBox ID="txtcity" runat="server" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 398px; height: 48px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; DOB:</span></strong></td>
            <td style="width: 208px; height: 48px">
                <asp:TextBox ID="txtdob" runat="server" Enabled="False" Width="180px"></asp:TextBox></td>
            <td style="width: 157px; height: 48px">
                <strong><span style="color: #ffffff">PINCODE :<asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                    runat="server" ControlToValidate="txtpin" ErrorMessage="*" ForeColor="Yellow"
                    ValidationExpression="^([1-5]{1})([0-9]{5})$"></asp:RegularExpressionValidator></span></strong></td>
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
            <td style="width: 157px; height: 35px">
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
                &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="btnupdate" runat="server" Font-Bold="True"
                    Font-Names="Times New Roman" Font-Size="Medium" Height="44px" OnClick="btnupdate_Click"
                    Text="UPDATE" Width="124px" CssClass ="btn btn2 btn3" ToolTip="Click Here To Update!!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                <asp:Button ID="btnback" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="43px" Text="BACK" Width="124px" OnClick="btnback_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Go To Home!!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>

