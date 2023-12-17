<%@ Page Language="C#" MasterPageFile="~/homepage1.master" AutoEventWireup="true" CodeFile="serviceadd.aspx.cs" Inherits="serviceadd" Title="Service Page" %>
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
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong><span style="font-size: 16pt"><strong>&nbsp;&nbsp;
                                </strong><span
                                        style="color: #ffff99; font-family: Copperplate Gothic Bold;">TAX INVOICE</span></span></span></span></span></span></span></td>
        </tr>
    </table>
    <br />
    <hr />
    <br />
    <table>
        <tr>
            <td style="width: 440px; height: 32px">
                <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;INVOICE NO :</span></strong></td>
            <td style="width: 260px; height: 32px">
                <asp:TextBox ID="txtsbillno" runat="server" Enabled="False" Font-Bold="True" Width="150px"></asp:TextBox>&nbsp;
                <asp:Button ID="btnnew" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Text="NEW" OnClick="btnnew_Click" ToolTip="Click Here For ServiceBill Number!!!" /></td>
            <td style="width: 159px; height: 32px">
                <strong><span style="color: #ffffff">INVOICE DATE :</span></strong></td>
            <td style="width: 95px; height: 32px">
                <asp:TextBox ID="txtsbilldate" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="height: 74px" colspan="4">
                <span style="color: #ffffff"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; CUSTOMER-TYPE :&nbsp; </strong></span>
                <asp:DropDownList ID="ddlistc" runat="server" AutoPostBack="True"
                    Width="172px" Enabled="False" OnSelectedIndexChanged="ddlistc_SelectedIndexChanged">
                    <asp:ListItem>------Select------</asp:ListItem>
                    <asp:ListItem>Purchased Customer</asp:ListItem>
                    <asp:ListItem>Only Service Customer</asp:ListItem>
                </asp:DropDownList><strong><span style="color: #ffffff"></span></strong></td>
        </tr>
    </table>
    <br />
    <hr />
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table>
                <tr>
                    <td colspan="4" style="height: 49px">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong><span style="color: #ffffff">
                    CUST. BILL NO: </span></strong>&nbsp;
                <asp:TextBox ID="txtbno" runat="server" ToolTip="Enter Customer Bill No!!!" OnTextChanged="txtbno_TextChanged" Width="150px" Font-Bold="False"></asp:TextBox>
                <asp:Button ID="btncheck" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Small" Text="CHECK" OnClick="btncheck_Click" ToolTip="Click Here To Check Bill No!!!" Visible="False" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp;&nbsp; <strong><span style="color: #ffffff">BILL DATE :&nbsp;
                <asp:TextBox ID="txtbdate" runat="server" ReadOnly="True"></asp:TextBox></span></strong></td>
                </tr>
                <tr>
                    <td colspan="4" style="height: 49px">
                        <span style="font-size: 16pt; color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp;</strong><span style="font-family: Copperplate Gothic Bold">DETAILS
                                OF CUSTOMER(BILLED TO)</span></span></td>
                </tr>
                <tr>
                    <td style="width: 415px; height: 47px">
                        <span style="color: #ffffff"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                            &nbsp;NAME :</strong></span></td>
                    <td style="width: 308px; height: 47px">
                        <asp:TextBox ID="txtname" runat="server" ReadOnly="True" Width="180px"></asp:TextBox></td>
                    <td style="width: 157px; height: 47px">
                        <strong><span style="color: #ffffff">ADDRESS :</span></strong></td>
                    <td style="width: 89px; height: 47px">
                        <asp:TextBox ID="txtadrs" runat="server" ReadOnly="True" TextMode="MultiLine" Width="180px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 415px; height: 46px">
                        <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;CUSTOMER
                            ID :</span></strong></td>
                    <td style="width: 308px; height: 46px">
                        <asp:TextBox ID="txtcustid" runat="server" ReadOnly="True" Width="180px"></asp:TextBox></td>
                    <td style="width: 157px; height: 46px">
                        <strong><span style="color: #ffffff">CITY :</span></strong></td>
                    <td style="width: 89px; height: 46px">
                        <asp:TextBox ID="txtcity" runat="server" ReadOnly="True" Width="180px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 415px; height: 46px">
                        <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;MOBILE
                            NO :</span></strong></td>
                    <td style="width: 308px; height: 46px">
                        <asp:TextBox ID="txtphone" runat="server" ReadOnly="True" Width="180px"></asp:TextBox></td>
                    <td style="width: 157px; height: 46px">
                        <strong><span style="color: #ffffff">PINCODE :</span></strong></td>
                    <td style="width: 89px; height: 46px">
                        <asp:TextBox ID="txtpin" runat="server" ReadOnly="True" Width="180px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 415px; height: 41px">
                        <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;EMAIL-ID
                            :</span></strong></td>
                    <td style="width: 308px; height: 41px">
                        <asp:TextBox ID="txtmail" runat="server" ReadOnly="True" Width="180px"></asp:TextBox></td>
                    <td style="width: 157px; height: 41px">
                        <strong><span style="color: #ffffff">STATE :</span></strong></td>
                    <td style="width: 89px; height: 41px">
                        <asp:TextBox ID="txtstate" runat="server" ReadOnly="True" Width="180px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="4" style="height: 59px">
                        <span style="font-size: 16pt; color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; </strong><span style="font-family: Copperplate Gothic Bold">DETAILS OF
                                PRODUCT</span></span></td>
                </tr>
                <tr style="font-family: Times New Roman">
                    <td style="width: 415px; height: 47px">
                        <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                            PRODUCT ID :</span></strong></td>
                    <td style="width: 308px; height: 47px">
                        <asp:DropDownList ID="ddlistp" runat="server" AutoPostBack="True" AppendDataBoundItems="True" Width="184px" OnSelectedIndexChanged="ddlistp_SelectedIndexChanged" ToolTip="Select Product-id!!!">
                        </asp:DropDownList>
                    </td>
                    <td style="width: 157px; height: 47px">
                        <strong><span style="color: #ffffff">BRAND NAME:</span></strong></td>
                    <td style="width: 89px; height: 47px">
                        <asp:TextBox ID="txtbrand" runat="server" ReadOnly="True" Width="180px"></asp:TextBox></td>
                </tr>
                <tr style="font-family: Times New Roman">
                    <td style="width: 415px; height: 56px">
                        <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                            PRODUCT TYPE :</span></strong></td>
                    <td style="width: 308px; height: 56px">
                        <asp:TextBox ID="txttype" runat="server" ReadOnly="True" Width="180px"></asp:TextBox></td>
                    <td style="width: 157px; height: 56px">
                        <strong><span style="color: #ffffff">MODEL NUMBER :</span></strong></td>
                    <td style="width: 89px; height: 56px">
                        <asp:TextBox ID="txtmodel" runat="server" ReadOnly="True" Width="180px"></asp:TextBox></td>
                </tr>
                <tr style="font-family: Times New Roman">
                    <td style="width: 415px; height: 46px">
                        <strong><span style="color: #ffff99; font-size: 16pt;"><span style="font-size: 12pt;
                            color: #ffffff"><span style="font-size: 16pt; color: #ffff99">&nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>CATEGORY :</span></span></strong></td>
                    <td style="width: 308px; height: 46px; font-size: 12pt; color: #ffff99;">
                        <asp:TextBox ID="txtcat" runat="server" ReadOnly="True" Width="180px"></asp:TextBox></td>
                    <td style="width: 157px; height: 46px; font-size: 12pt; color: #ffff99;">
                        <span style="color: #ffffff"><strong>QUANTITY :</strong></span></td>
                    <td style="width: 89px; height: 46px; font-size: 12pt; color: #ffff99; font-family: Copperplate Gothic Bold;">
                        <asp:TextBox ID="txtqty" runat="server" Width="180px"></asp:TextBox></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td colspan="4" style="height: 42px">
                        <span style="color: #ffff99; font-family: Copperplate Gothic Bold">&nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                            <span style="font-size: 16pt">SERVICE DETAILS</span></span></td>
                </tr>
                <tr>
                    <td style="width: 422px; height: 51px">
                        <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                            &nbsp;SERVICE TYPE :</span></strong></td>
                    <td style="width: 275px; height: 51px">
                        <asp:DropDownList ID="ddlists" runat="server" Width="182px" AutoPostBack="True" OnSelectedIndexChanged="ddlists_SelectedIndexChanged" ToolTip="Select Service Type!!!">
                            <asp:ListItem>-----Select-----</asp:ListItem>
                            <asp:ListItem>Free</asp:ListItem>
                            <asp:ListItem>Paid</asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="width: 126px; height: 51px">
                        <strong><span style="color: #ffffff">GST(cgst&amp;sgst):</span></strong></td>
                    <td style="width: 100px; color: #000000; height: 51px">
                        <asp:TextBox ID="txttax" runat="server" ReadOnly="True" Width="180px"></asp:TextBox></td>
                </tr>
                <tr style="color: #000000">
                    <td style="width: 422px; height: 51px">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong><span style="color: #ffffff">
                            SERVICE CHARGE :</span></strong></td>
                    <td style="width: 275px; color: #000000; height: 51px">
                        <asp:TextBox ID="txtcharge" runat="server" Width="180px"></asp:TextBox></td>
                    <td style="width: 126px; color: #000000; height: 51px">
                        <span style="color: #ffffff"><strong>CESS :</strong></span></td>
                    <td style="width: 100px; height: 51px">
                        <asp:TextBox ID="txtcess" runat="server" ReadOnly="True" Width="180px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="4" style="height: 53px">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="btncal" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Small" Text="CALCULATE" Width="127px" OnClick="btncal_Click" ToolTip="Click Here To Calculate!!!" Visible="False" /></td>
                </tr>
                <tr>
                    <td colspan="4" style="height: 19px">
                        <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp;&nbsp; TOTAL AMOUNT :
                            <asp:TextBox ID="txtamount" runat="server" Enabled="False"></asp:TextBox></span></strong></td>
                </tr>
                <tr>
                    <td colspan="4" style="height: 85px">
                        <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp;&nbsp; GRAND TOTAL : &nbsp; &nbsp;&nbsp;<asp:TextBox ID="txtgtotal" runat="server" Enabled="False">0</asp:TextBox></span></strong></td>
                </tr>
                <tr>
                    <td colspan="4" style="height: 76px">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp;&nbsp; &nbsp;
                        <asp:Button ID="btnsave" runat="server" Font-Bold="True"
                    Font-Names="Times New Roman" Font-Size="Medium" Height="40px" Text="SHOW BILL" Width="124px" OnClick="btnsave_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Show Bill!!!" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                        &nbsp; &nbsp;&nbsp;
                        <asp:Button
                    ID="btnnext" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"
                    Height="40px" Text="PRINT BILL" Width="124px" OnClick="btnnext_Click" CssClass ="btn btn2 btn3" ToolTip="Click here To Print Bill!!!" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="btncancel" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Height="40px" Text="CANCEL" Width="124px" OnClick="btncancel_Click" CssClass ="btn btn2 btn3" ToolTip="Click Here To Clear" /></td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table>
                <tr>
                    <td colspan="4" style="height: 49px">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong><span style="color: #ffffff">
                            CUST.BILL NO :&nbsp; &nbsp;<asp:TextBox ID="txtbno2" runat="server" Enabled="False"
                                Font-Bold="True"></asp:TextBox>
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; BILL
                            DATE :&nbsp; &nbsp;<asp:TextBox ID="txtbdate2" runat="server" Enabled="False" Font-Bold="True"></asp:TextBox></span></strong></td>
                </tr>
                <tr>
                    <td colspan="4" style="height: 49px">
                        <span style="font-size: 16pt; color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp;</strong><span style="font-family: Copperplate Gothic Bold">DETAILS
                                OF CUSTOMER(BILLED TO)</span></span></td>
                </tr>
                <tr>
                    <td style="width: 415px; height: 47px">
                        <span style="color: #ffffff"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                            &nbsp;NAME :</strong></span></td>
                    <td style="width: 308px; height: 47px">
                        <asp:TextBox ID="txtname2" runat="server" Width="180px" OnTextChanged="txtname2_TextChanged"></asp:TextBox></td>
                    <td style="width: 157px; height: 47px">
                        <strong><span style="color: #ffffff">ADDRESS :</span></strong></td>
                    <td style="width: 89px; height: 47px">
                        <asp:TextBox ID="txtadrs2" runat="server" TextMode="MultiLine" Width="180px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 415px; height: 46px">
                        <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;CUSTOMER
                            ID :</span></strong></td>
                    <td style="width: 308px; height: 46px">
                        <asp:TextBox ID="txtcustid2" runat="server" Width="180px" Enabled="False"></asp:TextBox></td>
                    <td style="width: 157px; height: 46px">
                        <strong><span style="color: #ffffff">CITY :</span></strong></td>
                    <td style="width: 89px; height: 46px">
                        <asp:TextBox ID="txtcity2" runat="server" Width="180px" OnTextChanged="txtcity2_TextChanged"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 415px; height: 46px">
                        <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;MOBILE
                            NO :<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                ControlToValidate="txtphone2" ErrorMessage="*" ForeColor="Yellow" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator></span></strong></td>
                    <td style="width: 308px; height: 46px">
                        <asp:TextBox ID="txtphone2" runat="server" Width="180px" MaxLength="10"></asp:TextBox></td>
                    <td style="width: 157px; height: 46px">
                        <strong><span style="color: #ffffff">PINCODE :<asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                            runat="server" ControlToValidate="txtpin2" ErrorMessage="*" ForeColor="Yellow"
                            ValidationExpression="^([5]{1})([0-9]{5})$"></asp:RegularExpressionValidator></span></strong></td>
                    <td style="width: 89px; height: 46px">
                        <asp:TextBox ID="txtpin2" runat="server" Width="180px" MaxLength="6"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 415px; height: 41px">
                        <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;EMAIL-ID
                            :<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ControlToValidate="txtmail2" ErrorMessage="*" ForeColor="Yellow" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></span></strong></td>
                    <td style="width: 308px; height: 41px">
                        <asp:TextBox ID="txtmail2" runat="server" Width="180px"></asp:TextBox></td>
                    <td style="width: 157px; height: 41px">
                        <strong><span style="color: #ffffff">STATE :</span></strong></td>
                    <td style="width: 89px; height: 41px">
                        <asp:TextBox ID="txtstate2" runat="server" Width="180px" OnTextChanged="txtstate2_TextChanged"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="4" style="height: 59px">
                        <span style="font-size: 16pt; color: #ffff99"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; </strong><span style="font-family: Copperplate Gothic Bold">DETAILS OF
                                PRODUCT</span></span></td>
                </tr>
                <tr style="font-family: Times New Roman">
                    <td style="width: 415px; height: 47px">
                        <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                            PRODUCT ID :</span></strong></td>
                    <td style="width: 308px; height: 47px">
                        <asp:TextBox ID="txtpid2" runat="server" Enabled="False" Width="180px"></asp:TextBox></td>
                    <td style="width: 157px; height: 47px">
                        <strong><span style="color: #ffffff">BRAND NAME:</span></strong></td>
                    <td style="width: 89px; height: 47px">
                        <asp:TextBox ID="txtbrand2" runat="server" Width="180px" OnTextChanged="txtbrand2_TextChanged"></asp:TextBox></td>
                </tr>
                <tr style="font-family: Times New Roman">
                    <td style="width: 415px; height: 56px">
                        <span style="color: #ffff99; font-size: 16pt;"><strong> <span style="font-size: 12pt; color: #ffffff">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                PRODUCT TYPE :</span></strong></span></td>
                    <td style="width: 308px; height: 56px; font-size: 12pt; color: #ffff99;">
                        <asp:TextBox ID="txttype2" runat="server" ReadOnly="True" Width="180px" Enabled="False"></asp:TextBox></td>
                    <td style="width: 157px; height: 56px; font-size: 12pt; color: #ffff99;">
                        <strong><span style="color: #ffffff">MODEL NUMBER :</span></strong></td>
                    <td style="width: 89px; height: 56px; font-size: 12pt;">
                        <asp:TextBox ID="txtmodel2" runat="server" ReadOnly="True" Width="180px" Enabled="False"></asp:TextBox></td>
                </tr>
                <tr style="font-size: 12pt; font-family: Times New Roman">
                    <td style="width: 415px; height: 46px">
                        <strong><span style="color: #ffff99"><span style="color: #ffffff"><span style="color: #ffffff">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</span>CATEGORY
                            :</span></span></strong></td>
                    <td style="width: 308px; height: 46px; font-size: 12pt; color: #ffff99;">
                        <asp:TextBox ID="txtcat2" runat="server" Width="180px" OnTextChanged="txtcat2_TextChanged"></asp:TextBox></td>
                    <td style="width: 157px; height: 46px; font-size: 12pt; color: #ffff99;">
                        <span style="color: #ffffff"><strong>QUANTITY :</strong></span></td>
                    <td style="width: 89px; height: 46px; font-size: 12pt; color: #ffff99; font-family: Copperplate Gothic Bold;">
                        <asp:TextBox ID="txtqty2" runat="server" Width="180px"></asp:TextBox></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td colspan="4" style="height: 64px">
                        <span style="font-size: 16pt; color: #ffff99; font-family: Copperplate Gothic Bold">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; SERVICE DETAILS</span></td>
                </tr>
                <tr>
                    <td style="width: 392px; height: 49px">
                        <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;SERVICE
                            TYPE :</span></strong></td>
                    <td style="width: 283px; height: 49px">
                        <asp:DropDownList ID="ddlists2" runat="server" AutoPostBack="True" Width="184px" OnSelectedIndexChanged="ddlists2_SelectedIndexChanged">
                            <asp:ListItem>-----Select-----</asp:ListItem>
                            <asp:ListItem>Free</asp:ListItem>
                            <asp:ListItem>Paid</asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="width: 142px; height: 49px">
                        <strong><span style="color: #ffffff">GST(cgst&amp;sgst):</span></strong></td>
                    <td style="width: 100px; height: 49px">
                        <asp:TextBox ID="txttax2" runat="server" ReadOnly="True" Width="180px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 392px">
                        <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;SERVICE
                            CHARGE :</span></strong></td>
                    <td style="width: 283px">
                        <asp:TextBox ID="txtcharge2" runat="server" Width="180px"></asp:TextBox></td>
                    <td style="width: 142px">
                        <strong><span style="color: #ffffff">CESS :</span></strong></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtcess2" runat="server" ReadOnly="True" Width="180px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="4" style="height: 37px">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong><span style="color: #ffffff"></span></strong>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:Button ID="btncal2" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                            Text="CALCULATE" Width="118px" Visible="False" OnClick="btncal2_Click" /></td>
                </tr>
                <tr>
                    <td colspan="4">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong><span
                            style="color: #ffffff">TOTAL AMOUNT :&nbsp;
                            <asp:TextBox ID="txtamount2" runat="server" Enabled="False" Width="180px"></asp:TextBox></span></strong></td>
                </tr>
                <tr>
                    <td colspan="4" style="height: 91px">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong><span
                            style="color: #ffffff">&nbsp;GRAND TOTAL : &nbsp;
                            <asp:TextBox ID="txtgtotal2" runat="server" Enabled="False" Width="180px">0</asp:TextBox></span></strong></td>
                </tr>
                <tr>
                    <td colspan="4">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:Button ID="btnshow" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                            Font-Size="Medium" Height="41px" Text="SHOW BILL" CssClass ="btn btn2 btn3" Width="136px" OnClick="btnshow_Click" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                        &nbsp;
                        <asp:Button ID="btnprint" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                            Font-Size="Medium" Height="41px" Text="PRINT BILL" Width="131px" CssClass ="btn btn2 btn3" OnClick="btnprint_Click" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:Button ID="btnclear" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                            Font-Size="Medium" Height="40px" Text="CANCEL" Width="126px" CssClass ="btn btn2 btn3" OnClick="btnclear_Click" /></td>
                </tr>
            </table>
        </asp:View>
        &nbsp;
    </asp:MultiView><br />
    <asp:Panel ID="Panel1" runat="server" Visible="False" Width="1010px">
        <table>
            <tr>
                <td colspan="2" style="height: 82px">
                    <span style="font-size: 24pt"><span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong><span style="color: #ffffff">******</span><span
                            style="color: #ffff99; text-decoration: underline">SERVICE BILL</span></strong></span><span
                                style="color: #ffffff"><strong>******</strong></span></span></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999"
                        BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"
                        HorizontalAlign="Center">
                        <FooterStyle BackColor="#CCCCCC" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

