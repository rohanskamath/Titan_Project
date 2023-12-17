<%@ Page Language="C#" MasterPageFile="~/homepage2.master" AutoEventWireup="true" CodeFile="salesreturn2.aspx.cs" Inherits="salesreturn2" Title="Sales Return Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table>
        <tr>
            <td colspan="4" style="height: 80px">
                <span style="font-size: 24pt; color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong><span style="font-family: Copperplate Gothic Bold;
                        text-decoration: underline">PRODUCTS EXCHANGE!!!!</span></span></td>
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
                    OnClick="btnnew_Click" Text="NEW" ToolTip="Click Here For Return-Id!!!" /></td>
            <td style="width: 151px; height: 51px">
                <strong><span style="color: #ffffff">RETURN DATE :</span></strong></td>
            <td style="width: 251px; height: 51px">
                <asp:TextBox ID="txtrdate" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 388px; height: 44px">
                <span style="color: #ffffff"><span style="color: #000000">&nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; <strong><span style="color: #ffffff">BILL-NO</span></strong> </span>
                    <strong>:</strong></span></td>
            <td style="width: 241px; height: 44px">
                <asp:TextBox ID="txtbno" runat="server" ToolTip="Enter Bill Number!!!" OnTextChanged="txtbno_TextChanged"></asp:TextBox>&nbsp;
                <asp:Button ID="btncheck" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Small" OnClick="btncheck_Click" Text="CHECK" ToolTip="Click Here To Check Bill No!!!" Visible="False" /></td>
            <td style="width: 151px; height: 44px">
                <strong><span style="color: #ffffff">BILL DATE :</span></strong></td>
            <td style="width: 251px; height: 44px">
                <asp:TextBox ID="txtbdate" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 388px; height: 45px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PRODUCT-ID :</span></strong></td>
            <td style="width: 241px; height: 45px">
                <asp:DropDownList ID="ddlistp" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                    OnSelectedIndexChanged="ddlistp_SelectedIndexChanged" Width="154px" ToolTip="Select  Product-Id!!!">
                    <asp:ListItem>-----Select-----</asp:ListItem>
                </asp:DropDownList>&nbsp;
            </td>
            <td style="width: 151px; height: 45px">
                <strong><span style="color: #ffffff">CATEGORY :</span></strong></td>
            <td style="width: 251px; color: #000000; height: 45px">
                <asp:TextBox ID="txtcat" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr style="color: #000000">
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
            <td colspan="4" style="height: 53px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; QUANTITY&nbsp; ORDERED :&nbsp; </span></strong>
                <asp:TextBox ID="txtqtyo" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
    </table>
    <table>
        <tr>
            <td colspan="2" style="width: 1145px; height: 70px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;QUANTITY
                    RETURNED :
                    <asp:TextBox ID="txtqtyr" runat="server"></asp:TextBox>&nbsp;
                    <asp:LinkButton ID="lcheck" runat="server" Font-Bold="True" Font-Underline="False"
                        ForeColor="Yellow" OnClick="lcheck_Click" ToolTip="Click Here To Verify Qty Returned!!!" Visible="False">Verify</asp:LinkButton></span></strong></td>
        </tr>
        <tr>
            <td colspan="2" style="width: 1145px; height: 66px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button ID="btnsave" runat="server" CssClass="btn btn2 btn3" Font-Bold="True"
                    Font-Names="Times New Roman" Font-Size="Medium" Height="40px" OnClick="btnsave_Click"
                    Text="RETURN" Width="124px" ToolTip="Click Here To Return!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Button
                    ID="btnnext" runat="server" CssClass="btn btn2 btn3" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" OnClick="btnnext_Click" Text="New Product" Width="124px" ToolTip="Click Here To Purchase New Product!!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" CssClass="btn btn2 btn3" Font-Bold="True"
                    Font-Names="Times New Roman" Font-Size="Medium" Height="40px" OnClick="btncancel_Click"
                    Text="VIEW" Width="124px" ToolTip="Click Here To View!!!" /></td>
        </tr>
    </table>
    <br />
    <hr />
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999"
        BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
</asp:Content>

