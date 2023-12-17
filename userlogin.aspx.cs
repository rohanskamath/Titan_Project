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

public partial class userlogin : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;
    static int count = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        txtemp.Focus();
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (txtemp.Text == "" || txtpass.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter User-Id and Password To Login...!!!!!')</script>");
            txtemp.Focus();
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "select * from userlog where uname='" + txtemp.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "user");
                String uname, pas, status, qstn;
                if (ds.Tables["user"].Rows.Count > 0)
                {
                    uname = ds.Tables["user"].Rows[0].ItemArray[0].ToString();
                    pas = ds.Tables["user"].Rows[0].ItemArray[1].ToString();
                    qstn = ds.Tables["user"].Rows[0].ItemArray[2].ToString();
                    status = ds.Tables["user"].Rows[0].ItemArray[4].ToString();
                    if (uname == txtemp.Text && pas == txtpass.Text && qstn == "0")
                    {
                        Session["use"] = uname;
                        Response.Redirect("~/registration.aspx");
                    }
                    if (status == "Open")
                    {
                        if (uname == txtemp.Text && pas == txtpass.Text)
                        {
                            Session["usern"] = uname;
                            Response.Redirect("~/main2.aspx");
                            count = 0;
                        }
                        else
                        {
                            String title = "World Of Titan";
                            MessageBoxButtons b = MessageBoxButtons.OK;
                            MessageBoxIcon i = MessageBoxIcon.Error;
                            String message = "Invalid User-Id or Password - Relogin with Correct User-Id and Password:- No. of Attempts Remaining: " + (2 - count);
                            DialogResult r = MessageBox.Show(message, title, b, i);
                            txtpass.Text = "";
                            count = count + 1;
                        }
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Your Account is Locked Already:Contact Administrator!!')</script>");
                    }
                    if (count == 3)
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oopps!!!!Your Account Has Been Locked Due To Three Invalid Attempts-Contact Administrator..!!')</script>");
                        setlockstatus(txtemp.Text);
                        count = 0;
                    }
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Sorry!!User-Id/Employee-Id Doesnot Exist..!!!!')</script>");
                    txtemp.Text = "";
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
    }
    private void setlockstatus(String username1)
    {
        c = new connect();
        c.cmd.CommandText = "Update userlog set status='Locked' where uname='" + username1 + "'";
        c.cmd.ExecuteNonQuery();
    }

    protected void btnhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/welcome.aspx");
    }
    protected void linkreg_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/registration.aspx");
    }
    protected void linkforpas_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/forpass.aspx");
    }
    protected void txtemp_TextChanged(object sender, EventArgs e)
    {
        txtemp.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToUpper(this.txtemp.Text);
    }
}
