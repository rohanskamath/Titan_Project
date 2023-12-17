<%@ Page Language="C#" MasterPageFile="~/homepage2.master" AutoEventWireup="true" CodeFile="updatestock2.aspx.cs" Inherits="updatestock2" Title="Stock Updation Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table>
        <tr>
            <td colspan="4" style="height: 92px">
                <span style="font-size: 16pt; color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; </strong>
                    <span style="font-size: 24pt; font-family: Copperplate Gothic Bold; text-decoration: underline">
                        STOCK UPDATION!!</span></span></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 49px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:TextBox
                    ID="txtsearch" runat="server" Width="181px" ToolTip="Enter Product-id!!"></asp:TextBox>&nbsp;<asp:Button ID="btnsearch"
                        runat="server" CssClass="btn btn2 btn3" Font-Bold="True" Height="24px" OnClick="btnsearch_Click"
                        Text="SEARCH" ToolTip="Click Here To Search!!!" /></td>
        </tr>
        <tr>
            <td style="width: 434px; height: 39px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PRODUCT -ID :</span></strong></td>
            <td style="width: 201px; height: 39px">
                <asp:TextBox ID="txtpid" runat="server" Enabled="False" Width="180px"></asp:TextBox></td>
            <td style="width: 125px; height: 39px">
                <span style="color: #ffffff"><strong>MODEL NAME :</strong></span></td>
            <td style="width: 195px; height: 39px">
                <asp:TextBox ID="txtmodel" runat="server" Enabled="False" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 434px; height: 41px">
                <span style="color: #ffffff"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PRODUCT TYPE :</strong></span></td>
            <td style="width: 201px; height: 41px">
                <asp:TextBox ID="txttype" runat="server" Enabled="False" Width="180px"></asp:TextBox></td>
            <td style="width: 125px; height: 41px">
                <span style="color: #ffffff"><strong>QUANTITY :<asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                    runat="server" ControlToValidate="txtqty" ErrorMessage="*" ForeColor="Yellow"
                    ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator></strong></span></td>
            <td style="width: 195px; color: #000000; height: 41px">
                <asp:TextBox ID="txtqty" runat="server" Width="180px"></asp:TextBox></td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 434px; height: 49px">
                <span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style="color: #ffffff"><strong>CATEGORY
                        :</strong></span></td>
            <td style="width: 201px; height: 49px">
                <asp:TextBox ID="txtcat" runat="server" Enabled="False" Width="180px"></asp:TextBox></td>
            <td style="width: 125px; height: 49px">
                <strong><span style="color: #ffffff">WARRENTY :</span></strong></td>
            <td style="width: 195px; height: 49px">
                <asp:TextBox ID="txtwrrenty" runat="server" Enabled="False" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 434px; height: 49px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; BRAND NAME :</span></strong></td>
            <td style="width: 201px; height: 49px">
                <asp:TextBox ID="txtbname" runat="server" Enabled="False" Width="180px"></asp:TextBox></td>
            <td style="width: 125px; height: 49px">
                <span style="color: #ffffff"><strong>PRICE :<asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                    runat="server" ControlToValidate="txtprice" ErrorMessage="*" ForeColor="Yellow"
                    ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator></strong></span></td>
            <td style="width: 195px; color: #000000; height: 49px">
                <asp:TextBox ID="txtprice" runat="server" Width="180px"></asp:TextBox></td>
        </tr>
        <tr style="color: #000000">
            <td colspan="4" rowspan="2" style="height: 104px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                &nbsp; &nbsp;
                <asp:Button ID="btnupdate" runat="server" CssClass="btn btn2 btn3" Font-Bold="True"
                    Font-Names="Times New Roman" Font-Size="Medium" Height="30px" OnClick="btnupdate_Click"
                    Text="UPDATE" Width="124px" ToolTip="Click Here To Update!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="btnback" runat="server"
                    CssClass="btn btn2 btn3" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"
                    Height="30px" OnClick="btnback_Click" Text="BACK" Width="124px" ToolTip="Click here To Go Home!!" />
            </td>
        </tr>
        <tr>
        </tr>
    </table>
</asp:Content>

