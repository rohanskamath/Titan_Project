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
using System.Text.RegularExpressions;

public partial class purchaseorder : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp=new SqlDataAdapter ();
    string orderno = "ORDR";
    Regex r = new Regex("^[1-9][0-9]*");
    string a;

    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack =true;
        txtorderno.Focus();
        try
        {
            c = new connect();
            c.cmd.CommandText = "select sup_id,name from supplier";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "l");
            if (ds.Tables["l"].Rows.Count > 0)
            {
                txtsupid.Text = Convert.ToString(ds.Tables["l"].Rows[0].ItemArray[0]);
                txtsupname.Text = Convert.ToString(ds.Tables["l"].Rows[0].ItemArray[1]);
                txtsupname.Enabled = false;
                txtsupid.Enabled = false;
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Sorry!!Supplier Doesnot Exists...!!!!')</script>");
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
    protected void btnnew_Click(object sender, EventArgs e)
    {
        c = new connect();
        txtodate.Text = DateTime.Today.ToShortDateString();
        if (IsPostBack)
        {
            c.cmd.CommandText = "select count(order_no) from purchaseorder";
            int i = Convert.ToInt16(c.cmd.ExecuteScalar());
            i++;
            txtorderno.Text = orderno + i.ToString();
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        if (txtorderno.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>confirm('Please!!!Click On New Button For Order-Id..!!!!')</script>");
            txtorderno.Focus();
        }
        else if (ddlist1.SelectedIndex == 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!!Select Product-Id...!!!!')</script>");
        }
        else if(txtqty .Text =="")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!!Enter The Quantity To Purchase..!!!')</script>");
            txtqty.Focus();
        }
        else if (r.IsMatch(txtqty.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!!Enter Only Numeric Values...!!!!')</script>");
            txtqty.Text = "";
            txtqty.Focus();
        }
        else
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Product Id");
            dt.Columns.Add("Product Type");
            dt.Columns.Add("Category");
            dt.Columns.Add("Brand Name");
            dt.Columns.Add("Model Name");
            dt.Columns.Add("Quantity");
            DataRow dr = null;
            if (ViewState["it"] != null)
            {
                for (int i = 0; i < 1; i++)
                {
                    dt = (DataTable)ViewState["it"];
                    if (dt.Rows.Count > 0)
                    {
                        dr = dt.NewRow();
                        dr["Product Id"] = ddlist1.SelectedItem.Text;
                        dr["Product Type"] = txttype.Text;
                        dr["Category"] = txtcat.Text;
                        dr["Brand Name"] = txtbrand.Text;
                        dr["Model Name"] = txtmodel.Text;
                        dr["Quantity"] = txtqty.Text;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
            else
            {
                dr = dt.NewRow();
                dr["Product Id"] = ddlist1.SelectedItem.Text;
                dr["Product Type"] = txttype.Text;
                dr["Category"] = txtcat.Text;
                dr["Brand Name"] = txtbrand.Text;
                dr["Model Name"] = txtmodel.Text;
                dr["Quantity"] = txtqty.Text;
                dt.Rows.Add(dr);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            ViewState["it"] = dt;
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        long m;
        m = Convert.ToInt32(DateTime.Now.Month);
        switch (m)
        {
            case 1:
                a = "January";
                break;
            case 2:
                a = "February";
                break;
            case 3:
                a = "March";
                break;
            case 4:
                a = "April";
                break;
            case 5:
                a = "May";
                break;
            case 6:
                a = "June";
                break;
            case 7:
                a = "July";
                break;
            case 8:
                a = "August";
                break;
            case 9:
                a = "September";
                break;
            case 10:
                a = "October";
                break;
            case 11:
                a = "November";
                break;
            case 12:
                a = "December";
                break;
        }
        try
        {
            c = new connect();
            c.cmd.CommandText = "insert into purchaseorder values(@order_no,@order_date,@sup_id,@sup_name,@product_id,@product_type,@category,@brand,@model,@qty,@month,@year)";
            c.cmd.Parameters.Add("@order_no", SqlDbType.NVarChar).Value = txtorderno.Text;
            c.cmd.Parameters.Add("@order_date", SqlDbType.NVarChar).Value = txtodate.Text;
            c.cmd.Parameters.Add("@sup_id", SqlDbType.NVarChar).Value = txtsupid.Text;
            c.cmd.Parameters.Add("@sup_name", SqlDbType.NVarChar).Value = txtsupname.Text;
            c.cmd.Parameters.Add("@product_id", SqlDbType.NVarChar).Value = ddlist1.SelectedItem.Text;
            c.cmd.Parameters.Add("@Product_type", SqlDbType.NVarChar).Value = txttype.Text;
            c.cmd.Parameters.Add("@category", SqlDbType.NVarChar).Value = txtcat.Text;
            c.cmd.Parameters.Add("@brand", SqlDbType.NVarChar).Value = txtbrand.Text;
            c.cmd.Parameters.Add("@model", SqlDbType.NVarChar).Value = txtmodel.Text;
            c.cmd.Parameters.Add("@qty", SqlDbType.NVarChar).Value = txtqty.Text;
            c.cmd.Parameters.Add("@month", SqlDbType.NVarChar).Value = a;
            c.cmd.Parameters.Add("@year", SqlDbType.NVarChar).Value = DateTime.Now.Year;
            c.cmd.ExecuteNonQuery();
            String title = "TitanCompany.Ltd";
            MessageBoxButtons b = MessageBoxButtons.OK;
            String message = "Your Order Has Been Placed...!!!";
            MessageBoxIcon i = MessageBoxIcon.Warning;
            DialogResult r = MessageBox.Show (message, title, b, i);
            Response.Redirect("~/main.aspx");
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
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txttype.Text = "";
        txtqty.Text = "";
        txtmodel.Text = "";
        txtcat.Text = "";
        txtbrand.Text = "";
        txtodate.Text = "";
        txtorderno.Text = "";
        Panel1.Visible = false;
        ddlist1.SelectedIndex = 0;
        DataTable dt = new DataTable();
        dt.Rows.Clear();
        dt.Clear();
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void ddlist1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            ds = new DataSet();
            if (IsPostBack)
            {
                c.cmd.CommandText = "select * from stock where product_id='" + ddlist1.SelectedItem.Text + "'";
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "e");
                if (ds.Tables["e"].Rows.Count > 0)
                {
                    txttype.Text = Convert.ToString(ds.Tables["e"].Rows[0].ItemArray[1]);
                    txtcat.Text = Convert.ToString(ds.Tables["e"].Rows[0].ItemArray[2]);
                    txtbrand.Text = Convert.ToString(ds.Tables["e"].Rows[0].ItemArray[3]);
                    txtmodel.Text = Convert.ToString(ds.Tables["e"].Rows[0].ItemArray[4]);
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
    protected void GridView1_RowEditing(object sender,GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
    }

}
