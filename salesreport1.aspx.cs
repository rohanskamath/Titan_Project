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

public partial class salesreport1 : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;
    }
    protected void btnview_Click(object sender, EventArgs e)
    {
        if (ddlistm.SelectedIndex == 0 || ddlisty.SelectedIndex == 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!!Select Month and Year...!!!')</script>");
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "select bill_no from sales where month='" + ddlistm.SelectedItem.Text + "' and year='" + ddlisty.SelectedItem.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "sales");
                if (ds.Tables["sales"].Rows.Count > 0)
                {
                    Session["m"] = ddlistm.SelectedItem.Text;
                    Session["y"] = ddlisty.SelectedItem.Text;
                    Response.Redirect("~/salesreport2.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!No Records Found..!!!')</script>");
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
}