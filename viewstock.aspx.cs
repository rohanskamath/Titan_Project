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

public partial class viewstock : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (ddlist1.SelectedItem.Text == "WATCHES")
        {
            GridView1.Visible = true;
            try
            {
                c = new connect();
                c.cmd.CommandText = "select * from stock where product_type='WATCHES'";
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
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!No Records Found..!!!')</script>");
                    GridView1.Visible = false;
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
        else if (ddlist1.SelectedItem.Text == "WALLETS")
        {
            GridView1.Visible = true;
            try
            {
                c = new connect();
                c.cmd.CommandText = "select * from stock where product_type='WALLETS'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "st");
                if (ds.Tables["st"].Rows.Count > 0)
                {
                    GridView1.DataSource = ds.Tables["st"];
                    GridView1.DataBind();
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!No Records Found..!!!')</script>");
                    GridView1.Visible = false;
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
        else if (ddlist1.SelectedItem.Text == "BELTS")
        {
            GridView1.Visible = true;
            try
            {
                c = new connect();
                c.cmd.CommandText = "select * from stock where product_type='BELTS'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "sto");
                if (ds.Tables["sto"].Rows.Count > 0)
                {
                    GridView1.DataSource = ds.Tables["sto"];
                    GridView1.DataBind();
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!No Records Found..!!!')</script>");
                    GridView1.Visible = false;
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
        else if (ddlist1.SelectedItem.Text == "GOGGLES")
        {
            GridView1.Visible = true;
            try
            {
                c = new connect();
                c.cmd.CommandText = "select * from stock where product_type='GOGGLES'";
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
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!No Records Found..!!!')</script>");
                    GridView1.Visible = false;
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
        else
        {
            GridView1.Visible = false;
        }
    }
}
