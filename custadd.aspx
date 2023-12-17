<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="custadd.aspx.cs" Inherits="custadd" Title="Add Customer Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table>
        <tr>
            <td colspan="4" style="height: 113px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <span style="font-size: 24pt;
                    color: #ffff99; text-decoration: underline; font-family: Copperplate Gothic Bold;">CUSTOMER REGISTRATION!!!!</span></td>
        </tr>
        <tr>
            <td style="width: 636px; height: 23px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CUSTOMER-ID :</span></strong></td>
            <td style="width: 397px; height: 23px">
                <asp:TextBox ID="txtcid" runat="server" Enabled="False" Width="180px" Font-Bold="True"></asp:TextBox>&nbsp;
                <asp:Button ID="btnnew" runat="server" Font-Bold="True" Text="NEW" OnClick="btnnew_Click" Font-Names="Times New Roman" ToolTip="Click Here For Customer-Id!!" /></td>
            <td style="width: 265px; height: 23px">
                <span style="color: #ffffff"><strong>PHONE NUMBER :</strong></span></td>
            <td style="width: 295px; height: 23px">
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="22px">+91</asp:TextBox>
                <asp:TextBox ID="txtphone" runat="server" MaxLength="10" Width="149px" OnTextChanged="txtphone_TextChanged"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 636px; height: 41px">
                <span style="color: #ffffff"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CUSTOMER NAME :<br />
                </strong></span></td>
            <td style="width: 397px; height: 41px">
                <asp:TextBox ID="txtcname" runat="server" Width="180px" OnTextChanged="txtcname_TextChanged"></asp:TextBox>
                <asp:RegularExpressionValidator
                        ID="RegularExpressionValidator3" runat="server" ErrorMessage="*Please Enter Valid Name*" ForeColor="Yellow" ValidationExpression ="^[a-zA-Z' ]*$" ControlToValidate="txtcname" Font-Size="8pt" Height="1px" Width="119px"></asp:RegularExpressionValidator></td>
            <td style="width: 265px; height: 41px">
                <span style="color: #ffffff"><strong>ADDRESS :</strong></span></td>
            <td style="width: 295px; height: 41px">
                <asp:TextBox ID="txtadrs" runat="server" TextMode="MultiLine" Width="181px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 636px; height: 32px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; GENDER :</span></strong></td>
            <td style="width: 397px; height: 32px">
                <asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True" ForeColor="White"
                    Text="Male" GroupName="gender" OnCheckedChanged="RadioButton1_CheckedChanged" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" Font-Bold="True" ForeColor="White"
                    Text="Female" GroupName="gender" OnCheckedChanged="RadioButton2_CheckedChanged" /></td>
            <td style="width: 265px; height: 32px">
                <span style="color: #ffffff"><strong>CITY :</strong></span></td>
            <td style="width: 295px; height: 32px">
                <asp:TextBox ID="txtcity" runat="server" Width="180px" OnTextChanged="txtcity_TextChanged"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 636px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;DOB :</span></strong></td>
            <td style="width: 397px">
                <asp:TextBox ID="txtdob" runat="server" Width="180px" OnTextChanged="txtdob_TextChanged" ToolTip="Enter the Year First!!!!"></asp:TextBox>&nbsp;
                <asp:Button ID="btncal" runat="server" Font-Bold="True" 
                    Text="Calender" Width="74px" OnClick="btncal_Click" Font-Names="Times New Roman" Visible="False" ToolTip="Click Here for Calender After Entering the Year!!!" /><br />
                <br />
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC"
                    BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
                    Font-Size="8pt" ForeColor="#003399" Height="127px" Visible="False" Width="187px" OnSelectionChanged="Calendar1_SelectionChanged">
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                        Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                </asp:Calendar>
            </td>
            <td style="width: 265px">
                <strong><span style="color: #ffffff">PINCODE :<asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                    runat="server" ControlToValidate="txtpin" ErrorMessage="*" ForeColor="Yellow"
                    ValidationExpression="^([1-5]{1})([0-9]{5})$"></asp:RegularExpressionValidator></span></strong></td>
            <td style="width: 295px">
                <asp:TextBox ID="txtpin" runat="server" Width="180px" OnTextChanged="txtpin_TextChanged" MaxLength="6"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 636px; height: 31px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; EMAIL-ID :<asp:RegularExpressionValidator
                        ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmail" ErrorMessage="*"
                        ForeColor="Yellow" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></span></strong></td>
            <td style="width: 397px; height: 31px">
                <asp:TextBox ID="txtmail" runat="server" Width="180px"></asp:TextBox></td>
            <td style="width: 265px; height: 31px">
                <strong><span style="color: #ffffff">STATE :</span></strong></td>
            <td style="width: 295px; height: 31px">
                <asp:TextBox ID="txtstate" runat="server" Width="180px" OnTextChanged="txtstate_TextChanged"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 85px">
                <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button
                    ID="btnsave" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"
                    Height="40px" Text="REGISTER" Width="124px" OnClick="btnsave_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Register Customer Information!!!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button
                    ID="btncancel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"
                    Height="40px" Text="CANCEL" Width="124px" OnClick="btncancel_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Clear!!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button ID="btnback" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" Text="BACK" Width="124px" OnClick="btnback_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Go Home!!!" /><br />
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

