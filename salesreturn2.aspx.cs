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

public partial class salesreturn2 : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataTable dt = new DataTable();
    string returnn = "RTNO";

    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;
        txtbno.Focus();
        btnsave.Enabled = true;
    }
    protected void lcheck_Click(object sender, EventArgs e)
    {
        lcheck.Visible = false;
        btnsave.Enabled = true;
        Regex rtn = new Regex("^[0-9]*$");
        c = new connect();
        int qt1, qt2;
        if (txtqtyr.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please..Enter Returning Quantity..!!')</script>");
            txtqtyr.Focus();
            lcheck.Visible = true ;
        }
        else if (rtn.IsMatch(txtqtyr.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Enter Only Numeric Type..!!')</script>");
            txtqtyr.Text = "";
            txtqtyr.Focus();
            lcheck.Visible = true;
        }
        else
        {
            qt1 = Convert.ToInt16(txtqtyo.Text);
            qt2 = Convert.ToInt16(txtqtyr.Text);
            if (qt1 < qt2)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Sorry!!You Cannot Return Product More Than What You Have Purchased..!!')</script>");
                txtqtyr.Text = "";
                txtqtyr.Focus();
                lcheck.Visible = true ;
            }
        }
    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        btncheck.Visible = true;
        c = new connect();
        if (IsPostBack)
        {
            c.cmd.CommandText = "select count(return_id) from salesreturn";
            int i = Convert.ToInt16(c.cmd.ExecuteScalar());
            i++;
            txtrno.Text = returnn + i.ToString();
            txtrno.Enabled = false;
            GridView1.Visible = false;
        }
        txtrdate.Text = DateTime.Today.ToShortDateString();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (txtbno.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please..Enter the Bill Number..!!!')</script>");
            txtbno.Focus();
        }
        else if (ddlistp.SelectedIndex == 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please Select the Product-Id to Return..!!')</script>");
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "insert into salesreturn values(@return_id,@return_date,@bill_no,@bill_date,@product_id,@product_type,@category,@brand,@model_no,@qty_ordered,@qty_returned)";
                c.cmd.Parameters.Add("@return_id", SqlDbType.NVarChar).Value = txtrno.Text;
                c.cmd.Parameters.Add("@return_date", SqlDbType.NVarChar).Value = txtrdate.Text;
                c.cmd.Parameters.Add("@bill_no", SqlDbType.NVarChar).Value = txtbno.Text;
                c.cmd.Parameters.Add("@bill_date", SqlDbType.NVarChar).Value = txtbdate.Text;
                c.cmd.Parameters.Add("@product_id", SqlDbType.NVarChar).Value = ddlistp.SelectedItem.Text;
                c.cmd.Parameters.Add("@product_type", SqlDbType.NVarChar).Value = txttype.Text;
                c.cmd.Parameters.Add("@category", SqlDbType.NVarChar).Value = txtcat.Text;
                c.cmd.Parameters.Add("@brand", SqlDbType.NVarChar).Value = txtbrand.Text;
                c.cmd.Parameters.Add("@model_no", SqlDbType.NVarChar).Value = txtmodel.Text;
                c.cmd.Parameters.Add("@qty_ordered", SqlDbType.NVarChar).Value = txtqtyo.Text;
                c.cmd.Parameters.Add("@qty_returned", SqlDbType.NVarChar).Value = txtqtyr.Text;
                c.cmd.ExecuteNonQuery();
                c.cmd.CommandText = "select qty from stock where product_id='" + ddlistp.SelectedItem.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(dt);
                int qty1 = Convert.ToInt16(dt.Rows[0].ItemArray[0]);
                int qty2 = qty1 + Convert.ToInt16(txtqtyr.Text);
                c.cmd.CommandText = "update stock set qty=@q where product_id='" + ddlistp.SelectedItem.Text + "'";
                c.cmd.Parameters.Add("@q", SqlDbType.BigInt).Value = qty2;
                c.cmd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>('Purchsed Item Returned..!!')</script>");
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
    protected void btnnext_Click(object sender, EventArgs e)
    {
        c = new connect();
        if (IsPostBack)
        {
            c.cmd.CommandText = "select count(return_id) from salesreturn";
            int i = Convert.ToInt16(c.cmd.ExecuteScalar());
            i++;
            txtrno.Text = returnn + i.ToString();
            txtrno.Enabled = false;
            txtqtyr.Text = "";
            txtbdate.Text = "";
            txtbno.Text = "";
            txtbrand.Text = "";
            txtcat.Text = "";
            txtmodel.Text = "";
            txtqtyo.Text = "";
            GridView1.Visible = false;
            txttype.Text = "";
            ddlistp.SelectedIndex = 0;

        }
        txtrdate.Text = DateTime.Today.ToShortDateString();
    }
    protected void ddlistp_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            ds = new DataSet();
            if (IsPostBack)
            {
                c.cmd.CommandText = "select * from sales where product_id='" + ddlistp.SelectedItem.Text + "'";
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "e");
                if (ds.Tables["e"].Rows.Count > 0)
                {
                    txttype.Text = Convert.ToString(ds.Tables["e"].Rows[0].ItemArray[3]);
                    txtcat.Text = Convert.ToString(ds.Tables["e"].Rows[0].ItemArray[4]);
                    txtbrand.Text = Convert.ToString(ds.Tables["e"].Rows[0].ItemArray[5]);
                    txtmodel.Text = Convert.ToString(ds.Tables["e"].Rows[0].ItemArray[6]);
                    txtqtyo.Text = Convert.ToString(ds.Tables["e"].Rows[0].ItemArray[9]);
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
    protected void btncancel_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from salesreturn";
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
    protected void btncheck_Click(object sender, EventArgs e)
    {
        if (txtbno.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Bill Number To Return..!!')</script>");
            txtbno.Focus();
        }
        else
        {
            try
            {
                btncheck.Visible = false;
                lcheck.Visible = true;
                c = new connect();
                ds = new DataSet();
                if (IsPostBack)
                {
                    c.cmd.CommandText = "select * from sales where bill_no='" + txtbno.Text + "'";
                    adp.SelectCommand = c.cmd;
                    adp.Fill(ds, "p");
                    int i;
                    ddlistp.Items.Clear();
                    ddlistp.Items.Add("-----Select-----");
                    if (ds.Tables["p"].Rows.Count > 0)
                    {
                        for (i = 0; i < ds.Tables["p"].Rows.Count; i++)
                        {
                            ddlistp.Items.Add(ds.Tables["p"].Rows[i].ItemArray[2].ToString());
                        }
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Bill Number Doesnot Exists..!!')</script>");
                        txtbno.Text = "";
                        btncheck.Visible = true;
                        txtbno.Focus();
                    }
                    txtbdate.Text = DateTime.Today.ToShortDateString();
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
    protected void txtbno_TextChanged(object sender, EventArgs e)
    {
        txtbno.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToUpper(this.txtbno.Text);
    }
}
