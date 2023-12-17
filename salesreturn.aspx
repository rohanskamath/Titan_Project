<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="salesreturn.aspx.cs" Inherits="salesreturn" Title="Sales Return Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <table>
        <tr>
            <td colspan="4" style="height: 80px">
                <span style="font-size: 24pt; color: #ffff99"><span style="font-family: Copperplate Gothic Bold">
                    <strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; </strong><span style="text-decoration: underline">PRODUCT EXCHANGE!!!!</span></span></span></td>
        </tr>
        <tr>
            <td style="width: 388px; height: 51px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;RETURN-NO
                    :</span></strong></td>
            <td style="width: 241px; height: 51px">
                <asp:TextBox ID="txtrno" runat="server" Enabled="False" Font-Bold="True"></asp:TextBox>&nbsp;
                <asp:Button ID="btnnew" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Text="NEW" OnClick="btnnew_Click" ToolTip="Click Here For Return-Id!!!" /></td>
            <td style="width: 151px; height: 51px">
                <strong><span style="color: #ffffff">RETURN DATE :</span></strong></td>
            <td style="width: 251px; height: 51px">
                <asp:TextBox ID="txtrdate" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 388px; height: 44px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; BILL-NO
                    :</span></strong></td>
            <td style="width: 241px; height: 44px">
                <asp:TextBox ID="txtbno" runat="server" ToolTip="Enter Bill No!!!" OnTextChanged="txtbno_TextChanged"></asp:TextBox>&nbsp;
                <asp:Button ID="btncheck" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Small" OnClick="btncheck_Click" Text="CHECK" ToolTip="Click Here To Check Bill No!!!!" Visible="False" /></td>
            <td style="width: 151px; height: 44px">
                <strong><span style="color: #ffffff">BILL DATE :</span></strong></td>
            <td style="width: 251px; height: 44px">
                <asp:TextBox ID="txtbdate" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 388px; height: 45px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PRODUCT-ID
                    :</span></strong></td>
            <td style="width: 241px; height: 45px">
                <asp:DropDownList ID="ddlistp" runat="server" AutoPostBack="True" AppendDataBoundItems="True" Width="154px" OnSelectedIndexChanged="ddlistp_SelectedIndexChanged" ToolTip="Select Product-id!!!">
                    <asp:ListItem>-----Select-----</asp:ListItem>
                </asp:DropDownList>&nbsp;
            </td>
            <td style="width: 151px; height: 45px">
                <strong><span style="color: #ffffff">CATEGORY :</span></strong></td>
            <td style="width: 251px; height: 45px">
                <asp:TextBox ID="txtcat" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 388px; height: 46px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PRODUCT-TYPE
                    :</span></strong></td>
            <td style="width: 241px; height: 46px">
                <asp:TextBox ID="txttype" runat="server" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 151px; height: 46px">
                <strong><span style="color: #ffffff">BRAND NAME :</span></strong></td>
            <td style="width: 251px; height: 46px">
                <asp:TextBox ID="txtbrand" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 388px; height: 49px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; MODEL
                    NO :</span></strong></td>
            <td style="width: 241px; height: 49px">
                <asp:TextBox ID="txtmodel" runat="server" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 151px; height: 49px">
                <span style="color: #ffffff"><strong>WARRENTY :</strong></span></td>
            <td style="width: 251px; height: 49px">
                <asp:TextBox ID="txtwarrenty" runat="server" ReadOnly="True"></asp:TextBox>&nbsp;
                </td>
        </tr>
        <tr>
            <td style="height: 53px" colspan="4">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; QUANTITY&nbsp; ORDERED :&nbsp; </span></strong>
                <asp:TextBox ID="txtqtyo" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server" Height="99px" Width="1152px">
        <table>
            <tr>
                <td colspan="2" style="width: 1145px; height: 70px">
                    <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;QUANTITY
                    RETURNED :
                <asp:TextBox ID="txtqtyr" runat="server" ToolTip="Enter Qty Returned!!!"></asp:TextBox>&nbsp;
                <asp:LinkButton ID="lcheck" runat="server" Font-Bold="True" ForeColor="Yellow" OnClick="lcheck_Click" Font-Underline="False" ToolTip="Click To Verify  Whether It Matches!!!" Visible="False">Verify</asp:LinkButton></span></strong></td>
            </tr>
            <tr>
                <td colspan="2" style="width: 1145px; height: 66px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                <asp:Button ID="btnsave" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" Text="RETURN" Width="124px" OnClick="btnsave_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Return!!!"  />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                &nbsp;
                    &nbsp; &nbsp;<asp:Button ID="btnnext" runat="server" Font-Bold="True"
                    Font-Names="Times New Roman" Font-Size="Medium" Height="40px" Text="New Product"
                    Width="124px" OnClick="btnnext_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Purchase New Product!!!" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" Text="VIEW" Width="124px" OnClick="btncancel_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To View!!!" /></td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp;<strong><span style="color: #ffffff"></span></strong>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
    <br />
    <hr />
    &nbsp;<br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999"
        BorderStyle="Solid" BorderWidth="1px" CellPadding="3" Font-Bold="False" ForeColor="Black"
        GridLines="Vertical">
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
</asp:Content>

