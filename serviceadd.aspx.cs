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

public partial class serviceadd : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    string servicee = "SER0";

    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;
        txtbno.Focus();
    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        ddlistc.Enabled = true;
        btncheck.Visible = true;
        c = new connect();
        btncheck.Enabled = true;
        if (IsPostBack)
        {
            c.cmd.CommandText = "select count(invoice_no) from service";
            int i = Convert.ToInt16(c.cmd.ExecuteScalar());
            i++;
            txtsbillno.Text = servicee + i.ToString();
            txtsbillno.Enabled = false;
        }
        txtsbilldate.Text = DateTime.Today.ToShortDateString();
    }
    protected void btncheck_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from salesbill where bill_no='" + txtbno.Text + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "s");
            if (ds.Tables["s"].Rows.Count > 0)
            {
                txtbdate.Text = Convert.ToString(ds.Tables["s"].Rows[0].ItemArray[1]);
                txtname.Text = Convert.ToString(ds.Tables["s"].Rows[0].ItemArray[3]);
                txtcustid.Text = Convert.ToString(ds.Tables["s"].Rows[0].ItemArray[2]);
                txtphone.Text = Convert.ToString(ds.Tables["s"].Rows[0].ItemArray[5]);
                txtmail.Text = Convert.ToString(ds.Tables["s"].Rows[0].ItemArray[4]);
                txtadrs.Text = Convert.ToString(ds.Tables["s"].Rows[0].ItemArray[6]);
                txtcity.Text = Convert.ToString(ds.Tables["s"].Rows[0].ItemArray[7]);
                txtpin.Text = Convert.ToString(ds.Tables["s"].Rows[0].ItemArray[8]);
                txtstate.Text = Convert.ToString(ds.Tables["s"].Rows[0].ItemArray[9]);
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Sorry Customer Bill Doesnot Exist..!!!!')</script>");
                txtbno.Text = "";
                txtbno.Focus();
            }
            SqlDataAdapter adp1 = new SqlDataAdapter();
            c.cmd.CommandText = "select * from sales where bill_no='" + txtbno.Text + "'";
            adp1.SelectCommand = c.cmd;
            adp1.Fill(ds, "c");
            ddlistp.Items.Clear();
            ddlistp.Items.Add("-----Select-----");
            if (ds.Tables["c"].Rows.Count > 0)
            {
                for (int i = 0; i < ds.Tables["c"].Rows.Count; i++)
                {
                    ddlistp.Items.Add(ds.Tables["c"].Rows[i].ItemArray[2].ToString());
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
    protected void btnnext_Click(object sender, EventArgs e)
    {
        Session["ser"] = txtsbillno.Text;
        Response.Redirect("~/service.aspx");
    }
    protected void ddlistp_SelectedIndexChanged(object sender, EventArgs e)
    {
        c = new connect();
        if (IsPostBack)
        {
            c.cmd.CommandText = "select * from sales where product_id='" + ddlistp.SelectedItem.Text + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "b");
            if (ds.Tables["b"].Rows.Count > 0)
            {
                    txttype.Text = Convert.ToString(ds.Tables["b"].Rows[0].ItemArray[3]);
                    txtcat.Text = Convert.ToString(ds.Tables["b"].Rows[0].ItemArray[4]);
                    txtbrand.Text = Convert.ToString(ds.Tables["b"].Rows[0].ItemArray[5]);
                    txtmodel.Text = Convert.ToString(ds.Tables["b"].Rows[0].ItemArray[6]);
                    txtqty.Text = Convert.ToString(ds.Tables["b"].Rows[0].ItemArray[9]);
            }
        }
    }
    protected void ddlists_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlists.SelectedItem.Text == "Free")
        {
            btncal.Visible = true;
            txtcharge.Text = "0";
            txttax.Text = "0";
            txtcess.Text = "0";
            txtamount.Text = "0";
        }
        else if (ddlists.SelectedItem.Text == "Paid")
        {
            btncal.Visible = true;
            txtcharge.Text = "";
            txttax.Text = "14.50";
            txtcess.Text = "0.50";
            txtamount.Text = "";
        }
    }
    protected void btncal_Click(object sender, EventArgs e)
    {
        if (txtbdate.Text == "" || txtadrs.Text == "" || txtbno.Text == "" || txtbrand.Text == "" || txtcharge.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Service Detail Section..!!!!')</script>");
        }
        else if (txtcharge.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Ooops!!Enter Service Charge..!!!!')</script>");
            txtcharge.Text = "";
            txtcharge.Focus();
        }
        else if (ddlists.SelectedIndex == 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Ooops!!Select Service Type..!!!!')</script>");
        }
        else 
        {
            decimal sc, tax, cess, total, gt;
            sc = Convert.ToDecimal(txtcharge.Text);
            tax = (sc * Convert.ToDecimal(txttax.Text) / 100);
            cess = (sc * Convert.ToDecimal(txtcess.Text) / 100);
            total = sc + tax + cess;
            txtamount.Text = Convert.ToString(total);
            gt = Convert.ToDecimal(txtgtotal.Text) + Convert.ToDecimal(txtamount.Text);
            txtgtotal.Text = gt.ToString();
            txtcess.Text = Convert.ToString(cess);
            txttax.Text = Convert.ToString(tax);
            btncal.Visible = false;
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (txtbdate.Text == "" || txtadrs.Text == "" || txtbno.Text == "" || txtbrand.Text == "" || txtcharge.Text == "" || ddlists.SelectedIndex == 0 || txtsbilldate.Text == "" || txtsbillno.Text == "" || txtstate.Text == "" || txttype.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Ooops!!Enter All Fields..!!!!')</script>");
        }
        else 
        {
            try
            {
                c = new connect();
                ds = new DataSet();
                c.cmd.CommandText = "insert into service values(@invoice_no,@invoice_date,@bill_no,@bill_date,@name,@cust_id,@phone,@email,@address,@city,@pincode,@state,@product_id,@product_type,@category,@brand,@model,@qty,@service_type,@service_charge,@tax,@cess,@total_amt,@grand_total)";
                c.cmd.Parameters.Add("@invoice_no", SqlDbType.NVarChar).Value = txtsbillno.Text;
                c.cmd.Parameters.Add("@invoice_date", SqlDbType.NVarChar).Value = txtsbilldate.Text;
                c.cmd.Parameters.Add("@bill_no", SqlDbType.NVarChar).Value = txtbno.Text;
                c.cmd.Parameters.Add("@bill_date", SqlDbType.NVarChar).Value = txtbdate.Text;
                c.cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = txtname.Text;
                c.cmd.Parameters.Add("@cust_id", SqlDbType.NVarChar).Value = txtcustid.Text;
                c.cmd.Parameters.Add("@phone", SqlDbType.BigInt).Value = txtphone.Text;
                c.cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = txtmail.Text;
                c.cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = txtadrs.Text;
                c.cmd.Parameters.Add("@city", SqlDbType.NVarChar).Value = txtcity.Text;
                c.cmd.Parameters.Add("@pincode", SqlDbType.BigInt).Value = txtpin.Text;
                c.cmd.Parameters.Add("@state", SqlDbType.NVarChar).Value = txtstate.Text;
                c.cmd.Parameters.Add("@product_id", SqlDbType.NVarChar).Value = ddlistp.SelectedItem.Text;
                c.cmd.Parameters.Add("@product_type", SqlDbType.NVarChar).Value = txttype.Text;
                c.cmd.Parameters.Add("@category", SqlDbType.NVarChar).Value = txtcat.Text;
                c.cmd.Parameters.Add("@brand", SqlDbType.NVarChar).Value = txtbrand.Text;
                c.cmd.Parameters.Add("@model", SqlDbType.NVarChar).Value = txtmodel.Text;
                c.cmd.Parameters.Add("@qty", SqlDbType.BigInt).Value = txtqty.Text;
                c.cmd.Parameters.Add("@service_type", SqlDbType.NVarChar).Value = ddlists.SelectedItem.Text;
                c.cmd.Parameters.Add("@service_charge", SqlDbType.Decimal).Value = Convert.ToDecimal(txtcharge.Text);
                c.cmd.Parameters.Add("@tax", SqlDbType.Decimal).Value = Convert.ToDecimal(txttax.Text);
                c.cmd.Parameters.Add("@cess", SqlDbType.Decimal).Value = Convert.ToDecimal(txtcess.Text);
                c.cmd.Parameters.Add("@total_amt", SqlDbType.Decimal).Value = Convert.ToDecimal(txtamount.Text);
                c.cmd.Parameters.Add("@grand_total", SqlDbType.Decimal).Value = Convert.ToDecimal(txtgtotal.Text);
                c.cmd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Service Bill Generated..!!!!')</script>");
                c.cmd.CommandText = "select * from service where invoice_no='" + txtsbillno.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "p");
                if (ds.Tables["p"].Rows.Count > 0)
                {
                    Panel1.Visible = true;
                    GridView1.DataSource = ds.Tables["p"];
                    GridView1.DataBind();
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
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtadrs.Text = "";
        txtamount.Text = "";
        txtbdate.Text = "";
        txtbno.Text = "";
        txtbrand.Text = "";
        txtcat.Text = "";
        txtcess.Text = "";
        txtcharge.Text = "";
        txtcity.Text = "";
        txtcustid.Text = "";
        txtmail.Text = "";
        txtmodel.Text = "";
        txtname.Text = "";
        txtphone.Text = "";
        txtpin.Text = "";
        txtqty.Text = "";
        txtsbilldate.Text = "";
        txtsbillno.Text = "";
        txtstate.Text = "";
        txttax.Text = "";
        txttype.Text = "";
        txtgtotal.Text = "0";
        Panel1.Visible = false;
        ddlistc.SelectedIndex = 0;
        ddlistp.SelectedIndex = 0;
        ddlists.SelectedIndex = 0;
    }
    protected void txtbno_TextChanged(object sender, EventArgs e)
    {
        txtbno.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToUpper(this.txtbno.Text);
    }
    protected void txtname2_TextChanged(object sender, EventArgs e)
    {
       txtname2.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(this.txtname2.Text);
    }
    protected void txtcity2_TextChanged(object sender, EventArgs e)
    {
        txtcity2.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(this.txtcity2.Text);
    }
    protected void txtstate2_TextChanged(object sender, EventArgs e)
    {
        txtstate2.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(this.txtstate2.Text);
    }
    protected void txtcat2_TextChanged(object sender, EventArgs e)
    {
        txtcat2.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(this.txtcat2.Text);
    }
    protected void txtbrand2_TextChanged(object sender, EventArgs e)
    {
        txtbrand2.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(this.txtbrand2.Text);
    }
    protected void ddlistc_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlistc.SelectedIndex == 1)
        {
            MultiView1.ActiveViewIndex = 0;
        }
        else if (ddlistc.SelectedIndex == 2)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Enter The Details Of Service Customer..!!!!')</script>");
            txtname2.Focus();
            MultiView1.ActiveViewIndex = 1;
            txtcustid2.Text = "NO CUST-ID";
            txtpid2.Text = "No Product-Id";
            txttype2.Text = "Watches";
            txtmodel2.Text = "Not Present";
            txtbno2.Text = "Service Only";
            txtbdate2.Text = "No Date";
        }
        else
        {
            MultiView1.Visible = false;
        }
    }
    protected void ddlists2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlists2.SelectedItem.Text == "Free")
        {
            btncal2.Visible = true;
            txtcharge.Text = "0";
            txttax2.Text = "0";
            txtcess2.Text = "0";
            txtamount2.Text = "0";
        }
        else if (ddlists2.SelectedItem.Text == "Paid")
        {
            btncal2.Visible = true;
            txtcharge2.Text = "";
            txttax2.Text = "14.50";
            txtcess2.Text = "0.50";
            txtamount2.Text = "";
        }
    }
    protected void btncal2_Click(object sender, EventArgs e)
    {
        if (txtbdate2.Text == "" || txtadrs2.Text == "" || txtbno2.Text == "" || txtbrand2.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Service Detail Section..!!!!')</script>");
        }
        else if (txtcharge2.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Ooops!!Enter Service Charge..!!!!')</script>");
            txtcharge2.Text = "";
            txtcharge2.Focus();
        }
        else if (ddlists2.SelectedIndex == 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Ooops!!Select Service Type..!!!!')</script>");
        }
        else 
        {
            decimal sc, tax, cess, total, gt;
            sc = Convert.ToDecimal(txtcharge2.Text);
            tax = (sc * Convert.ToDecimal(txttax2.Text) / 100);
            cess = (sc * Convert.ToDecimal(txtcess2.Text) / 100);
            total = sc + tax + cess;
            txtamount2.Text = Convert.ToString(total);
            gt = Convert.ToDecimal(txtgtotal2.Text) + Convert.ToDecimal(txtamount2.Text);
            txtgtotal2.Text = gt.ToString();
            txtcess2.Text = Convert.ToString(cess);
            txttax2.Text = Convert.ToString(tax);
            btncal2.Visible = false;
        }
    }
    protected void btnshow_Click(object sender, EventArgs e)
    {
        if (txtbdate2.Text == "" || txtadrs2.Text == "" || txtbno2.Text == "" || txtbrand2.Text == "" || txtcharge2.Text == "" || ddlists2.SelectedIndex == 0 || txtsbilldate.Text == "" || txtsbillno.Text == "" || txtstate2.Text == "" || txttype2.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Ooops!!Enter All Fields..!!!!')</script>");
        }
        else
        {
            try
            {
                c = new connect();
                ds = new DataSet();
                c.cmd.CommandText = "insert into service values(@invoice_no,@invoice_date,@bill_no,@bill_date,@name,@cust_id,@phone,@email,@address,@city,@pincode,@state,@product_id,@product_type,@category,@brand,@model,@qty,@service_type,@service_charge,@tax,@cess,@total_amt,@grand_total)";
                c.cmd.Parameters.Add("@invoice_no", SqlDbType.NVarChar).Value = txtsbillno.Text;
                c.cmd.Parameters.Add("@invoice_date", SqlDbType.NVarChar).Value = txtsbilldate.Text;
                c.cmd.Parameters.Add("@bill_no", SqlDbType.NVarChar).Value = txtbno2.Text;
                c.cmd.Parameters.Add("@bill_date", SqlDbType.NVarChar).Value = txtbdate2.Text;
                c.cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = txtname2.Text;
                c.cmd.Parameters.Add("@cust_id", SqlDbType.NVarChar).Value = txtcustid2.Text;
                c.cmd.Parameters.Add("@phone", SqlDbType.BigInt).Value = txtphone2.Text;
                c.cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = txtmail2.Text;
                c.cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = txtadrs2.Text;
                c.cmd.Parameters.Add("@city", SqlDbType.NVarChar).Value = txtcity2.Text;
                c.cmd.Parameters.Add("@pincode", SqlDbType.BigInt).Value = txtpin2.Text;
                c.cmd.Parameters.Add("@state", SqlDbType.NVarChar).Value = txtstate2.Text;
                c.cmd.Parameters.Add("@product_id", SqlDbType.NVarChar).Value = txtpid2.Text;
                c.cmd.Parameters.Add("@product_type", SqlDbType.NVarChar).Value = txttype2.Text;
                c.cmd.Parameters.Add("@category", SqlDbType.NVarChar).Value = txtcat2.Text;
                c.cmd.Parameters.Add("@brand", SqlDbType.NVarChar).Value = txtbrand2.Text;
                c.cmd.Parameters.Add("@model", SqlDbType.NVarChar).Value = txtmodel2.Text;
                c.cmd.Parameters.Add("@qty", SqlDbType.BigInt).Value = txtqty2.Text;
                c.cmd.Parameters.Add("@service_type", SqlDbType.NVarChar).Value = ddlists2.SelectedItem.Text;
                c.cmd.Parameters.Add("@service_charge", SqlDbType.Decimal).Value = Convert.ToDecimal(txtcharge2.Text);
                c.cmd.Parameters.Add("@tax", SqlDbType.Decimal).Value = Convert.ToDecimal(txttax2.Text);
                c.cmd.Parameters.Add("@cess", SqlDbType.Decimal).Value = Convert.ToDecimal(txtcess2.Text);
                c.cmd.Parameters.Add("@total_amt", SqlDbType.Decimal).Value = Convert.ToDecimal(txtamount2.Text);
                c.cmd.Parameters.Add("@grand_total", SqlDbType.Decimal).Value = Convert.ToDecimal(txtgtotal2.Text);
                c.cmd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Service Bill Generated..!!!!')</script>");
                c.cmd.CommandText = "select * from service where invoice_no='" + txtsbillno.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "p");
                if (ds.Tables["p"].Rows.Count > 0)
                {
                    Panel1.Visible = true;
                    GridView1.DataSource = ds.Tables["p"];
                    GridView1.DataBind();
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
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtadrs2.Text = "";
        txtamount2.Text = "";
        txtbdate2.Text = "";
        txtbno2.Text = "";
        txtbrand2.Text = "";
        txtcat2.Text = "";
        txtcess2.Text = "";
        txtcharge2.Text = "";
        txtcity2.Text = "";
        txtcustid2.Text = "";
        txtmail2.Text = "";
        txtmodel2.Text = "";
        txtname2.Text = "";
        txtphone2.Text = "";
        txtpin2.Text = "";
        txtqty2.Text = "";
        Panel1.Visible = false;
        txtsbilldate.Text = "";
        txtsbillno.Text = "";
        txtstate2.Text = "";
        txttax2.Text = "";
        txttype2.Text = "";
        txtgtotal2.Text = "0";
        ddlists.SelectedIndex = 0;
        ddlistc.SelectedIndex = 0;
        txtpid2.Text = "";
    }
    protected void btnprint_Click(object sender, EventArgs e)
    {
        Session["ser"] = txtsbillno.Text;
        Response.Redirect("~/service.aspx");
    }
}
