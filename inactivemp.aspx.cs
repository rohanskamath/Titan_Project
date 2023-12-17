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

public partial class inactivemp : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp=new SqlDataAdapter ();

    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;
        txtempid.Focus();
    }
    protected void btnrem_Click(object sender, EventArgs e)
    {
        if (txtempid.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Employee-Id To Resign...!!!!')</script>");
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "select * from employee where emp_id='" + txtempid.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "user");
                if (ds.Tables["user"].Rows.Count > 0)
                {
                    c.cmd.CommandText = "update employee set status=@status where emp_id='" + txtempid.Text + "'";
                    c.cmd.Parameters.Add("@status", SqlDbType.VarChar).Value = "Inactive";
                    c.cmd.ExecuteNonQuery();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Employee Resigned...!!!')</script>");
                    txtempid.Text = "";
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Sorry!!!Employee-Id Doesnot Exists...!!!!')</script>");
                    txtempid.Text = "";
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
    protected void txtempid_TextChanged(object sender, EventArgs e)
    {
        txtempid.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToUpper(this.txtempid.Text);
    }
}
