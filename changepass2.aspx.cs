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

public partial class changepass2 : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        txtpass.Focus();
        //if (IsPostBack)
        //{
        //    String pass = txtnp.Text;
        //    txtnp.Attributes.Add("value", pass);
        //    String pass1 = txtcp.Text;
        //    txtcp.Attributes.Add("value", pass1);
        //}
        String n = (String)Session["usern"];
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from userlog where uname='" + n + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "u");
            if (ds.Tables["u"].Rows.Count > 0)
            {
                txtuser.Text = Convert.ToString(ds.Tables["u"].Rows[0].ItemArray[0]);
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
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (txtnp.Text != txtcp.Text)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('New password and Confrim password doesnot match...Enter again!!')</script>");
            MultiView1.ActiveViewIndex = 1;
            txtnp.Text = "";
            txtcp.Text = "";
        }
        else if (txtnp.Text.Length < 6)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Password must have atleast 6 characters..!!!')</script>");
            MultiView1.ActiveViewIndex = 1;
            txtcp.Text = "";
            txtnp.Text = "";
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
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Your Password Has Been Changed..!!!')</script>");
                    txtpass.Text = "";
                }
                else
                {
                    MessageBox.Show("Password not changed");
                    txtnp.Text = "";
                    txtcp.Text = "";
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
                c.cmd.CommandText = "select uname,password from userlog where uname='" + txtuser.Text + "'" + "and password='" + txtpass.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "u");
                if (ds.Tables["u"].Rows.Count > 0)
                {
                    MultiView1.ActiveViewIndex = 1;
                    txtpass.Enabled = false;
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Verification Doesnot Match..!!!')</script>");
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
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/main2.aspx");
    }
}
