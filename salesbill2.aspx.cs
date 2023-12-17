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

public partial class salesbill2 : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataTable dt = new DataTable();
    string bill = "SBNO";
    decimal tot;
    string a;

    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;
        if ((String)Session["nextpur"] == "yes")
        {
            txtbillno.Text = (String)Session["billno"];
            txtbdate.Text = (String)Session["billdate"];
        }
        txtbdate.Text = DateTime.Today.ToShortDateString();
    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        Button1.Visible = true;
        c = new connect();
        txtsno.Text = "1";
        txtbdate.Text = DateTime.Today.ToShortDateString();
        if(IsPostBack )
        {
            c.cmd.CommandText = "select count(bill_no) from salesbill";
            int i = Convert.ToInt16(c.cmd.ExecuteScalar());
            i++;
            txtbillno.Text = bill + i.ToString();
            Session["billno"] = txtbillno.Text.ToString();
            txtadrs.Text = "";
            txtphone.Text = "";
            txtname.Text = "";
            txtmodel.Text = "";
            txtmail.Text = "";
            txtamt.Text = "";
            txtbrand.Text = "";
            txtcat.Text = "";
            txtcustid.Text = "";
            txtdis.Text = "";
            txtgst.Text = "";
            txtpin.Text = "";
            txtqty.Text = "";
            txtprice.Text = "";
            txtwarrenty.Text = "";
            txttype.Text = "";
            txttot.Text = "";
            txtstate.Text = "";
            ddlistp.SelectedIndex = 0;
            Panel1.Visible = false;
            Panel2.Visible = false; 
        }
        txtbdate.Text = DateTime.Today.ToShortDateString();
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        txtbdate.Text = DateTime.Today.ToShortDateString();
        btncal.Enabled = true;
        btnsave.Enabled = false;
        Panel1.Visible = true;
        btncal.Enabled = true;
        btnsave.Enabled = false;
        c = new connect();
        c.cmd.CommandText = "select qty,price from sales where bill_no='" + txtbillno.Text + "'";
        ds = new DataSet();
        adp.SelectCommand = c.cmd;
        adp.Fill(ds, "s");
        if (ds.Tables["s"].Rows.Count > 0)
        {
            for (int i = 0; i < ds.Tables["s"].Rows.Count; i++)
            {
                tot = tot + ((Convert.ToDecimal(ds.Tables["s"].Rows[i].ItemArray[0])) * (Convert.ToDecimal(ds.Tables["s"].Rows[i].ItemArray[1])));

            }
            txtamt.Text = Convert.ToString(tot);
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        txtbdate.Text = DateTime.Today.ToShortDateString();
        btncal.Enabled = false;
        c = new connect();
        double q, qty1, qty2;
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
            if (txtphone.Text == "" || txtname.Text == "" || txtadrs.Text == "" || txtcity.Text == "" || txtmail.Text == "" || txtcat.Text == "")
            {
                
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please...Enter All The Fields..!!!')</script>");
            }
            else
            {
                c = new connect();
                c.cmd.CommandText = "insert into sales values(@bill_no,@slno,@product_id,@product_type,@category,@brand,@model_no,@warrenty,@price,@qty,@month,@year)";
                c.cmd.Parameters.Add("@bill_no", SqlDbType.NVarChar).Value = txtbillno.Text;
                c.cmd.Parameters.Add("@slno", SqlDbType.NVarChar).Value = txtsno.Text;
                c.cmd.Parameters.Add("@product_id", SqlDbType.NVarChar).Value = ddlistp.SelectedItem.Text;
                c.cmd.Parameters.Add("@product_type", SqlDbType.NVarChar).Value = txttype.Text;
                c.cmd.Parameters.Add("@category", SqlDbType.NVarChar).Value = txtcat.Text;
                c.cmd.Parameters.Add("@brand", SqlDbType.NVarChar).Value = txtbrand.Text;
                c.cmd.Parameters.Add("@model_no", SqlDbType.NVarChar).Value = txtmodel.Text;
                c.cmd.Parameters.Add("@warrenty", SqlDbType.NVarChar).Value = txtwarrenty.Text;
                c.cmd.Parameters.Add("@price", SqlDbType.BigInt).Value = Convert.ToInt64(txtprice.Text);
                c.cmd.Parameters.Add("@qty", SqlDbType.BigInt).Value = Convert.ToInt64(txtqty.Text);
                c.cmd.Parameters.Add("@month", SqlDbType.NVarChar).Value = a;
                c.cmd.Parameters.Add("@year", SqlDbType.NVarChar).Value = DateTime.Now.Year;
                c.cmd.ExecuteNonQuery();
                String title = "World Of Titan";
                MessageBoxButtons b = MessageBoxButtons.YesNo;
                MessageBoxIcon i = MessageBoxIcon.Question;
                String message = "Product Added To List!!!!Do You Want To Purchase Another Product????";
                DialogResult r = MessageBox.Show(message, title, b, i);
                if (r == DialogResult.Yes)
                {
                    Session["nextpur"] = "yes";
                    btnadd.Visible = false;
                }
                else
                {
                    btnsave.Visible = false;
                    btnadd.Visible = true;
                }
                int s = Convert.ToInt16(txtsno.Text);
                s = s + 1;
                txtsno.Text = Convert.ToString(s);               
                ds = new DataSet();
                c.cmd.CommandText = "select qty from stock where product_id='" + ddlistp.SelectedItem.Text + "'";
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "st");
                if (ds.Tables["st"].Rows.Count > 0)
                {
                    qty1 = Convert.ToDouble(ds.Tables["st"].Rows[0].ItemArray[0]);
                    qty2 = Convert.ToDouble(txtqty.Text);
                    q = qty1 - qty2;
                    c.cmd.CommandText = "update stock set qty=@qt where product_id='" + ddlistp.SelectedItem.Text + "'";
                    c.cmd.Parameters.Add("@qt", SqlDbType.BigInt).Value = Convert.ToInt64(q);
                    c.cmd.ExecuteNonQuery();
                    txtqty.Text = "";
                    txtmodel.Text = "";
                    txtprice.Text = "";
                    txttype.Text = "";
                    ddlistp.SelectedIndex = 0;
                    txtwarrenty.Text = "";
                    txtcat.Text = "";
                    txtbrand.Text = "";
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
    protected void ddlistp_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtbdate.Text = DateTime.Today.ToShortDateString();
        try
        {
            c = new connect();
            ds = new DataSet();
            if (IsPostBack)
            {
                c.cmd.CommandText = "select * from stock where product_id='" + ddlistp.SelectedItem.Text + "'";
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "stk");
                if (ds.Tables["stk"].Rows.Count > 0)
                {
                    txttype.Text = Convert.ToString(ds.Tables["stk"].Rows[0].ItemArray[1]);
                    txtcat.Text = Convert.ToString(ds.Tables["stk"].Rows[0].ItemArray[2]);
                    txtbrand.Text = Convert.ToString(ds.Tables["stk"].Rows[0].ItemArray[3]);
                    txtmodel.Text = Convert.ToString(ds.Tables["stk"].Rows[0].ItemArray[4]);
                    txtwarrenty.Text = Convert.ToString(ds.Tables["stk"].Rows[0].ItemArray[6]);
                    txtprice.Text = Convert.ToString(ds.Tables["stk"].Rows[0].ItemArray[7]);
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
        c = new connect();
        SqlDataAdapter adp1 = new SqlDataAdapter();
        DataTable dt = new DataTable();
        int qty1, qty2;
        c.cmd.CommandText = "select qty from stock where product_id='" + ddlistp.SelectedItem.Text + "'";
        adp1.SelectCommand = c.cmd;
        adp1.Fill(dt);
        qty1=Convert .ToInt16 (dt.Rows [0].ItemArray [0]);
        if(txtqty .Text =="")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Enter the Quantity...!!!')</script>");
        }
        else if(txtqty.Text  =="0")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Enter the Quantity!!!')</script>");
        }
        else 
        {
            qty2 = Convert.ToInt16(txtqty.Text);
            if(qty1<qty2)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Entered Quantity Must be Greater than Stock "+qty1+" Product in Stock!!!')</script>");
                txtqty .Text ="";
                txtqty .Focus ();
            }
        }
    }
    protected void btncal_Click(object sender, EventArgs e)
    {
        double dis, gd;

        if (txtdis.Text.Length < 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Discount..!!!')</script>");
        }
        else if (Convert.ToDouble(txtdis.Text) < 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Only Positive Value..!!!')</script>");
        }
        else if (txtdis.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Discount..!!!')</script>");
        }
        else
        {
            btncal.Visible = false;
            lblper.Text = Convert.ToString(txtdis.Text);
            dis = Convert.ToDouble(txtamt.Text) * (Convert.ToDouble(txtdis.Text) / 100);
            txtdis.Text = dis.ToString();
            gd = Convert.ToDouble(txtamt.Text) - Convert.ToDouble(txtdis.Text);
            if (gd < 0)
            {
                gd = -(gd);
                txttot.Text = gd.ToString();
            }
            else
            {
                txttot.Text = gd.ToString();
            }
            Double gst = (18 * gd) / 118;
            txtgst.Text = Convert.ToString(gst);
        }
    }
    protected void btnbill_Click(object sender, EventArgs e)
    {
        if (txtphone.Text.Length <= 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!!Enter Customers Phone Number...!!')</script>");
            txtphone.Text = "";
            txtphone.Focus();
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "insert into salesbill values(@bill_no,@bill_date,@cust_id,@name,@mail,@phone,@address,@city,@pincode,@state,@total_amt,@gst,@discount,@grandtotal)";
                c.cmd.Parameters.Add("@bill_no", SqlDbType.NVarChar).Value = txtbillno.Text;
                c.cmd.Parameters.Add("@bill_date", SqlDbType.NVarChar).Value = txtbdate.Text;
                c.cmd.Parameters.Add("@cust_id", SqlDbType.NVarChar).Value = txtcustid.Text;
                c.cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = txtname.Text;
                c.cmd.Parameters.Add("@mail", SqlDbType.NVarChar).Value = txtmail.Text;
                c.cmd.Parameters.Add("@phone", SqlDbType.BigInt).Value = Convert.ToInt64(txtphone.Text);
                c.cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = txtadrs.Text;
                c.cmd.Parameters.Add("@city", SqlDbType.NVarChar ).Value = txtcity.Text;
                c.cmd.Parameters.Add("@pincode", SqlDbType.BigInt ).Value = Convert.ToInt64(txtpin.Text);
                c.cmd.Parameters.Add("@state", SqlDbType.NVarChar ).Value = txtstate.Text;
                c.cmd.Parameters.Add("@total_amt", SqlDbType.Decimal).Value = Convert.ToDecimal(txtamt.Text);
                c.cmd.Parameters.Add("@gst", SqlDbType.Decimal ).Value = Convert.ToDecimal(txtgst.Text);
                c.cmd.Parameters.Add("@discount", SqlDbType.Decimal ).Value = Convert.ToDecimal(txtdis.Text);
                c.cmd.Parameters.Add("@grandtotal", SqlDbType.Decimal ).Value = Convert.ToDecimal(txttot.Text);
                c.cmd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Customer Bill Generated Sucessfully')</script>");
                c.cmd.CommandText = "select * from salesbill where bill_no='" + txtbillno.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "p");
                if (ds.Tables["p"].Rows.Count > 0)
                {
                    Panel2.Visible = true;
                    GridView1.DataSource = ds.Tables["p"];
                    GridView1.DataBind();
                }
                txtamt.Text = "";
                txtdis.Text = "";
                lblper.Text = "0";
                txtgst.Text = "";
                txttot.Text = "";
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
        Response.Redirect("~/main2.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        txtbdate.Text = DateTime.Today.ToShortDateString();
        if (txtphone.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Customer Phone Number!!!')</script>");
            txtphone.Focus();
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "select * from customer where phone='" + txtphone.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "c");
                if (ds.Tables["c"].Rows.Count > 0)
                {
                    txtcustid.Text = Convert.ToString(ds.Tables["c"].Rows[0].ItemArray[0]);
                    txtname.Text = Convert.ToString(ds.Tables["c"].Rows[0].ItemArray[1]);
                    txtmail.Text = Convert.ToString(ds.Tables["c"].Rows[0].ItemArray[4]);
                    txtadrs.Text = Convert.ToString(ds.Tables["c"].Rows[0].ItemArray[6]);
                    txtcity.Text = Convert.ToString(ds.Tables["c"].Rows[0].ItemArray[7]);
                    txtpin.Text = Convert.ToString(ds.Tables["c"].Rows[0].ItemArray[8]);
                    txtstate.Text = Convert.ToString(ds.Tables["c"].Rows[0].ItemArray[9]);
                }
                else
                {
                    String title = "World Of Titan";
                    MessageBoxButtons b = MessageBoxButtons.YesNo;
                    String message = "This Customer Doesnot Exists!!!! Do You Want To Add New Customer????";
                    MessageBoxIcon i = MessageBoxIcon.Question;
                    DialogResult r = MessageBox.Show(message, title, b,i);
                    if (r == DialogResult.Yes)
                    {
                        Session["nextpur"] = "yes";
                        Response.Redirect("~/custadd2.aspx");
                    }
                    else
                    {
                        txtphone.Text = "";
                        Button1.Visible = true;
                    }
                }
                Button1.Visible = false;
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
    protected void btnshow_Click(object sender, EventArgs e)
    {
        Session["d"] = txtbillno.Text;
        Response.Redirect("~/sbill2.aspx");
    }
}
