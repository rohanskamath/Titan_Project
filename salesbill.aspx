<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="salesbill.aspx.cs" Inherits="salesbill" Title="Sales Bill Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table>
        <tr>
            <td colspan="4" style="height: 136px">
                <span style="font-size: 16pt; color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong><span style="font-size: 24pt"><strong>
                        <span style="color: #ffffff">
                        *******</span>WORLD OF TITAN</strong><span style="color: #ffffff"><strong>*******<br />
                        </strong>
                            <span style="font-size: 14pt"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp;&nbsp; </strong>
                                <span style="font-size: 12pt"><strong>C.P.C PLAZA,MAIN ROAD<br />
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; NEAR CITY BUSTAND<br />
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 576101-UDUPI<br />
                                    <br />
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong><span style="font-size: 16pt"><strong>&nbsp;</strong><span style="color: #ffff99; font-family: Copperplate Gothic Bold;">TAX
                                        INVOICE</span></span></span></span></span></span></span></td>
        </tr>
    </table>
    <hr />
    <br />
    <table>
        <tr>
            <td colspan="4" style="height: 65px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; <strong><span style="color: #ffffff">BILL NO :</span> </strong>
                &nbsp;&nbsp;
                <asp:TextBox ID="txtbillno" runat="server" Width="180px" Enabled="False" Font-Bold="True"></asp:TextBox>&nbsp;&nbsp;
                <asp:Button
                    ID="btnnew" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="NEW" OnClick="btnnew_Click" ToolTip="Click Here Bill Number!!!!" /></td>
        </tr>
        <tr>
            <td style="width: 339px; height: 65px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; PURCHASE
                    NO :</span></strong></td>
            <td style="width: 286px; height: 65px">
                <asp:TextBox ID="txtsno" runat="server" Width="180px" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 158px; height: 65px">
                <strong><span style="color: #ffffff">BILL DATE :</span></strong></td>
            <td style="width: 95px; height: 65px">
                <asp:TextBox ID="txtbdate" runat="server" Width="180px" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 66px">
                <span style="font-size: 16pt; color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>
                    <span style="font-family: Copperplate Gothic Bold">DETAILS OF RECIVER (BILLED TO)</span></span></td>
        </tr>
        <tr>
            <td style="width: 339px; height: 51px;">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;MOBILE NO :</span></strong></td>
            <td style="width: 286px; height: 51px;">
                <asp:TextBox ID="txtphone" runat="server" MaxLength="10" Width="180px" ToolTip="Enter Contact Number!!!"></asp:TextBox>
                &nbsp;<asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    OnClick="Button1_Click" Text="CHECK" ToolTip="Click Here To Check Contact Number!!!!" Visible="False" /></td>
            <td style="width: 158px; height: 51px;">
                <strong><span style="color: #ffffff">ADDRESS :</span></strong></td>
            <td style="width: 95px; height: 51px;">
                <asp:TextBox ID="txtadrs" runat="server" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 339px; height: 44px;">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;NAME :</span></strong></td>
            <td style="width: 286px; height: 44px;">
                <asp:TextBox ID="txtname" runat="server" Width="180px"></asp:TextBox></td>
            <td style="width: 158px; height: 44px;">
                <strong><span style="color: #ffffff">CITY :</span></strong></td>
            <td style="width: 95px; height: 44px;">
                <asp:TextBox ID="txtcity" runat="server" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 339px; height: 37px;">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CUSTOMER-ID :</span></strong></td>
            <td style="width: 286px; height: 37px;">
                <asp:TextBox ID="txtcustid" runat="server" Width="180px"></asp:TextBox></td>
            <td style="width: 158px; height: 37px;">
                <strong><span style="color: #ffffff">PINCODE :<asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                    runat="server" ControlToValidate="txtpin" ErrorMessage="*" ForeColor="Yellow"
                    ValidationExpression="^([5]{1})([0-9]{5})$"></asp:RegularExpressionValidator></span></strong></td>
            <td style="width: 95px; height: 37px;">
                <asp:TextBox ID="txtpin" runat="server" MaxLength="6" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 339px; height: 48px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; EMAIL-ID :<asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                    runat="server" ControlToValidate="txtmail" ErrorMessage="*" ForeColor="Yellow"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></span></strong></td>
            <td style="width: 286px; height: 48px">
                <asp:TextBox ID="txtmail" runat="server" Width="180px"></asp:TextBox></td>
            <td style="width: 158px; height: 48px">
                <strong><span style="color: #ffffff">STATE :</span></strong></td>
            <td style="width: 95px; height: 48px">
                <asp:TextBox ID="txtstate" runat="server" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 65px">
                <span style="font-size: 16pt; color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>
                    <span style="font-family: Copperplate Gothic Bold">DETAILS OF PRODUCT PURCHASED</span></span></td>
        </tr>
        <tr>
            <td style="width: 339px; height: 65px;">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; PRODUCT-ID :</span></strong></td>
            <td style="width: 286px; height: 65px;">
                <asp:DropDownList ID="ddlistp" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                    DataTextField="product_id" DataValueField="product_id" AppendDataBoundItems="true" Width="182px" OnSelectedIndexChanged="ddlistp_SelectedIndexChanged" ToolTip="Select Product-Id!!!" >
                    <asp:ListItem>-----Select-----</asp:ListItem>
                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bgroup8ConnectionString4 %>"
                    SelectCommand="SELECT [product_id] FROM [stock]"></asp:SqlDataSource>
            </td>
            <td style="width: 158px; height: 65px;">
                <strong><span style="color: #ffffff">
                CATEGORY :</span></strong></td>
            <td style="width: 95px; height: 65px;">
                <asp:TextBox ID="txtcat" runat="server" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 339px; height: 50px;">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PRODUCT TYPE :</span></strong></td>
            <td style="width: 286px; height: 50px;">
                <asp:TextBox ID="txttype" runat="server" Width="180px"></asp:TextBox></td>
            <td style="width: 158px; height: 50px;">
                <span style="color: #ffffff"><strong>
                BRAND NAME :</strong></span></td>
            <td style="width: 95px; height: 50px;">
                <asp:TextBox ID="txtbrand" runat="server" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 339px; height: 48px;">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                MODEL NUMBER :</span></strong></td>
            <td style="width: 286px; height: 48px;">
                <asp:TextBox ID="txtmodel" runat="server" Width="180px"></asp:TextBox></td>
            <td style="width: 158px; height: 48px;">
                <strong><span style="color: #ffffff">
                WARRENTY :</span></strong></td>
            <td style="width: 95px; height: 48px;">
                <asp:TextBox ID="txtwarrenty" runat="server" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 339px; height: 48px;">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                PRICE :</span></strong></td>
            <td style="width: 286px; height: 48px;">
                <asp:TextBox ID="txtprice" runat="server" Width="180px"></asp:TextBox></td>
            <td style="width: 158px; height: 48px;">
                <strong><span style="color: #ffffff">
                QUANTITY :</span></strong></td>
            <td style="width: 95px; height: 48px;">
                <asp:TextBox ID="txtqty" runat="server" Width="180px" OnTextChanged="txtqty_TextChanged" ToolTip="Enter Quantity!!!"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 48px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="height: 80px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<asp:Button ID="btnsave" runat="server" Font-Bold="True"
                    Font-Names="Times New Roman" Height="40px" OnClick="btnsave_Click" Text="Add To List"
                    Width="207px" Font-Size="Medium" CssClass ="btn btn2 btn3" ToolTip="Click Here Add To List!!!" />&nbsp;<br />
                <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Button ID="btnadd" runat="server" Text="PURCHASE" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Height="40px" Width="208px" OnClick="btnadd_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Bill!!!" Visible="False" />
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server" Visible="False" Width="994px">
    <table>
        <tr>
            <td style="width: 100px; height: 44px;">
            </td>
            <td style="width: 481px; height: 44px;">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;&nbsp; TOTAL AMOUNT :</span></strong></td>
            <td style="width: 378px; height: 44px;">
                <asp:TextBox ID="txtamt" runat="server" Width="180px" ReadOnly="True"></asp:TextBox><span style="color: #ffffff"><strong>(INR)</strong></span></td>
            <td style="width: 100px; height: 44px; color: #000000;">
            </td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 100px; height: 75px;">
            </td>
            <td style="width: 481px; height: 75px;">
                <span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; <strong>DISCOUNT :</strong></span></td>
            <td style="width: 378px; height: 75px;">
                <strong><span
                    style="color: #ffffff"></span></strong><asp:Label ID="lblper" runat="server" ForeColor="White" Text="0"></asp:Label><asp:Label
                    ID="Label1" runat="server" Font-Bold="True" ForeColor="White" Text="%"></asp:Label>&nbsp; 
                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#FFFFFF" Text="Discount"></asp:Label>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;<asp:TextBox ID="txtdis" runat="server" Width="180px" ToolTip="Enter Positive Values!!!"></asp:TextBox><strong><span
                    style="color: #ffffff">(INR)<asp:Button ID="btncal" runat="server" Text="Calculate" Font-Bold="True" Width="79px" OnClick="btncal_Click" ToolTip="Click Here To Calculate Discount!!!" /></span></strong></td>
            <td style="width: 100px; height: 75px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 44px">
            </td>
            <td style="width: 481px; height: 44px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; GST (cgst &amp; sgst) :</span></strong></td>
            <td style="width: 378px; height: 44px">
                <asp:TextBox ID="txtgst" runat="server" Width="180px" ReadOnly="True"></asp:TextBox><strong><span
                    style="color: #ffffff">(INR)</span></strong></td>
            <td style="width: 100px; height: 44px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 84px;">
            </td>
            <td style="height: 84px;" colspan="3">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong><span style="color: #ffffff">GRAND TOTAL : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; </span></strong>
                <asp:TextBox ID="txttot" runat="server" Width="180px" Enabled="False"></asp:TextBox><strong><span
                    style="color: #ffffff">(INR)</span></strong></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 117px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button ID="btnbill" runat="server" Text="SHOW BILL" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Height="48px" Width="145px" OnClick="btnbill_Click" CssClass="btn btn2 btn3" ToolTip="Click Here To Show Bill!!!" />
                &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnshow"
                    runat="server" Height="48px" Text="PRINT BILL" Width="145px" CssClass ="btn btn2 btn3" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" OnClick="btnshow_Click" ToolTip="Click Here To Print Bill!!!!" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                <asp:Button ID="btncancel" runat="server" Text="BACK" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Height="48px" Width="145px" OnClick="btncancel_Click" CssClass="btn btn2 btn3" ToolTip="Click Here To Go Home" /></td>
        </tr>
    </table>
    </asp:Panel>
    <hr />
    <br />
    <asp:Panel ID="Panel2" runat="server" Height="104px" Width="992px" Visible="False"><table>
        <tr>
            <td colspan="4" style="height: 136px">
                <span style="font-size: 16pt; color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong><span style="font-size: 24pt"><strong>
                        <span style="color: #ffffff">*******</span>WORLD OF TITAN</strong><span style="color: #ffffff"><strong>*******<br />
                        </strong><span style="font-size: 14pt"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp;&nbsp; </strong><span style="font-size: 12pt"><strong>C.P.C PLAZA,MAIN ROAD<br />
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; NEAR CITY BUSTAND<br />
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 576101-UDUPI<br />
                                <br />
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong><span style="font-size: 16pt"><strong>&nbsp;</strong><span style="color: #ffff99; font-family: Copperplate Gothic Bold;">TAX INVOICE</span></span></span></span></span></span></span></td>
        </tr>
    </table>
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999"
            BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <FooterStyle BackColor="#CCCCCC" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#CCCCCC" />
        </asp:GridView>
        <br />
    </asp:Panel>
    <br />
    <br />
    <br />
    &nbsp; &nbsp;<br />
    &nbsp; &nbsp;&nbsp;
    <br />
</asp:Content>

