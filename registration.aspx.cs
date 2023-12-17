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

public partial class registration : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        txtuser.Focus();
        if (IsPostBack)
        {
            String pass = txtpass.Text;
            String pass1 = txtcp.Text;
            txtcp.Attributes.Add("Value", pass1);
            txtpass.Attributes.Add("Value", pass);
        }
        txtuser.Text = Session["use"].ToString();
    }
    protected void btnregister_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            if (txtpass.Text != txtcp.Text)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!!Confirmation Password and Password Doesnot Match...Enter Again!!!!!')</script>");
                txtcp.Text = "";
                txtpass.Text = "";
           
            }
            else if (Convert.ToString(txtuser.Text) == "" || Convert.ToString(txtans.Text) == "" || Convert.ToString(txtcp.Text) == "" || Convert.ToString(txtans.Text) == "" || ddlist.SelectedIndex == 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!!Enter All Fields To Register User!!!!!')</script>");
            }
            else if (txtpass.Text.Length < 6)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!1Password Must have Atleast 6 Characters...!!!')</script>");
                txtpass.Text = "";
                txtcp.Text = "";
            }
            else
            {
                c = new connect();
                c.cmd.CommandText ="select * from userlog where uname='"+txtuser .Text +"'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "user");
                if (ds.Tables["user"].Rows.Count > 0)
                {
                    c.cmd.CommandText = "update userlog set password='" + txtcp.Text + "',security='" + ddlist.SelectedItem.Text + "',ans='" + txtans.Text + "'where uname='" + txtuser.Text + "'";
                    c.cmd.ExecuteNonQuery();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('User Registered!!!Click On Home Button..!!!!')</script>");
                }
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
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtans.Text = "";
        txtcp.Text = "";
        txtpass.Text = "";
        txtuser.Text = "";
        ddlist.SelectedIndex = 0;
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/userlogin.aspx");
    }
    protected void checkpass_CheckedChanged(object sender, EventArgs e)
    {
        if (checkpass.Checked == true)
        {
            txtpass.TextMode = TextBoxMode.SingleLine;
            txtcp.TextMode = TextBoxMode.SingleLine;
        }
        if (checkpass.Checked == false)
        {
            txtcp.TextMode = TextBoxMode.Password;
            txtpass.TextMode = TextBoxMode.Password;
        }
    }
    protected void txtans_TextChanged(object sender, EventArgs e)
    {
        txtans.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(this.txtans.Text);
    }
}
