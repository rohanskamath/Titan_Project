<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="displayuser.aspx.cs" Inherits="displayuser" Title="View User Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table style="width: 906px">
        <tr>
            <td style="width: 98px; height: 90px;">
                <span style="color: #ffffff"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong><span style="font-size: 24pt; text-decoration: underline; color: #ffff99; font-family: Copperplate Gothic Bold;">DISPLAY USER!!!</span></span></td>
        </tr>
        <tr>
            <td style="width: 98px">
                <asp:GridView ID="GridView1" runat="server" Font-Bold="False" Width="674px" ForeColor="Black" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="1" GridLines="Vertical" Height="118px" HorizontalAlign="Center">
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

