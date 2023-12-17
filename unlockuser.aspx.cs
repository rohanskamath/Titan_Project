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
using System.Windows.Forms;
using System.Data.SqlClient;

public partial class unlockuser : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        txtuser.Focus();
    }
    protected void btnunlock_Click(object sender, EventArgs e)
    {
        if (txtuser.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter User-Id to unlock....!!!!')</script>");
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "select * from userlog where uname='" + txtuser.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "user");
                if (ds.Tables["user"].Rows.Count > 0)
                {
                    c.cmd.CommandText = "update userlog set status=@status where uname='" + txtuser.Text + "'";
                    c.cmd.Parameters.Add("@status", SqlDbType.VarChar).Value = "Open";
                    c.cmd.ExecuteNonQuery();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('This User-Id is Unlocked...!!!!')</script>");;
                    txtuser.Text = "";
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Sorry!!!User-Id Doesnot Exists...!!!!')</script>");
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
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/main.aspx");
    }
    protected void txtuser_TextChanged(object sender, EventArgs e)
    {
        txtuser.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToUpper(this.txtuser.Text);
    }
}
