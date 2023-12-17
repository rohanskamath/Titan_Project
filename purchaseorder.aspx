<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="purchaseorder.aspx.cs" Inherits="purchaseorder" Title="Purchase Order Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table>
        <tr>
            <td colspan="4" style="height: 81px">
                <span style="font-size: 16pt; color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong><span style="text-decoration: underline; font-size: 24pt; font-family: Copperplate Gothic Bold;">PURCHASE ORDER DEATILS!!!</span></span></td>
        </tr>
        <tr>
            <td style="width: 457px; height: 38px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ORDER-NO:</span></strong></td>
            <td style="width: 237px; height: 38px">
                <asp:TextBox ID="txtorderno" runat="server" Enabled="False" Font-Bold="True"></asp:TextBox>&nbsp;<asp:Button ID="btnnew"
                    runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Small"
                    Text="NEW" Width="49px" OnClick="btnnew_Click" ToolTip="Click Here For Order Number!!!" /></td>
            <td style="width: 168px; height: 38px">
                <strong><span style="color: #ffffff">SUPPLIER-ID :</span></strong></td>
            <td style="width: 97px; height: 38px">
                <asp:TextBox ID="txtsupid" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 457px; height: 36px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ORDER-DATE :</span></strong></td>
            <td style="width: 237px; height: 36px">
                <asp:TextBox ID="txtodate" runat="server"></asp:TextBox></td>
            <td style="width: 168px; height: 36px">
                <strong><span style="color: #ffffff">SUPPLIER-NAME :</span></strong></td>
            <td style="width: 97px; height: 36px">
                <asp:TextBox ID="txtsupname" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    <br />
    <hr />
    <br />
    <table>
        <tr>
            <td colspan="4" style="height: 71px">
                <span style="font-size: 16pt; color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong><span style="text-decoration: underline; font-family: Copperplate Gothic Bold;">
                        PURCHASE ORDER!!!</span></span></td>
        </tr>
        <tr>
            <td style="width: 537px; height: 50px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PRODUCT-ID :</span></strong></td>
            <td style="width: 213px; height: 50px">
                <asp:DropDownList ID="ddlist1" runat="server" AutoPostBack="True" Width="177px" OnSelectedIndexChanged="ddlist1_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="product_id" DataValueField="product_id" AppendDataBoundItems="True" ToolTip="Select Product-Id To Purchase!!!!" >
                    <asp:ListItem>----Select----</asp:ListItem>
                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup8ConnectionString2 %>"
                    SelectCommand="SELECT [product_id] FROM [stock]"></asp:SqlDataSource>
            </td>
            <td style="width: 172px; height: 50px">
                <strong><span style="color: #ffffff">BRAND NAME :</span></strong></td>
            <td style="width: 277px; height: 50px">
                <asp:TextBox ID="txtbrand" runat="server" Width="174px" AutoPostBack="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 537px; height: 51px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PRODUCT-TYPE:</span></strong></td>
            <td style="width: 213px; height: 51px">
                <asp:TextBox ID="txttype" runat="server" Width="174px" AutoPostBack="True"></asp:TextBox></td>
            <td style="width: 172px; height: 51px">
                <span style="color: #ffffff"><strong>MODEL NUMBER :</strong></span></td>
            <td style="width: 277px; height: 51px">
                <asp:TextBox ID="txtmodel" runat="server" Width="174px" AutoPostBack="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 537px; height: 53px">
                <span style="color: #ffffff"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CATEGORY :</strong></span></td>
            <td style="width: 213px; height: 53px">
                <asp:TextBox ID="txtcat" runat="server" Width="174px" AutoPostBack="True"></asp:TextBox></td>
            <td style="width: 172px; height: 53px">
                <strong><span style="color: #ffffff">QUANTITY :</span></strong></td>
            <td style="width: 277px; height: 53px">
                <asp:TextBox ID="txtqty" runat="server" Width="174px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 54px">
                <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="btnadd" runat="server" Font-Bold="True"
                    Font-Names="Times New Roman" Font-Size="Medium" Height="40px" Text="Add to List"
                    Width="124px" OnClick="btnadd_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Add To The List!!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp;<asp:Button ID="btnreset" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Height="40px" Text="CANCEL" Width="124px" OnClick="btnreset_Click" CssClass ="btn btn2 btn3" Font-Size="Medium" ToolTip="Click Here To Clear!!!" /><br />
                &nbsp;&nbsp; &nbsp;</td>
        </tr>
    </table>
    <hr />
    <br />
    <asp:Panel ID="Panel1" runat="server" Height="125px" Visible="False" Width="1010px">
    <table>
        <tr>
            <td colspan="2" style="height: 55px; width: 1084px;">
                <span style="font-size: 16pt; color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999"
                    BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black"
                    Width="556px" GridLines="Vertical" Height="151px" Font-Bold="False" Font-Size="14pt" HorizontalAlign="Center">
                    <FooterStyle BackColor="#CCCCCC" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                </asp:GridView>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>
                <span
                        style="font-family: Copperplate Gothic Bold"> &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <span style="text-decoration: underline;">
                        </span></span></span></td>
        </tr>
        <tr style="font-family: Times New Roman">
            <td colspan="2" style="width: 1084px; height: 123px;">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button ID="btnsave" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" Text="PLACE ORDER" Width="168px" OnClick="btnsave_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Place Your Order!!!" /> &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;
            </td>
        </tr>
    </table>
    </asp:Panel>
    <br />
</asp:Content>

