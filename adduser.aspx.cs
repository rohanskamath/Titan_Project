using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Windows.Forms;

public partial class adduser : System.Web.UI.Page
{
    connect c;
    String name = "EMP10";

    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;
        txtpass.Focus();
        if (IsPostBack)
        {
            String pass = txtpass.Text;
            txtpass.Attributes.Add("value", pass);
        }
    }
    protected void btnreg_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            if (Convert.ToString(txtuser.Text) == "" || Convert.ToString(txtpass.Text) == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Click On New And Enter Password...!!!')</script>");
            }
            else if (txtpass .Text .Length < 6)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!Password Must have Atleast 6 Characters...!!!!')</script>");
                txtpass.Text = "";
            }
            else
            {
                c.cmd.CommandText = "insert into userlog values(@uname,@password,0,0,@status)";
                c.cmd.Parameters.Clear();
                c.cmd.Parameters.Add("@uname", SqlDbType.VarChar).Value = txtuser.Text;
                c.cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = txtpass.Text;
                c.cmd.Parameters.Add("@status", SqlDbType.VarChar).Value = "Open";
                c.cmd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Employee Account Registered!!!')</script>");
                linkreg.Visible = true;
                txtuser.Text = "";
                txtpass.Text = "";
            }
        }
        catch (Exception)
        {
            throw;
        }
        finally
        {
            c.cnn.Close();
        }
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/main.aspx");
    }
    protected void checkpass_CheckedChanged(object sender, EventArgs e)
    {
        if (checkpass.Checked == true)
        {
            txtpass.TextMode = TextBoxMode.SingleLine;
        }
        else
        {
            txtpass.TextMode = TextBoxMode.Password;
        }
    }
    protected void linkreg_Click(object sender, EventArgs e)
    {
        c = new connect();
        if (IsPostBack)
        {
            c.cmd.CommandText = "select count(uname) from userlog";
            int i = Convert.ToInt16(c.cmd.ExecuteScalar());
            i++;
            txtuser.Text = name + i.ToString();
            txtpass.Text = "";
        }
        linkreg.Visible = false;
    }
}
