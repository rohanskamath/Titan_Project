<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="updateemp.aspx.cs" Inherits="updateemp" Title="Employee Updation Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table>
        <tr>
            <td colspan="4" style="height: 92px">
                <span style="font-size: 16pt; color: #ffff99"><span style="font-size: 24pt">
                    <span><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong><span style="text-decoration: underline; font-family: Copperplate Gothic Bold;">
                        UPDATION OF EMPLOYEE INFORMATION!!</span></span></span></span></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 69px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:TextBox ID="txtsearch" runat="server" Width="176px" Height="18px" ToolTip="Enter Customer-Id!!!"></asp:TextBox>&nbsp;
                <asp:Button ID="btnsearch" runat="server" Font-Bold="True" Height="22px" Text="SEARCH"
                    Width="83px" OnClick="btnsearch_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Search Id!!!" /></td>
        </tr>
        <tr>
            <td style="width: 330px; height: 43px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp;<span style="color: #ffffff"><strong> EMP-ID :</strong></span></td>
            <td style="width: 218px; height: 43px">
                <asp:TextBox ID="txtempid" runat="server" Width="180px" Enabled="False" Font-Bold="True"></asp:TextBox></td>
            <td style="width: 175px; height: 43px">
                <span style="color: #ffffff"><strong>
                EMAIL-ID:</strong></span></td>
            <td style="width: 296px; height: 43px">
                <asp:TextBox ID="txtmail" runat="server" Width="180px" Enabled="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 330px; height: 48px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp; <strong><span style="color: #ffffff">FIRST NAME:</span></strong></td>
            <td style="width: 218px; height: 48px">
                <asp:TextBox ID="txtfname" runat="server" Width="180px" Enabled="False"></asp:TextBox></td>
            <td style="width: 175px; height: 48px">
                <strong><span style="color: #ffffff">
                PHONE NUMBER:<asp:RegularExpressionValidator
                    ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphone"
                    ErrorMessage="*" ForeColor="Yellow" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator></span></strong></td>
            <td style="width: 296px; height: 48px">
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="22px">+91</asp:TextBox>
                <asp:TextBox ID="txtphone" runat="server" Width="147px" MaxLength="10" ></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 330px; height: 48px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp; <strong><span style="color: #ffffff">LAST NAME :</span></strong></td>
            <td style="width: 218px; height: 48px">
                <asp:TextBox ID="txtlname" runat="server" Width="180px" Enabled="False" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 175px; height: 48px">
                <strong><span style="color: #ffffff">
                DESIGNATION:</span></strong></td>
            <td style="width: 296px; height: 48px">
                <asp:TextBox ID="txtdesig" runat="server" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 330px; height: 49px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;<strong><span style="color: #ffffff">DOB :</span></strong></td>
            <td style="width: 218px; height: 49px">
                <asp:TextBox ID="txtdob" runat="server" Width="180px" Enabled="False"></asp:TextBox></td>
            <td style="width: 175px; height: 49px">
                <span style="color: #ffffff"><strong>
                DOJ :</strong></span></td>
            <td style="width: 296px; height: 49px">
                <asp:TextBox ID="txtdoj" runat="server" Width="180px" Enabled="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 330px; height: 48px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;<span style="color: #ffffff"><strong>GENDER:</strong></span></td>
            <td style="width: 218px; height: 48px">
                &nbsp;
                <asp:RadioButton ID="rbtnmale" runat="server" Font-Bold="True" Text="Male" ForeColor="White" Enabled="False" />
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:RadioButton ID="rbtnfemale" runat="server"
                    Font-Bold="True" Text="Female" ForeColor="White" Enabled="False" /></td>
            <td style="width: 175px; height: 48px">
                <span style="color: #ffffff"><strong>
                BASIC PAY:</strong></span></td>
            <td style="width: 296px; height: 48px">
                <asp:TextBox ID="txtbasic" runat="server" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 330px; height: 30px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;<strong><span style="color: #ffffff">ADDRESS :</span></strong></td>
            <td style="width: 218px; height: 30px">
                <asp:TextBox ID="txtadrs" runat="server" TextMode="MultiLine" Width="180px"></asp:TextBox></td>
            <td style="width: 175px; height: 30px">
                <strong><span style="color: #ffffff">
                DA :</span></strong></td>
            <td style="width: 296px; height: 30px">
                <asp:TextBox ID="txtda" runat="server" Enabled="False" Width="180px">0.0</asp:TextBox>
                <asp:Button ID="btncal" runat="server" Font-Bold="True" Font-Size="X-Small" Height="22px"
                    OnClick="btncal_Click" Text="CALCULATE" Width="94px" ToolTip="Click Here To Calculate!!!" Visible="False" /></td>
        </tr>
        <tr>
            <td style="width: 330px; height: 38px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; <strong><span style="color: #ffffff">CITY:</span></strong></td>
            <td style="width: 218px; height: 38px">
                <asp:TextBox ID="txtcity" runat="server" Width="180px"></asp:TextBox></td>
            <td style="width: 175px; height: 38px">
                <strong><span style="color: #ffffff">
                HRA :</span></strong></td>
            <td style="width: 296px; height: 38px">
                <asp:TextBox ID="txthra" runat="server" Width="180px" Enabled="False">0.0</asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 330px; height: 38px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; <strong><span style="color: #ffffff">PINCODE :<asp:RegularExpressionValidator
                    ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtpin" ErrorMessage="*"
                    ForeColor="Yellow" ValidationExpression="^([1-5]{1})([0-9]{5})$"></asp:RegularExpressionValidator></span></strong></td>
            <td style="width: 218px; height: 38px">
                <asp:TextBox ID="txtpin" runat="server" Width="180px" MaxLength="6"></asp:TextBox></td>
            <td style="width: 175px; height: 38px">
                <strong><span style="color: #ffffff">
                PF :</span></strong></td>
            <td style="width: 296px; height: 38px">
                <asp:TextBox ID="txtpf" runat="server" Width="180px" Enabled="False">0.0</asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 330px; height: 38px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; STATE :</span></strong></td>
            <td style="width: 218px; height: 38px">
                <asp:TextBox ID="txtstate" runat="server" Width="180px"></asp:TextBox></td>
            <td style="width: 175px; height: 38px">
                <strong><span style="color: #ffffff"></span></strong></td>
            <td style="width: 296px; height: 38px">
                </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 119px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<asp:Button
                    ID="btnupdate" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"
                    Height="40px" OnClick="btnupdate_Click" Text="UPDATE" Width="124px" CssClass ="btn btn2 btn3" ToolTip="Click Here To Update!!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button ID="btnback" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" OnClick="btnback_Click" Text="BACK" Width="124px" CssClass ="btn btn2 btn3" ToolTip="Click Here To Go Home!!!" /></td>
        </tr>
    </table>
</asp:Content>

