<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="addstock.aspx.cs" Inherits="addstock" Title="Product Master Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table>
        <tr>
            <td colspan="4" style="height: 95px">
                <span style="font-size: 16pt; color: #ffff99"><span style="font-size: 24pt; font-family: Copperplate Gothic Bold;">
                    <strong><span style="font-size: 16pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></strong><span style="text-decoration: underline">
                            PRODUCT INFORMATION!!!</span></span></span></td>
        </tr>
        <tr>
            <td style="width: 479px; height: 45px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    &nbsp;PRODUCT-ID :</span></strong></td>
            <td style="width: 253px; height: 45px">
                <asp:TextBox ID="txtpid" runat="server" Width="180px" Enabled="False" Font-Bold="True"></asp:TextBox>&nbsp;
                <asp:Button ID="btnnew" runat="server" Text="NEW" Font-Bold="True" OnClick="btnnew_Click" Font-Names="Times New Roman" ToolTip="Click Here For New Product-Id!!!!" /></td>
            <td style="width: 175px; height: 45px">
                <strong><span style="color: #ffffff">MODEL NUMBER:</span></strong></td>
            <td style="width: 205px; height: 45px">
                <asp:TextBox ID="txtmodel" runat="server" Width="180px" MaxLength="6"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 479px; height: 42px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PRODUCT-TYPE:</span></strong></td>
            <td style="width: 253px; height: 42px">
                <asp:DropDownList ID="ddlistp" runat="server" 
                    Width="187px" OnSelectedIndexChanged="ddlistp_SelectedIndexChanged" AutoPostBack="True" ToolTip="Select Product-Type!!!">
                    <asp:ListItem Value="0">-----Select-----</asp:ListItem>
                    <asp:ListItem Value="6">Watches</asp:ListItem>
                    <asp:ListItem Value="2">Goggles</asp:ListItem>
                    <asp:ListItem Value="3">Belts</asp:ListItem>
                    <asp:ListItem Value="1">Wallets</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 175px; height: 42px">
                <strong><span style="color: #ffffff">QUANTITY :</span></strong></td>
            <td style="width: 205px; height: 42px">
                <asp:TextBox ID="txtqty" runat="server" Width="180px" OnTextChanged="txtqty_TextChanged"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 479px; height: 42px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;CATEGORY :</span></strong></td>
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
                <asp:TextBox ID="txtwarrenty" runat="server" AutoPostBack="True" Width="180px" Enabled="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 479px; height: 42px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; BRAND NAME :</span></strong></td>
            <td style="width: 253px; height: 42px">
                <asp:DropDownList ID="ddlistb" runat="server" Width="187px" Font-Bold="False" ToolTip="Select Brand Name!!!" >
                    <asp:ListItem>-----Select-----</asp:ListItem>
                    <asp:ListItem>Titan</asp:ListItem>
                    <asp:ListItem>Sonata</asp:ListItem>
                    <asp:ListItem>Fastrack</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 175px; height: 42px">
                <strong><span style="color: #ffffff">PRICE :</span></strong></td>
            <td style="width: 205px; height: 42px">
                <asp:TextBox ID="txtprice" runat="server" Width="180px" OnTextChanged="txtprice_TextChanged"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 73px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Button ID="btnadd" runat="server" Font-Bold="True"
                    Font-Names="Times New Roman" Font-Size="Large" Height="40px" OnClick="btnadd_Click"
                    Text="Add to Inventory" Width="167px" CssClass ="btn btn2 btn3" ToolTip="Click Here To Add Product To Inventory!!!" />
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" Text="CANCEL" Width="124px" CssClass="btn btn2 btn3" OnClick="btncancel_Click" ToolTip="Click Here To Clear!!!" />
                &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="btnback" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" Text="BACK" Width="124px" CssClass ="btn btn2 btn3" OnClick="btnback_Click" ToolTip="Click Here To Go Home!!!" /></td>
        </tr>
    </table>
    <br />
    <br />
    <hr />
</asp:Content>

