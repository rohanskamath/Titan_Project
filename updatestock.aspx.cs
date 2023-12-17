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

public partial class updatestock : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        txtsearch.Focus();
        MaintainScrollPositionOnPostBack = true;
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            if (Convert.ToString(txtsearch.Text) == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!!Enter Product-Id To Search...!!!!')</script>");
            }
            else
            {
                c = new connect();
                c.cmd.CommandText = "select * from stock where product_id='" + txtsearch.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "stock");
                if (ds.Tables["stock"].Rows.Count > 0)
                {
                    txtpid.Text = Convert.ToString(ds.Tables["stock"].Rows[0].ItemArray[0]);
                    txttype.Text = Convert.ToString(ds.Tables["stock"].Rows[0].ItemArray[1]);
                    txtcat.Text = Convert.ToString(ds.Tables["stock"].Rows[0].ItemArray[2]);
                    txtbname.Text = Convert.ToString(ds.Tables["stock"].Rows[0].ItemArray[3]);
                    txtmodel.Text = Convert.ToString(ds.Tables["stock"].Rows[0].ItemArray[4]);
                    txtqty.Text = Convert.ToString(ds.Tables["stock"].Rows[0].ItemArray[5]);
                    txtwrrenty.Text = Convert.ToString(ds.Tables["stock"].Rows[0].ItemArray[6]);
                    txtprice.Text = Convert.ToString(ds.Tables["stock"].Rows[0].ItemArray[7]);
                    c.cmd.ExecuteNonQuery();
                    txtsearch.Text = "";
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Sorry!!!Product-Id Doesnot Exists...!!!!')</script>");
                    txtsearch.Text = "";
                }
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
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        if (txtqty .Text ==""||txtprice.Text  =="")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!!Enter All The Fields...!!!!!')</script>");
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "update stock set qty=@qty,price=@price where product_id='" + txtpid.Text  + "'";
                c.cmd.Parameters.Add("@qty", SqlDbType.BigInt).Value = Convert.ToInt64(txtqty.Text);
                c.cmd.Parameters.Add("@price", SqlDbType.BigInt).Value = Convert.ToInt64(txtprice.Text);
                c.cmd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Product Updated in Inventory!!!')</script>");
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
