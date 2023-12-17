<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="addemp.aspx.cs" Inherits="addemp" Title="Employee Registration Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table>
        <tr>
            <td colspan="4" style="height: 130px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span
                    style="font-size: 24pt"> <span style="color: #ffff99;
                    text-decoration: underline; font-family: Copperplate Gothic Bold;">EMPLOYEE REGISTRATION!!!!</span></span></td>
        </tr>
        <tr>
            <td style="width: 506px; height: 35px;">
                <strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="color: #ffffff">
                        EMP-ID :</span></strong></td>
            <td style="width: 312px; height: 35px;">
                <asp:TextBox ID="txtempid" runat="server" Width="182px" Enabled="False" Font-Bold="True"></asp:TextBox>&nbsp;<asp:Button
                    ID="btnnew" runat="server" Font-Bold="True" OnClick="btnnew_Click" Text="NEW"
                    Width="50px" Font-Names="Times New Roman" ToolTip="Click Here For New Emp-Id!!" />&nbsp;</td>
            <td style="width: 228px; height: 35px;">
                <span style="color: #ffffff">
                <strong>
                EMAIL-ID :</strong> 
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmail"
                        ErrorMessage="*" ForeColor="Yellow" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></span></td>
            <td style="width: 347px; height: 35px;">
                <asp:TextBox ID="txtmail" runat="server" Width="182px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 506px; height: 49px;">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong><span style="color: #ffffff">
                FIRST NAME :</span></strong></td>
            <td style="width: 312px; height: 49px;">
                <asp:TextBox ID="txtfname" runat="server" OnTextChanged="txtfname_TextChanged" Width="182px"></asp:TextBox></td>
            <td style="width: 228px; height: 49px;">
                <strong><span style="color: #ffffff">
                PHONE NUMBER :<asp:RegularExpressionValidator
                    ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtphone1"
                    ErrorMessage="*" ForeColor="Yellow" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator></span></strong></td>
            <td style="width: 347px; height: 49px;">
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Height="17px" Width="22px">+91</asp:TextBox>
                <asp:TextBox ID="txtphone1" runat="server" MaxLength="10" Width="150px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 506px; height: 60px;">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong> <span style="color: #ffffff">
                    LAST NAME :</span></strong></td>
            <td style="width: 312px; height: 60px;">
                <asp:TextBox ID="txtlname" runat="server" OnTextChanged="txtlname_TextChanged" Width="182px"></asp:TextBox></td>
            <td style="width: 228px; height: 60px;">
                <strong><span style="color: #ffffff">
                DESIGNATION :</span> </strong>
                </td>
            <td style="width: 347px; height: 60px;">
                <asp:DropDownList ID="ddlist" runat="server" Width="187px" AutoPostBack="True" OnSelectedIndexChanged="ddlist_SelectedIndexChanged">
                    <asp:ListItem>-----Select-----</asp:ListItem>
                    <asp:ListItem>Sales Manager</asp:ListItem>
                    <asp:ListItem>Employee</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 506px; height: 91px;">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong><span style="color: #ffffff">
                DOB :</span></strong></td>
            <td style="width: 312px; height: 91px;">
                <asp:TextBox ID="txtdob" runat="server" OnTextChanged="txtdob_TextChanged" Width="182px" ToolTip="Enter the year!!!"></asp:TextBox>
                &nbsp;<asp:Button ID="btncal" runat="server" Text="Calender" OnClick="btncal_Click" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Small" Height="22px" ToolTip="Click Here for Calender After Entering the Year!!!" Visible="False" Width="71px" /><br />
                &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC"
                    BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
                    Font-Size="8pt" ForeColor="#003399" Height="106px" Visible="False" Width="159px" OnSelectionChanged="Calendar1_SelectionChanged">
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
            <td style="width: 228px; height: 91px;">
                <span style="color: #ffffff">
                <strong>
                DOJ :</strong> </span>
                </td>
            <td style="width: 347px; height: 91px;">
                <asp:TextBox ID="txtdoj" runat="server" OnTextChanged="txtdoj_TextChanged" Width="182px"></asp:TextBox>&nbsp;&nbsp;<br />
                &nbsp;&nbsp;
                <br />
                <%--<asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC"
                    BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
                    Font-Size="8pt" ForeColor="#003399" Height="106px" Visible="False" Width="159px" OnSelectionChanged="Calendar2_SelectionChanged">
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                        Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                </asp:Calendar>--%>
            </td>
        </tr>
        <tr>
            <td style="width: 506px; height: 52px;">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<strong><span style="color: #ffffff">GENDER :</span></strong></td>
            <td style="width: 312px; height: 52px;">
                <asp:RadioButton ID="rbtnmale" runat="server" Font-Bold="True" GroupName="gender" Text="Male" OnCheckedChanged="rbtnmale_CheckedChanged" ForeColor="White" />&nbsp;&nbsp;
                &nbsp; &nbsp; &nbsp;
                <asp:RadioButton ID="rbtnfemale" runat="server" Font-Bold="True" GroupName="gender" Text="Female" OnCheckedChanged="rbtnfemale_CheckedChanged" ForeColor="White" /></td>
            <td style="width: 228px; height: 52px;">
                <strong><span style="color: #ffffff">
                BASIC PAY:</span></strong>
                </td>
            <td style="width: 347px; height: 52px;">
                <asp:TextBox ID="txtbasic" runat="server" OnTextChanged="txtbasic_TextChanged" Width="182px"></asp:TextBox>
                <asp:Button ID="btnfind" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Text="Calculate" OnClick="btnfind_Click" Visible="False" ToolTip="Click Here To Calculate PF!!!!" /></td>
        </tr>
        <tr>
            <td style="width: 506px; height: 45px;">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <span style="color: #ffffff">&nbsp;<strong>ADDRESS :</strong></span>
                </td>
            <td style="width: 312px; height: 45px;">
                <asp:TextBox ID="txtadrs" runat="server" TextMode="MultiLine" Width="182px"></asp:TextBox></td>
            <td style="width: 228px; height: 45px;">
                <strong><span style="color: #ffffff">
                DA:</span></strong></td>
            <td style="width: 347px; height: 45px;">
                <asp:TextBox ID="txtda" runat="server" Width="182px" Enabled="False">0.0</asp:TextBox>&nbsp;
                </td>
        </tr>
        <tr>
            <td style="width: 506px; height: 39px;">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<strong><span style="color: #ffffff">CITY : </span></strong>
                </td>
            <td style="width: 312px; height: 39px;">
                <asp:TextBox ID="txtcity" runat="server" OnTextChanged="txtcity_TextChanged" Width="182px"></asp:TextBox></td>
            <td style="width: 228px; height: 39px;">
                <span style="color: #ffffff">
                <strong>
                HRA :</strong> </span>
                </td>
            <td style="width: 347px; height: 39px;">
                <asp:TextBox ID="txthra" runat="server" Width="182px" Enabled="False">0.0</asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 506px; height: 43px;">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="color: #ffffff"><strong>
                PINCODE :</strong> </span>
                </td>
            <td style="width: 312px; height: 43px;">
                <asp:TextBox ID="txtpin" runat="server" OnTextChanged="txtpin_TextChanged" Width="182px" MaxLength="6"></asp:TextBox></td>
            <td style="width: 228px; height: 43px;">
                <strong><span style="color: #ffffff">
                PF :</span></strong>
                </td>
            <td style="width: 347px; height: 43px;">
                <asp:TextBox ID="txtpf" runat="server" Width="182px" Enabled="False">0.0</asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 506px; height: 43px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    STATE :</span></strong></td>
            <td style="width: 312px; height: 43px">
                <asp:TextBox ID="txtstate" runat="server" Width="180px" OnTextChanged="txtstate_TextChanged"></asp:TextBox></td>
            <td style="width: 228px; height: 43px">
                <strong><span style="color: #ffffff"></span></strong></td>
            <td style="width: 347px; height: 43px">
                </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 90px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnsave" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" Text="REGISTER" Width="124px" OnClick="btnsave_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Register!!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="Button4" runat="server" Font-Bold="True"
                    Font-Names="Times New Roman" Font-Size="Medium" Height="40px" Text="CANCEL" Width="124px" OnClick="Button4_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Clear!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                <asp:Button ID="btnback" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" Text="BACK" Width="124px" OnClick="btnback_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Go Home!!" /></td>
        </tr>
    </table>
    <hr />
</asp:Content>

