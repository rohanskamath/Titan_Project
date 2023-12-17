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

public partial class purchasereturn : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;
    string returnid = "PRT";
    int qty1, qty2;

    protected void Page_Load(object sender, EventArgs e)
    {
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
                txtcity.Text = Convert.ToString(ds.Tables["sup"].Rows[0].ItemArray[5]);
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
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (ddlist1.SelectedIndex == 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Select Product-id...!!!!')</script>");
        }
        else
        {
            try
            {
                if (Convert.ToString(txtbillno.Text) == "" || Convert.ToString(txtbdate.Text) == "" || Convert.ToString(txtmodel.Text) == "" || Convert.ToString(txtqty.Text) == "" || Convert.ToString(txtrdate.Text) == "" || Convert.ToString(txtreturnid.Text) == "" || Convert.ToString(txttype.Text) == "")
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('oops!!Enter All The Fields...!!!!')</script>");
                }
                else
                {
                    c = new connect();
                    c.cmd.CommandText = "insert into purchasereturn values(@return_no,@return_date,@bill_no,@bill_date,@sup_id,@sup_name,@address,@city,@state,@product_id,@product_type,@brand,@model,@qty)";
                    c.cmd.Parameters.Add("@return_no", SqlDbType.NVarChar).Value = txtreturnid.Text;
                    c.cmd.Parameters.Add("@return_date", SqlDbType.NVarChar).Value = txtrdate.Text;
                    c.cmd.Parameters.Add("@bill_no", SqlDbType.NVarChar).Value = txtbillno.Text;
                    c.cmd.Parameters.Add("@bill_date", SqlDbType.NVarChar).Value = txtbdate.Text;
                    c.cmd.Parameters.Add("@sup_id", SqlDbType.NVarChar).Value = txtsupid.Text;
                    c.cmd.Parameters.Add("@sup_name", SqlDbType.NVarChar).Value = txtsupname.Text;
                    c.cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = txtadrs.Text;
                    c.cmd.Parameters.Add("@city", SqlDbType.NVarChar).Value = txtcity.Text;
                    c.cmd.Parameters.Add("@state", SqlDbType.NVarChar).Value = txtstate.Text;
                    c.cmd.Parameters.Add("@product_id", SqlDbType.NVarChar).Value = ddlist1.SelectedItem.Text;
                    c.cmd.Parameters.Add("@product_type", SqlDbType.NVarChar).Value = txttype.Text;
                    c.cmd.Parameters.Add("@brand", SqlDbType.NVarChar).Value = txtbrand.Text;
                    c.cmd.Parameters.Add("@model", SqlDbType.NVarChar).Value = txtmodel.Text;
                    c.cmd.Parameters.Add("@qty", SqlDbType.NVarChar).Value = txtqty.Text;
                    c.cmd.ExecuteNonQuery();
                    c.cmd.CommandText = "select qty from purchaseorder where product_id='" + ddlist1.SelectedItem.Text + "'";
                    adp.SelectCommand = c.cmd;
                    ds = new DataSet();
                    adp.Fill(ds, "od");
                    if (ds.Tables["od"].Rows.Count >= 0)
                    {
                        int q1 = Convert.ToInt16(ds.Tables["od"].Rows[0].ItemArray[0]);
                        int q2 = q1 - Convert.ToInt16(txtqty.Text);
                        c.cmd.CommandText = "update purchaseorder set qty=@q where product_id='" + ddlist1.SelectedItem.Text + "'";
                        c.cmd.Parameters.Add("@q", SqlDbType.BigInt).Value = q2;
                        c.cmd.ExecuteNonQuery();
                    }
                    c.cmd.CommandText = "select qty from stock where product_id='" + ddlist1.SelectedItem.Text + "'";
                    adp.SelectCommand = c.cmd;
                    ds = new DataSet();
                    adp.Fill(ds, "stk");
                    if (ds.Tables["stk"].Rows.Count > 0)
                    {
                        qty1 = Convert.ToInt16(ds.Tables["stk"].Rows[0].ItemArray[0]);
                        qty2 = qty1 - Convert.ToInt16(txtqty.Text);
                        c.cmd.CommandText = "update stock set qty=@qt where product_id='" + ddlist1.SelectedItem.Text + "'";
                        c.cmd.Parameters.Add("@qt", SqlDbType.BigInt).Value = qty2;
                        c.cmd.ExecuteNonQuery();
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Product Returned Sucessfully....!!!!')</script>");
                        btncheck.Visible = false;
                        txtbrand.Text = "";
                        txtmodel.Text = "";
                        txtqty.Text = "";
                        txttype.Text = "";
                        ddlist1.SelectedIndex = 0;
                        txtreturnid.Text = "";
                        txtrdate.Text = "";
                        txtbillno.Text = "";
                        txtbdate.Text = "";
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        btncheck.Visible = true;
        c = new connect();
        txtrdate.Text = DateTime.Now.ToShortDateString();
        if (IsPostBack)
        {
            c.cmd.CommandText = "select count(return_no) from purchasereturn";
            int i = Convert.ToInt16(c.cmd.ExecuteScalar());
            i++;
            txtreturnid.Text = returnid + i.ToString();
        }
    }
    protected void btndisp_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from purchasereturn";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "ret");
            if (ds.Tables["ret"].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables["ret"];
                GridView1.DataBind();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('NO Records Found...!!!')</script>");
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
    protected void btnreset_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Rows.Clear();
        dt.Clear();
        GridView1.DataSource = dt;
        GridView1.DataBind();
        txtrdate.Text = "";
        txtreturnid.Text = "";
        txtqty.Text = "";
        txtbdate.Text = "";
        txtbillno.Text = "";
        txtmodel.Text = "";
        txttype.Text = "";
        txtbrand.Text = "";
        txtbdate.Text = "";
        ddlist1.SelectedIndex = 0;
        btncheck.Visible = false;
    }
    protected void btncheck_Click(object sender, EventArgs e)
    {
        c = new connect();
        if (txtbillno.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Invoice Number To Check...!!!!')</script>");
            txtbillno.Focus();
        }
        else
        {
            try
            {
                c = new connect();
                ds = new DataSet();
                if (IsPostBack)
                {
                    c.cmd.CommandText = "select * from purchasebill where bill_no='" + txtbillno.Text + "'";
                    adp.SelectCommand = c.cmd;
                    adp.Fill(ds, "s");
                    ddlist1.Items.Clear();
                    ddlist1.Items.Add("-----Select-----");
                    int i;
                    if (ds.Tables["s"].Rows.Count > 0)
                    {
                        for (i = 0; i < ds.Tables["s"].Rows.Count; i++)
                        {
                            ddlist1.Items.Add(ds.Tables["s"].Rows[i].ItemArray[8].ToString());
                        }
                        txtbdate.Text = Convert.ToString(ds.Tables["s"].Rows[0].ItemArray[1]);
                        btncheck.Visible = false;
                    }
                    else
                    {

                        Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Sorry!!Invoice Doesnot Exist...!!!!')</script>");
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
    protected void ddlist1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            ds = new DataSet();
            c.cmd.CommandText = "select * from purchasebill where product_id='" + ddlist1.SelectedItem.Text + "'";
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "p");
            if (ds.Tables["p"].Rows.Count > 0)
            {
                txttype.Text = Convert.ToString(ds.Tables["p"].Rows[0].ItemArray[9]);
                txtbrand.Text = Convert.ToString(ds.Tables["p"].Rows[0].ItemArray[11]);
                txtmodel.Text = Convert.ToString(ds.Tables["p"].Rows[0].ItemArray[12]);
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('oops!!Product-Id Doesnot Exists...!!!!')</script>");
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
        if (txtqty.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please Enter Quantity To Return....!!!!')</script>");
        }
        else
        {
            c = new connect();
            DataTable dt = new DataTable();
            int qt, qt1;
            c.cmd.CommandText = "select qty from purchaseorder where product_id='" + ddlist1.SelectedItem.Text + "'";
            adp.SelectCommand = c.cmd;
            dt.Clear();
            adp.Fill(dt);
            qt = Convert.ToInt16(dt.Rows[0].ItemArray[0]);
            qt1 = Convert.ToInt16(txtqty.Text);
            if (qt < qt1)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!!Item Returning qty should be less then purchased..!!!!')</script>");
                txtqty.Text = "";
                txtqty.Focus();
            }
        }
    }
    protected void txtbillno_TextChanged(object sender, EventArgs e)
    {
        txtbillno.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToUpper(this.txtbillno.Text);
    }
}
    
