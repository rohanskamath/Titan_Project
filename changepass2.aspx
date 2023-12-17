<%@ Page Language="C#" MasterPageFile="~/homepage2.master" AutoEventWireup="true" CodeFile="changepass2.aspx.cs" Inherits="changepass2" Title="Change Pasword Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table>
        <tr>
            <td colspan="2" style="height: 76px">
                <span style="font-size: 24pt; color: #ffff99">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; <span style="font-family: Copperplate Gothic Bold">&nbsp;<span
                        style="text-decoration: underline"><strong>CHANGE YOUR PASSWORD HERE!!!</strong></span></span></span></td>
        </tr>
        <tr>
            <td style="width: 431px">
                <span style="color: #ffffff"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;USERNAME :</strong></span></td>
            <td style="width: 318px">
                <asp:TextBox ID="txtuser" runat="server" Enabled="False" Width="156px" Font-Bold="True"></asp:TextBox></td>
        </tr>
    </table>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table>
                <tr>
                    <td style="width: 570px; height: 27px;">
                        <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; OLD PASSWORD :</span></strong><br />
                    </td>
                    <td style="width: 328px; height: 27px;">
                <asp:TextBox ID="txtpass" runat="server" Width="156px" ToolTip="Enter Old Password!!!" TextMode="Password"></asp:TextBox>&nbsp;
                <asp:LinkButton ID="lbtnverify" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Small" ForeColor="Yellow" Height="11px" OnClick="lbtnverify_Click" ToolTip="Click Here To Verify Old Password!!!">VERIFY</asp:LinkButton></td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
        <table>
            <tr>
                <td style="width: 568px; height: 37px">
                    <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; NEW PASSWORD :</span></strong></td>
                <td style="width: 330px; height: 37px">
                    <asp:TextBox ID="txtnp" runat="server" TextMode="Password"
                        Width="156px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 568px; height: 15px">
                    <strong><span style="color: #ffffff">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; CONFIRM PASSWORD :</span></strong><br />
                </td>
                <td style="width: 330px; height: 15px">
                    <asp:TextBox ID="txtcp" runat="server" TextMode="Password"
                        Width="156px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 568px; height: 13px">
                </td>
                <td style="width: 330px; height: 13px">
                    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                </td>
            </tr>
            <tr style="color: #000000">
                <td colspan="2" style="height: 51px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="btnsave" runat="server" CssClass="btn btn2 btn3" Font-Bold="True"
                        Font-Names="Times New Roman" Font-Size="Medium" Height="40px" OnClick="btnsave_Click"
                        Text="CHANGE" Width="127px" ToolTip="Click Here To Change Password!!!" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                    <asp:Button ID="btnback" runat="server" CssClass="btn btn2 btn3" Font-Bold="True"
                        Font-Names="Times New Roman" Font-Size="Medium" Height="40px" OnClick="btnback_Click"
                        Text="BACK" Width="124px" ToolTip="Click Here To Go Home!!!"  /></td>
            </tr>
        </table>
        </asp:View>
    </asp:MultiView><br />
    <br />
    &nbsp;<strong><span style="color: #ffffff"><br />
    </span></strong>
</asp:Content>

