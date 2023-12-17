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

public partial class reorderitems : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from stock where qty<3";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "s");
            if (ds.Tables["s"].Rows.Count > 0)
            {
                Panel1.Visible = true;
                GridView1.DataSource = ds.Tables["s"];
                GridView1.DataBind();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Sorry!!!No Products has Reached Its Reorder-Level!!!!!')</script>");
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
    protected void linkpur_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/purchaseorder.aspx");
    }
    protected void btnhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/main.aspx");
    }
}
