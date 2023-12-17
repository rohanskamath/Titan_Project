<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="searchcust.aspx.cs" Inherits="searchcust" Title="Search Customer Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table>
        <tr>
            <td colspan="2" style="height: 64px">
                <span style="font-size: 16pt; color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong><span
                        style="text-decoration: underline; font-size: 24pt; font-family: Copperplate Gothic Bold;">SEARCH CUSTOMERS INFORMATION!!</span></span></td>
        </tr>
        <tr>
            <td style="width: 606px; height: 34px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp;<span style="color: #ffffff"><strong>ENTER CUSTOMER NAME :</strong></span></td>
            <td style="width: 435px; height: 34px">
                <asp:TextBox ID="txtsearch" runat="server" Width="180px" ToolTip="Enter Customer Name!!!" OnTextChanged="txtsearch_TextChanged"></asp:TextBox>&nbsp;
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Small" OnClick="Button1_Click" Text="SEARCH" Width="106px" CssClass ="btn btn2 btn3" Height="23px" ToolTip="Click Here To Search!!!" />
                <asp:Button
                    ID="btnclear" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Small"
                    Text="CANCEL" Width="104px" CssClass ="btn btn2 btn3" Height="23px" OnClick="btnclear_Click" /></td>
        </tr>
        <tr>
            <td style="width: 606px; height: 34px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <strong><span style="color: #ffffff">ENTER MOBILE NUMBER :</span></strong></td>
            <td style="width: 435px; height: 34px">
                <asp:TextBox ID="txtphone" runat="server" Width="180px" ToolTip="Enter Contact Number!!!" MaxLength="10"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphone"
                    ErrorMessage="*Please Enter Valid Contack Number*" Font-Size="10pt" ForeColor="Yellow"
                    ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator></td>
        </tr>
    </table>
    <hr />
    <asp:Panel ID="Panel1" runat="server" Visible="False" Width="993px">
    <table>
        <tr>
            <td style="width: 558000px; height: 41px">
            </td>
            <td style="width: 747px; height: 41px">
                <span style="color: #ffff99"><span style="font-size: 16pt; font-family: Copperplate Gothic Bold;">
                    <strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; </strong><span style="text-decoration: underline">VIEW SEARCHED CUSTOMER!!!</span></span></span></td>
            <td style="width: 775px; height: 41px">
            </td>
            <td style="width: 775px; height: 41px">
            </td>
        </tr>
        <tr>
            <td style="width: 558000px">
            </td>
            <td style="width: 747px">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999"
                    BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black"
                    Width="184px" GridLines="Vertical" Height="108px" HorizontalAlign="Right">
                    <FooterStyle BackColor="#CCCCCC" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                </asp:GridView>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</td>
            <td style="width: 775px">
            </td>
            <td style="width: 775px">
            </td>
        </tr>
    </table>
    </asp:Panel>
    <br />
    <br />
</asp:Content>

