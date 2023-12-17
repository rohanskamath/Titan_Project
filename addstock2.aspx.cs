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
using System.Text.RegularExpressions;

public partial class addstock2 : System.Web.UI.Page
{
    connect c;
    String stock = "PROD";

    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;
        txtqty.Focus();
    }
    protected void ddlistp_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtwarrenty.Text = this.ddlistp.SelectedValue.ToString();
    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        c = new connect();
        if (IsPostBack)
        {
            c.cmd.CommandText = "select count(product_id) from stock";
            int i = Convert.ToInt16(c.cmd.ExecuteScalar());
            i++;
            txtpid.Text = stock + i.ToString();
            txtprice.Text = "";
            txtqty.Text = "";
            txtwarrenty.Text = "";
            ddlistp.SelectedIndex = 0;
            ddlistb.SelectedIndex = 0;
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        if (txtpid.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!!Click On New Button For Product-Id...!!!!')</script>");
        }
        else if (Convert.ToString(txtqty.Text) == "" || ddlistb.SelectedIndex == 0 || ddlistp.SelectedIndex == 0||ddlistc .SelectedIndex ==0||txtprice .Text =="")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!!Enter All Fields...!!!!')</script>");
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "insert into stock values(@product_id,@product_type,@category,@brand,@model,@qty,@warrenty,@price)";
                c.cmd.Parameters.Add("@product_id", SqlDbType.NVarChar).Value = txtpid.Text;
                c.cmd.Parameters.Add("@product_type", SqlDbType.NVarChar).Value = ddlistp.SelectedItem.Text;
                c.cmd.Parameters.Add("@category", SqlDbType.NVarChar).Value = ddlistc.SelectedItem.Text;
                c.cmd.Parameters.Add("@brand", SqlDbType.NVarChar).Value = ddlistb.SelectedItem.Text;
                c.cmd.Parameters.Add("@model", SqlDbType.NVarChar).Value = txtmodel.Text;
                c.cmd.Parameters.Add("@qty", SqlDbType.BigInt).Value = Convert.ToInt64(txtqty.Text);
                c.cmd.Parameters.Add("@warrenty", SqlDbType.NVarChar).Value = txtwarrenty.Text;
                c.cmd.Parameters.Add("@price", SqlDbType.BigInt).Value = Convert.ToInt64(txtprice.Text);
                c.cmd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Product Added To Inventory...!!!!')</script>");
                txtwarrenty.Text = "";
                txtqty.Text = "";
                txtprice.Text = "";
                txtmodel.Text = "";
                txtpid.Text = "";
                ddlistb.SelectedIndex = 0;
                ddlistp.SelectedIndex = 0;
                ddlistc.SelectedIndex = 0;
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
    protected void txtqty_TextChanged(object sender, EventArgs e)
    {
        Regex qt = new Regex("^[0-9]*$");
        if (qt.IsMatch(txtqty.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('oops!!Enter only Numeric Values...!!!!')</script>");
            txtqty.Text = "";
            txtqty.Focus();
        }
    }
    protected void txtprice_TextChanged(object sender, EventArgs e)
    {
        Regex rs = new Regex("^[0-9]*$");
        if (rs.IsMatch(txtprice.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('oops!!Enter Only Numeric Values...!!!!')</script>");
            txtprice.Text = "";
            txtprice.Focus();
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtpid.Text = "";
        txtwarrenty.Text = "";
        txtqty.Text = "";
        txtprice.Text = "";
        txtpid.Text = "";
        ddlistc.SelectedIndex = 0;
        ddlistb.SelectedIndex = 0;
        ddlistp.SelectedIndex = 0;
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/main2.aspx");
    }
}
