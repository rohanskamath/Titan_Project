<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="purchasereturn.aspx.cs" Inherits="purchasereturn" Title="Purchase Return Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="4" style="height: 66px">
                <span style="font-size: 16pt; color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong><span style="font-family: Copperplate Gothic Bold">
                        <span style="text-decoration: underline; font-size: 24pt;">
                        PURCHASE&nbsp; RETURN!!</span></span></span></td>
        </tr>
        <tr>
            <td style="width: 400px; height: 53px">
                <span style="color: #ffffff"><span style="color: #000000">&nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</span><span style="color: #ffffff"></span><strong>INVOICE NO : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></span></td>
            <td style="width: 303px; height: 53px">
                <asp:TextBox ID="txtbillno" runat="server" Width="180px" ToolTip="Enter Bill Number!!!" OnTextChanged="txtbillno_TextChanged"></asp:TextBox>&nbsp;<asp:Button ID="btncheck"
                    runat="server" Text="CHECK" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Small" OnClick="btncheck_Click" ToolTip="Click Here To Check Bill Number!!" Visible="False" /></td>
            <td style="width: 218px; height: 53px">
                <strong><span style="color: #ffffff">RETURN&nbsp; ID :</span></strong></td>
            <td style="width: 425px; height: 53px">
                <asp:TextBox ID="txtreturnid" runat="server" Width="180px" Enabled="False" Font-Bold="True"></asp:TextBox>&nbsp;<asp:Button ID="Button2"
                    runat="server" Text="NEW" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Small" OnClick="Button2_Click" ToolTip="Click Here for Return-Id!!" /></td>
        </tr>
        <tr>
            <td style="width: 400px; height: 44px">
                <span style="color: #ffffff"><span style="color: #000000">&nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong><span style="color: #ffffff">&nbsp;INVOICE
                        DATE :</span></strong></span></span></td>
            <td style="width: 303px; height: 44px">
                <asp:TextBox ID="txtbdate" runat="server" Width="180px"></asp:TextBox></td>
            <td style="width: 218px; height: 44px">
                <strong><span style="color: #ffffff">RETURN DATE :</span></strong></td>
            <td style="width: 425px; height: 44px">
                <asp:TextBox ID="txtrdate" runat="server" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 400px; height: 47px">
                <span style="color: #ffffff"><span style="color: #000000">&nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style="color: #ffffff"></span><strong>
                        &nbsp;<span style="color: #ffffff">SUPPLIER ID :</span></strong></span></td>
            <td style="width: 303px; height: 47px">
                <asp:TextBox ID="txtsupid" runat="server" Enabled="False" Width="180px"></asp:TextBox></td>
            <td style="width: 218px; height: 47px">
                <strong><span style="color: #ffffff">PRODUCT ID :</span></strong></td>
            <td style="width: 425px; height: 47px">
                <asp:DropDownList ID="ddlist1" runat="server" Width="184px" AutoPostBack="True" OnSelectedIndexChanged="ddlist1_SelectedIndexChanged" AppendDataBoundItems="True" ToolTip="Select Product-id!!" >
                    <asp:ListItem>-----Select----</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 400px; height: 53px">
                <span style="color: #ffffff"><span style="color: #000000">&nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong><span style="color: #ffffff">SUPPLIER NAME
                        :</span><span style="color: #ffffff"></span></strong></span></span></td>
            <td style="width: 303px; height: 53px">
                <asp:TextBox ID="txtsupname" runat="server" Enabled="False" Width="180px"></asp:TextBox></td>
            <td style="width: 218px; height: 53px">
                <strong><span style="color: #ffffff">PRODUCT TYPE :</span></strong></td>
            <td style="width: 425px; height: 53px">
                <asp:TextBox ID="txttype" runat="server" Width="180px" AutoPostBack="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 400px; height: 55px;">
                <span style="color: #ffffff"><span style="color: #000000">&nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong><span style="color: #ffffff">ADDRESS :</span><span style="color: #ffffff"></span></strong></span></span></td>
            <td style="width: 303px; height: 55px;">
                <asp:TextBox ID="txtadrs" runat="server" TextMode="MultiLine" Enabled="False" Width="179px"></asp:TextBox></td>
            <td style="width: 218px; height: 55px;">
                <strong><span style="color: #ffffff">BRAND NAME :</span></strong></td>
            <td style="width: 425px; height: 55px;">
                <asp:TextBox ID="txtbrand" runat="server" Width="180px" AutoPostBack="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 400px; height: 58px"><span style="color: #ffffff"><span style="color: #000000">&nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="color: #ffffff"><strong>CITY :</strong></span></span><span style="color: #ffffff"></span></span></td>
            <td style="width: 303px; height: 58px">
                <asp:TextBox ID="txtcity" runat="server" Enabled="False" Width="180px"></asp:TextBox></td>
            <td style="width: 218px; height: 58px">
                <strong><span style="color: #ffffff">MODEL NUMBER :</span></strong></td>
            <td style="width: 425px; height: 58px">
                <asp:TextBox ID="txtmodel" runat="server" Width="180px" AutoPostBack="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 400px; height: 58px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong><span style="color: #ffffff">STATE :</span></strong></td>
            <td style="width: 303px; height: 58px">
                <asp:TextBox ID="txtstate" runat="server" Enabled="False" Width="180px"></asp:TextBox></td>
            <td style="width: 218px; height: 58px">
                <strong><span style="color: #ffffff">QUANTITY :</span></strong></td>
            <td style="width: 425px; height: 58px">
                <asp:TextBox ID="txtqty" runat="server" Width="180px" AutoPostBack="True" OnTextChanged="txtqty_TextChanged" ToolTip="Enter How Many Produtcs To Return!!!"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 85px">
                <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button
                    ID="btnsave" runat="server" Text="RETURN PRODUCT" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Height="40px" OnClick="btnsave_Click" Width="204px" CssClass ="btn btn2 btn3" ToolTip="Click Here To Return Product!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="btnreset"
                    runat="server" Text="RESET" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Height="40px"  Width="124px" OnClick="btnreset_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Clear!!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; 
                <asp:Button ID="btndisp" runat="server" Text="VIEW" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Height="40px" OnClick="btndisp_Click" Width="124px" CssClass ="btn btn2 btn3" ToolTip="Click Here To View!!!" /><br />
            </td>
        </tr>
    </table>
    &nbsp;
    <hr />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999"
        BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black"
        Width="160px" GridLines="Vertical" Height="142px">
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
</asp:Content>

