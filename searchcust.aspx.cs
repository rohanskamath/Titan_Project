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

public partial class searchcust : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        txtsearch.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        if (txtphone.Text == "" || txtsearch.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Customer Name And Contact Number...!!!!')</script>");
            Panel1.Visible = false;
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "select * from customer where name='" + txtsearch.Text + "'and phone='" + txtphone.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "s");
                if (ds.Tables["s"].Rows.Count > 0)
                {
                    GridView1.DataSource = ds.Tables["s"];
                    GridView1.DataBind();
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Sorry!!Customer Information Doesnot Exists...!!!!')</script>");
                    Panel1.Visible = false;
                    txtsearch.Text = "";
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
    protected void txtsearch_TextChanged(object sender, EventArgs e)
    {
        txtsearch.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(this.txtsearch.Text);
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtsearch.Text = "";
        txtphone.Text = "";
        Panel1.Visible = false;
    }
}
