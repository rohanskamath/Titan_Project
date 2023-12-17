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

public partial class changepass : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        MaintainScrollPositionOnPostBack = true;
        txtpass.Focus();
        //if (IsPostBack)
        //{
        //    String pass = txtnp.Text;
        //    txtnp.Attributes.Add("value", pass);
        //    String pass1 = txtcp.Text;
        //    txtcp.Attributes.Add("value", pass1);
        //}
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if(txtnp .Text ==""||txtcp .Text=="")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter All The Fields To Change Your Password...!!!!')</script>");
            MultiView1.ActiveViewIndex = 1;
            txtnp.Focus();
        }
        else if (txtcp.Text != txtnp.Text )
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Sorry!!Confirmation Password and New Password Must be Same...!!!!')</script>");
            MultiView1.ActiveViewIndex = 1;
            txtnp.Text = "";
            txtcp.Text = "";
        }
        else if (txtnp.Text.Length < 6)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!Password Must have Atleast 6 Characters...!!!!')</script>");
            MultiView1.ActiveViewIndex = 1;
            txtnp.Text = "";
            txtcp.Text = "";
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "insert into adlog values(@uname,@password,@npassword,@cpassword)";
                c.cmd.Parameters.Add("@uname", SqlDbType.VarChar).Value = txtuser.Text;
                c.cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = txtpass.Text;
                c.cmd.Parameters.Add("@npassword", SqlDbType.VarChar).Value = txtnp.Text;
                c.cmd.Parameters.Add("@cpassword", SqlDbType.VarChar).Value = txtcp.Text;
                c.cmd.CommandText = "update adlog set password=@cpassword,@npassword=@npassword,cpassword=@cpassword where uname='" + txtuser.Text + "'";
                c.cmd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Your Password Changed...!!!!')</script>");
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
        Response.Redirect("~/main.aspx");
    }
    protected void lbtnverify_Click(object sender, EventArgs e)
    { 
        txtnp.Focus();
        if (txtpass.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Enter the Old password to verify..!!!')</script>");
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "select uname,password from adlog where uname='" + txtuser.Text + "'" + "and password='" + txtpass.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "u");
                if (ds.Tables["u"].Rows.Count > 0)
                {
                    MultiView1.ActiveViewIndex = 1;
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Verification Doesnot Match..!!!')</script>");
                    MultiView1.ActiveViewIndex = 0;
                    txtpass.Focus();
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
    //protected void checkpass_CheckedChanged(object sender, EventArgs e)
    //{
    //    if (checkpass.Checked == true)
    //    {
    //        txtnp.TextMode = TextBoxMode.SingleLine;
    //        txtcp.TextMode = TextBoxMode.SingleLine;
    //    }
    //    else
    //    {
    //        txtnp.TextMode = TextBoxMode.Password;
    //        txtcp.TextMode = TextBoxMode.Password;
    //    }
    //}
}
