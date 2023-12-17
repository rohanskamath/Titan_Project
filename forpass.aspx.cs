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

public partial class forpass : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        MaintainScrollPositionOnPostBack = true;
        txtuser.Focus();
        //if (IsPostBack)
        //{
        //    String pass = txtnp.Text;
        //    String pass1 = txtcp.Text;
        //    txtcp.Attributes.Add("Value", pass1);
        //    txtnp.Attributes.Add("Value", pass);
        //}
    }
    protected void txtuser_TextChanged(object sender, EventArgs e)
    {
        txtuser.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToUpper(this.txtuser.Text);
        if (txtuser.Text == "Admin")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Sorry!!Username Doesnot Exist...!!!!')</script>");
            txtuser.Text = "";
            txtuser.Focus();
        }
    }
    protected void linkquestion_Click(object sender, EventArgs e)
    {
        if (txtuser.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter User-id To Get The Security Question..!!!!')</script>");
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "select security from userlog where uname='" + txtuser.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "sec");
                if (ds.Tables["sec"].Rows.Count > 0)
                {
                    txtsec.Text = Convert.ToString(ds.Tables["sec"].Rows[0].ItemArray[0]);
                    txtuser.Enabled = false;
                    linkquestion.Visible = false;
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Sorry!!User-Id Doesnot Exist...!!!!')</script>");
                    txtuser.Text = "";
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
    }
    protected void btnverify_Click(object sender, EventArgs e)
    {
        if (Convert.ToString(txtans.Text) == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!!Enter Answer Field To Change Your Password...!!!!')</script>");
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "select uname,ans from userlog where uname='" + txtuser.Text + "'" + "and ans='" + txtans.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "emp");
                if (ds.Tables["emp"].Rows.Count > 0)
                {
                    MultiView1.ActiveViewIndex = 1;
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Sorry!!Verification Doesnot Match...Try Again!!!!!')</script>");
                    txtans.Text = "";
                    txtans.Focus();
                    MultiView1.ActiveViewIndex = 0;
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
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/userlogin.aspx");
    }
    protected void btnchange_Click(object sender, EventArgs e)
    {
        if (txtnp.Text != txtcp.Text)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!Confirmation Password and New Password Must be Same..!!!!')</script>");
            txtcp.Text = "";
            txtnp.Text = "";
        }
        else if (txtnp.Text.Length < 6)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!Password Must have Atleast 6 Characters...!!!')</script>");
            txtnp.Text = "";
            txtcp.Text = "";
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "select password from userlog where uname='" + txtuser.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "emp");
                if (ds.Tables["emp"].Rows.Count > 0)
                {
                    c.cmd.CommandText = "update userlog set password=@password where uname='" + txtuser.Text + "'";
                    c.cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = txtnp.Text;
                    c.cmd.ExecuteNonQuery();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Your Password Has Changed...!!!!')</script>");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Your Password Not Changed...!!!!')</script>");
                    txtcp.Text = "";
                    txtnp.Text = "";
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
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/userlogin.aspx");
    }
    //protected void checkpass_CheckedChanged(object sender, EventArgs e)
    //{
    //    if (checkpass.Checked == true)
    //    {
    //        txtnp.TextMode = TextBoxMode.SingleLine;
    //        txtcp.TextMode = TextBoxMode.SingleLine;
    //    }
    //    if (checkpass.Checked == false)
    //    {
    //        txtcp.TextMode = TextBoxMode.Password;
    //        txtnp.TextMode = TextBoxMode.Password;
    //    }
    //}
}
