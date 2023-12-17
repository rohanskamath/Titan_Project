<%@ Page Language="C#" MasterPageFile="~/homepage2.master" AutoEventWireup="true" CodeFile="addstock2.aspx.cs" Inherits="addstock2" Title="Product Master Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table>
        <tr>
            <td colspan="4" style="height: 95px">
                <span style="font-size: 16pt; color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp; </strong><span style="font-size: 24pt; font-family: Copperplate Gothic Bold;
                        text-decoration: underline"> PRODUCT INFORMATION!!!</span></span></td>
        </tr>
        <tr>
            <td style="width: 479px; height: 45px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;PRODUCT-ID
                    :</span></strong></td>
            <td style="width: 253px; height: 45px">
                <asp:TextBox ID="txtpid" runat="server" Enabled="False" Width="180px" Font-Bold="True"></asp:TextBox>&nbsp;
                <asp:Button ID="btnnew" runat="server" Font-Bold="True" OnClick="btnnew_Click" Text="NEW" Font-Names="Times New Roman" ToolTip="Click Here For New Product-Id!!!" /></td>
            <td style="width: 175px; height: 45px">
                <strong><span style="color: #ffffff">MODEL NUMBER:</span></strong></td>
            <td style="width: 205px; height: 45px">
                <asp:TextBox ID="txtmodel" runat="server" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 479px; height: 42px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PRODUCT-TYPE:</span></strong></td>
            <td style="width: 253px; height: 42px">
                <asp:DropDownList ID="ddlistp" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlistp_SelectedIndexChanged"
                    Width="187px" ToolTip="Select Product-Type!!!">
                    <asp:ListItem Value="0">-----Select-----</asp:ListItem>
                    <asp:ListItem Value="12">Watches</asp:ListItem>
                    <asp:ListItem Value="4">Goggles</asp:ListItem>
                    <asp:ListItem Value="5">Belts</asp:ListItem>
                    <asp:ListItem Value="6">Wallets</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 175px; height: 42px">
                <strong><span style="color: #ffffff">QUANTITY :</span></strong></td>
            <td style="width: 205px; height: 42px">
                <asp:TextBox ID="txtqty" runat="server" OnTextChanged="txtqty_TextChanged" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 479px; height: 42px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;CATEGORY
                    :</span></strong></td>
            <td style="width: 253px; height: 42px">
                <asp:DropDownList ID="ddlistc" runat="server" Width="187px" ToolTip="Select Product Category!!!">
                    <asp:ListItem>-----Select-----</asp:ListItem>
                    <asp:ListItem>Men</asp:ListItem>
                    <asp:ListItem>Women</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 175px; height: 42px">
                <strong><span style="color: #ffffff">WARRENTY <span style="font-size: 8pt">(MONTHS)</span>
                    :</span></strong></td>
            <td style="width: 205px; height: 42px">
                <asp:TextBox ID="txtwarrenty" runat="server" AutoPostBack="True" Enabled="False"
                    Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 479px; height: 42px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; BRAND NAME
                    :</span></strong></td>
            <td style="width: 253px; height: 42px">
                <asp:DropDownList ID="ddlistb" runat="server" Width="187px" ToolTip="Select Brand Name!!!!">
                    <asp:ListItem>-----Select-----</asp:ListItem>
                    <asp:ListItem>Titan</asp:ListItem>
                    <asp:ListItem>Sonata</asp:ListItem>
                    <asp:ListItem>Fastrack</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 175px; height: 42px">
                <strong><span style="color: #ffffff">PRICE :</span></strong></td>
            <td style="width: 205px; height: 42px">
                <asp:TextBox ID="txtprice" runat="server" OnTextChanged="txtprice_TextChanged" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 73px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Button ID="btnadd" runat="server"
                    CssClass="btn btn2 btn3" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"
                    Height="40px" OnClick="btnadd_Click" Text="Add to Inventory" Width="167px" ToolTip="Click Here To Add products To Inventory!!!" />
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" CssClass="btn btn2 btn3" Font-Bold="True"
                    Font-Names="Times New Roman" Font-Size="Medium" Height="40px" OnClick="btncancel_Click"
                    Text="CANCEL" Width="124px" ToolTip="Click Here To Clear!!!" />
                &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="btnback" runat="server" CssClass="btn btn2 btn3" Font-Bold="True"
                    Font-Names="Times New Roman" Font-Size="Medium" Height="40px" OnClick="btnback_Click"
                    Text="BACK" Width="124px" ToolTip="Click Here To Go Home!!!" /></td>
        </tr>
    </table>
</asp:Content>

