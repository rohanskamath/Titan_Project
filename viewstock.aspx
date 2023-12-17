<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="viewstock.aspx.cs" Inherits="viewstock" Title="View Stock Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table>
        <tr>
            <td style="width: 981px; height: 91px">
                <span style="font-size: 16pt; color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="font-size: 24pt; text-decoration: underline">INVENTORY</span></strong><span style="text-decoration: underline; font-size: 24pt; font-family: Copperplate Gothic Bold;">
                        DETAILS!!!!</span></span></td>
        </tr>
        <tr>
            <td style="width: 981px; height: 63px;">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 
                <asp:DropDownList ID="ddlist1" runat="server" Width="173px" ToolTip="Select Product To View!!!">
                    <asp:ListItem>-----Select-----</asp:ListItem>
                    <asp:ListItem>WATCHES</asp:ListItem>
                    <asp:ListItem>GOGGLES</asp:ListItem>
                    <asp:ListItem>WALLETS</asp:ListItem>
                    <asp:ListItem>BELTS</asp:ListItem>
                </asp:DropDownList>&nbsp;
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Text="VIEW PRODUCTS" CssClass ="btn btn2 btn3 " Height="26px" OnClick="Button1_Click" Width="132px" ToolTip="Click Here To View Products!!!" /></td>
        </tr>
        <tr>
            <td style="width: 981px">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999"
                    BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"
                    HorizontalAlign="Center" Width="716px">
                    <FooterStyle BackColor="#CCCCCC" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

