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

public partial class purchasereturn : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    SqlDataAdapter adp1 = new SqlDataAdapter();
    DataTable dt = new DataTable();
    string billno = "BILLNO";
    string a;

    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;
        txtbillno.Focus();
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from supplier";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "sup");
            if (ds.Tables["sup"].Rows.Count > 0)
            {
                txtsupid.Text = Convert.ToString(ds.Tables["sup"].Rows[0].ItemArray[0]);
                txtsupname.Text = Convert.ToString(ds.Tables["sup"].Rows[0].ItemArray[1]);
                txtadrs.Text = Convert.ToString(ds.Tables["sup"].Rows[0].ItemArray[4]);
                txtstate.Text = Convert.ToString(ds.Tables["sup"].Rows[0].ItemArray[7]);
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
        txtbdate.Text = DateTime.Today.ToShortDateString();
        if (IsPostBack)
        {
            c.cmd.CommandText = "select count(bill_no) from purchasebill";
            int i = Convert.ToInt16(c.cmd.ExecuteScalar());
            i++;
            txtbillno.Text = billno + i.ToString();
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (ddlist2.SelectedIndex == 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Select Order-Number...!!!!')</script>");
        }
        else
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
                if (Convert.ToString(txtbillno.Text) == "" || Convert.ToString(txtbrand.Text) == "" || Convert.ToString(txtbdate.Text) == "" || Convert.ToString(txtcat.Text) == "" || Convert.ToString(txtmodel.Text) == "" || Convert.ToString(txtpdate.Text) == "" || Convert.ToString(txtprice.Text) == "" || Convert.ToString(txtqty.Text) == "")
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('oops!!Enter All The Fields...!!!!')</script>");
                }
                else
                {
                    c = new connect();
                    c.cmd.CommandText = "select count(*) from purchasebill where order_no='" + ddlist2.SelectedItem.Text + "'and order_date='" + txtpdate.Text + "'";
                    int v = Convert.ToInt16(c.cmd.ExecuteScalar());
                    if (v > 0)
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!This Order Bill Is Already Submitted...!!!!')</script>");
                    }
                    else
                    {
                        c = new connect();
                        c.cmd.CommandText = "insert into purchasebill values(@bill_no,@bill_date,@order_no,@order_date,@sup_id,@sup_name,@address,@state,@product_id,@product_type,@category,@brand,@model,@qty,@price,@total_amt,@grandtotal,@month,@year)";
                        c.cmd.Parameters.Add("@bill_no", SqlDbType.NVarChar).Value = txtbillno.Text;
                        c.cmd.Parameters.Add("@bill_date", SqlDbType.NVarChar).Value = txtbdate.Text;
                        c.cmd.Parameters.Add("@order_no", SqlDbType.NVarChar).Value = ddlist2.SelectedItem.Text;
                        c.cmd.Parameters.Add("@order_date", SqlDbType.NVarChar).Value = txtpdate.Text;
                        c.cmd.Parameters.Add("@sup_id", SqlDbType.NVarChar).Value = txtsupid.Text;
                        c.cmd.Parameters.Add("@sup_name", SqlDbType.NVarChar).Value = txtsupname.Text;
                        c.cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = txtadrs.Text;
                        c.cmd.Parameters.Add("@state", SqlDbType.NVarChar).Value = txtstate.Text;
                        c.cmd.Parameters.Add("@product_id", SqlDbType.NVarChar).Value = txtpid.Text;
                        c.cmd.Parameters.Add("product_type", SqlDbType.NVarChar).Value = txttype.Text;
                        c.cmd.Parameters.Add("@category", SqlDbType.NVarChar).Value = txtcat.Text;
                        c.cmd.Parameters.Add("@brand", SqlDbType.NVarChar).Value = txtbrand.Text;
                        c.cmd.Parameters.Add("@model", SqlDbType.NVarChar).Value = txtmodel.Text;
                        c.cmd.Parameters.Add("@qty", SqlDbType.BigInt).Value = txtqty.Text;
                        c.cmd.Parameters.Add("@price", SqlDbType.BigInt).Value = txtprice.Text;
                        c.cmd.Parameters.Add("@total_amt", SqlDbType.BigInt).Value = txttot.Text;
                        c.cmd.Parameters.Add("@grandtotal", SqlDbType.BigInt).Value = txtgtot.Text;
                        c.cmd.Parameters.Add("@month", SqlDbType.NVarChar).Value = a;
                        c.cmd.Parameters.Add("@year", SqlDbType.NVarChar).Value = DateTime.Now.Year;
                        c.cmd.ExecuteNonQuery();
                        c.cmd.CommandText = "select qty from stock where product_id='" + txtpid.Text + "'";
                        adp1.SelectCommand = c.cmd;
                        adp1.Fill(dt);
                        int qty = Convert.ToInt16(dt.Rows[0].ItemArray[0]);
                        int qty2 = qty + Convert.ToInt16(txtqty.Text);
                        c.cmd.CommandText = "update stock set qty=@qt where product_id='" + txtpid.Text + "'";
                        c.cmd.Parameters.Add("@qt", SqlDbType.BigInt).Value = qty2;
                        c.cmd.ExecuteNonQuery();
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Invoice Submitted...!!!!')</script>");
                        txtqty.Text = "";
                        txtprice.Text = "";
                        txtpdate.Text = "";
                        txtmodel.Text = "";
                        txtcat.Text = "";
                        txtbrand.Text = "";
                        txtbillno.Text = "";
                        txtbdate.Text = "";
                        txttot.Text = "";
                        txttype.Text = "";
                        txtgtot.Text = "0";
                        txtpid.Text = "";
                        ddlist2.SelectedIndex = 0;
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
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtqty.Text = "";
        txtprice.Text = "";
        txtpdate.Text = "";
        txtmodel.Text = "";
        txtcat.Text = "";
        txtbrand.Text = "";
        txtbillno.Text = "";
        txtbdate.Text = "";
        txtgtot.Text = "0";
        GridView1.Visible = false;
        txttot.Text = "";
        txttype.Text = "";
        txtpid.Text = "";
        ddlist2.SelectedIndex = 0;
    }
    protected void ddlist2_SelectedIndexChanged(object sender, EventArgs e)
    {
        btncal.Visible = true;
        try
        {
            c = new connect();
            ds = new DataSet();
            if (IsPostBack)
            {
                c.cmd.CommandText = "select * from purchaseorder where order_no='" + ddlist2.SelectedItem.Text + "'";
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "po");
                if (ds.Tables["po"].Rows.Count > 0)
                {

                    txtpdate.Text = Convert.ToString(ds.Tables["po"].Rows[0].ItemArray[1]);
                    txtpid.Text = Convert.ToString(ds.Tables["po"].Rows[0].ItemArray[4]);
                    txttype.Text = Convert.ToString(ds.Tables["po"].Rows[0].ItemArray[5]);
                    txtcat.Text = Convert.ToString(ds.Tables["po"].Rows[0].ItemArray[6]);
                    txtbrand.Text = Convert.ToString(ds.Tables["po"].Rows[0].ItemArray[7]);
                    txtmodel.Text = Convert.ToString(ds.Tables["po"].Rows[0].ItemArray[8]);
                    txtqty.Text = Convert.ToString(ds.Tables["po"].Rows[0].ItemArray[9]);
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
    protected void txtqty_TextChanged(object sender, EventArgs e)
    {
        Regex sal = new Regex("^[0-9]*$");
        if (sal.IsMatch(txtqty.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!!Enter Only Numeric Values...!!!!')</script>");
            txtqty.Text = "";
            txtqty.Focus();
        }
    }
    protected void btncal_Click(object sender, EventArgs e)
    {
        Regex sa = new Regex("^[0-9]*$");
        if(txtprice .Text ==""|| txtqty .Text =="")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!!Enter Numeric Values First...!!!!')</script>");
            txtprice .Focus ();
        }
        else if (sa.IsMatch(txtprice.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!!Enter Only Numeric Values...!!!!')</script>");
            txtprice.Focus();
            txtprice.Text = "";
        }
        else
        {
            decimal q, p, tp, gt;
            p = Convert.ToDecimal(txtprice.Text);
            q = Convert.ToDecimal(txtqty.Text);
            tp = p * q;
            txttot.Text = Convert.ToString(tp);
            gt = Convert.ToDecimal(txtgtot.Text) + Convert.ToDecimal(txttot.Text);
            txtgtot.Text = gt.ToString();
            btncal.Visible = false;
        }
    }
    protected void btndisp_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from purchasebill";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "p");
            if (ds.Tables["p"].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables["p"];
                GridView1.DataBind();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('oops!!No Records Found.!!')</script>");
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
