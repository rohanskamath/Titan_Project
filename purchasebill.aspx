<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="purchasebill.aspx.cs" Inherits="purchasereturn" Title="Purchase Bill Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table>
        <tr>
            <td colspan="4" style="height: 90px">
                <span style="font-size: 16pt; color: #ffff99"><span style="font-size: 24pt"><strong>
                    <span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; **********</span><span>TITAN COMPANY LIMITED</span></strong></span><span style="color: #ffffff"><strong><span style="font-size: 24pt">**********<br />
                        </span><br />
                        </strong>
                            <span style="font-size: 12pt"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong><span
                                style="font-family: Copperplate Gothic Bold; text-decoration: underline">TAX&nbsp; 
                            </span></span>
                            <span style="font-size: 12pt"><span style="text-decoration: underline"><span style="font-family: Copperplate Gothic Bold">
                                INVOICE</span><br />
                            </span>
                                <hr style="font-weight: bold" />
                            </span></span></span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 825px; height: 44px">
                <span style="color: #ffffff"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; SUPLLIER-ID :</strong></span></td>
            <td style="width: 297px; height: 44px">
                <asp:TextBox ID="txtsupid" runat="server" Enabled="False" Width="180px" Font-Bold="True"></asp:TextBox></td>
            <td style="width: 406px; height: 44px">
                <strong><span style="color: #ffffff">INVOICE NO:</span></strong></td>
            <td style="width: 669px; height: 44px">
                <asp:TextBox ID="txtbillno" runat="server" Width="180px" Enabled="False" Font-Bold="True"></asp:TextBox>&nbsp;<asp:Button
                    ID="btnnew" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Small"
                    Text="NEW" OnClick="btnnew_Click" ToolTip="Click Here for Invoice Number!!!" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 825px; height: 46px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; SUPPLIER-NAME :</span></strong></td>
            <td style="width: 297px; height: 46px">
                <asp:TextBox ID="txtsupname" runat="server" Enabled="False" Width="180px" Font-Bold="False"></asp:TextBox></td>
            <td style="width: 406px; height: 46px">
                <strong><span style="color: #ffffff">INVOICE DATE :</span></strong></td>
            <td style="width: 669px; height: 46px">
                <asp:TextBox ID="txtbdate" runat="server" Width="180px"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 825px; height: 38px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;SUPPLIER ADDRESS :</span></strong></td>
            <td style="width: 297px; height: 38px">
                <asp:TextBox ID="txtadrs" runat="server" Enabled="False" TextMode="MultiLine" Width="182px" Font-Bold="False"></asp:TextBox></td>
            <td style="width: 406px; height: 38px">
                <strong><span style="color: #ffffff">PURCHASE ORDER NO:</span></strong></td>
            <td style="width: 669px; height: 38px">
                <asp:DropDownList ID="ddlist2" runat="server" Width="185px" AutoPostBack="True" OnSelectedIndexChanged="ddlist2_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="order_no" DataValueField="order_no" AppendDataBoundItems="true" ToolTip="Select The Order no For Billing!!!" >
                    <asp:ListItem>----Select----</asp:ListItem>
                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup8ConnectionString %>"
                    SelectCommand="SELECT [order_no] FROM [purchaseorder]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 825px; height: 52px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; STATE :</span></strong></td>
            <td style="width: 297px; height: 52px">
                <asp:TextBox ID="txtstate" runat="server" Enabled="False" Width="180px" Font-Bold="False"></asp:TextBox></td>
            <td style="width: 406px; height: 52px">
                <strong><span style="color: #ffffff">PURCHASE ORDER DATE :</span></strong></td>
            <td style="width: 669px; height: 52px">
                <asp:TextBox ID="txtpdate" runat="server" Width="180px" AutoPostBack="True"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 825px; height: 52px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; PRODUCT-ID :</span></strong></td>
            <td style="width: 297px; height: 52px">
                <asp:TextBox ID="txtpid" runat="server" Width="180px" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 406px; height: 52px">
                <span style="color: #ffffff"><strong>MODEL NAME :</strong></span></td>
            <td style="width: 669px; height: 52px">
                <asp:TextBox ID="txtmodel" runat="server" Width="180px" AutoPostBack="True" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 825px; height: 52px">
                <span style="color: #ffffff"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; PRODUCT-TYPE:</strong></span></td>
            <td style="width: 297px; height: 52px">
                <asp:TextBox ID="txttype" runat="server" Width="180px" AutoPostBack="True" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 406px; height: 52px">
                <strong><span style="color: #ffffff">QUANTITY :</span></strong></td>
            <td style="width: 669px; height: 52px">
                <asp:TextBox ID="txtqty" runat="server" Width="180px" AutoPostBack="True" OnTextChanged="txtqty_TextChanged" Enabled="False"></asp:TextBox>
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 825px; height: 52px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CATEGORY :</span></strong></td>
            <td style="width: 297px; height: 52px">
                <asp:TextBox ID="txtcat" runat="server" Width="180px" AutoPostBack="True" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 406px; height: 52px">
                <span style="color: #ffffff"><strong>PRICE :</strong></span></td>
            <td style="width: 669px; height: 52px">
                <asp:TextBox ID="txtprice" runat="server" Width="180px"></asp:TextBox>
                <asp:Button ID="btncal" runat="server" Font-Bold="True" Text="Calculate" OnClick="btncal_Click" ToolTip="Click Here To Get Total And GrandTotal!!!" Visible="False" /></td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 825px; height: 52px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; BRAND NAME :</span></strong></td>
            <td style="width: 297px; height: 52px">
                <asp:TextBox ID="txtbrand" runat="server" Width="180px" AutoPostBack="True" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 406px; height: 52px">
                <strong><span style="color: #ffffff">AMOUNT:</span></strong></td>
            <td style="width: 669px; height: 52px">
                <asp:TextBox ID="txttot" runat="server" Width="180px" Enabled="False"></asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td colspan="4" style="height: 76px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="color: #ffffff"><strong>GRAND
                    TOTAL&nbsp; :</strong></span>
                <asp:TextBox ID="txtgtot" runat="server" Width="180px" Enabled="False" Font-Bold="True">0</asp:TextBox></td>
        </tr>
        <tr style="font-size: 12pt">
            <td colspan="4" style="height: 52px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" Text="SAVE" Width="124px" OnClick="btnsave_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Submit Invoice!!!"/>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button ID="btndisp" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" Text="VIEW INVOICE" Width="148px" OnClick="btndisp_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To View Invoice!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button ID="btnreset" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" Text="CANCEL" Width="124px" OnClick="btnreset_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Clear!!!" /></td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999"
        BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black"
        Width="235px" GridLines="Vertical">
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
</asp:Content>

