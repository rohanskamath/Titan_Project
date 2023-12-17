<%@ Page Language="C#" MasterPageFile="~/homepage2.master" AutoEventWireup="true" CodeFile="myaccount.aspx.cs" Inherits="myaccount" Title="My Account Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="4" style="height: 58px">
                <span style="font-size: 16pt; color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>
                    <span style="text-decoration: underline; font-size: 24pt; font-family: Copperplate Gothic Bold;">
                        MY ACCOUNT!!</span></span></td>
        </tr>
        <tr>
            <td style="width: 477px; height: 36px">
                <span style="color: #ffffff"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; EMPLOYEE-ID :</strong></span></td>
            <td style="width: 109px; height: 36px">
                <asp:Label ID="lblempid" runat="server" ForeColor="Yellow" Text="Label"></asp:Label></td>
            <td style="width: 148px; height: 36px">
                <span style="color: #ffffff"><strong>EMAIL-ID :</strong></span></td>
            <td style="width: 100px; height: 36px">
                <asp:Label ID="lblmail" runat="server" ForeColor="Yellow" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 477px; height: 37px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; FIRST NAME :</span></strong></td>
            <td style="width: 109px; height: 37px">
                <asp:Label ID="lblfname" runat="server" ForeColor="Yellow" Text="Label"></asp:Label></td>
            <td style="width: 148px; height: 37px">
                <strong><span style="color: #ffffff">DESIGNATION :</span></strong></td>
            <td style="width: 100px; height: 37px">
                <asp:Label ID="lbldesig" runat="server" ForeColor="Yellow" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 477px; height: 37px">
                <span style="color: #ffffff"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; LAST NAME :</strong></span></td>
            <td style="width: 109px; height: 37px">
                <asp:Label ID="lbllname" runat="server" ForeColor="Yellow" Text="Label"></asp:Label></td>
            <td style="width: 148px; height: 37px">
                <strong><span style="color: #ffffff">ADDRESS :</span></strong></td>
            <td style="width: 100px; height: 37px">
                <asp:Label ID="lbladrs" runat="server" ForeColor="Yellow" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 477px; height: 37px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; DOB :</span></strong></td>
            <td style="width: 109px; height: 37px">
                <asp:Label ID="lbldob" runat="server" ForeColor="Yellow" Text="Label"></asp:Label></td>
            <td style="width: 148px; height: 37px">
                <strong><span style="color: #ffffff">CITY :</span></strong></td>
            <td style="width: 100px; height: 37px">
                <asp:Label ID="lblcity" runat="server" ForeColor="Yellow" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 477px; height: 38px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GENDER :</span></strong></td>
            <td style="width: 109px; height: 38px">
                <asp:Label ID="lblsex" runat="server" ForeColor="Yellow" Text="Label"></asp:Label></td>
            <td style="width: 148px; height: 38px">
                <strong><span style="color: #ffffff">PINCODE :</span></strong></td>
            <td style="width: 100px; height: 38px">
                <asp:Label ID="lblpin" runat="server" ForeColor="Yellow" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 477px; height: 38px">
                <span style="color: #ffffff"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PHONE NUMBER :</strong></span></td>
            <td style="width: 109px; height: 38px">
                <asp:Label ID="lblph" runat="server" ForeColor="Yellow" Text="Label"></asp:Label></td>
            <td style="width: 148px; height: 38px">
                <strong><span style="color: #ffffff">STATE :</span></strong></td>
            <td style="width: 100px; height: 38px">
                <asp:Label ID="lblstate" runat="server" ForeColor="Yellow" Text="Label"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

