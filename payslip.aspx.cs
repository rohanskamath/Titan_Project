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

public partial class payslip : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;
    string payslp = "PAYID10";

    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;
        txtsearch.Focus();
    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        btngive.Visible = true;
        c = new connect();
        if (IsPostBack)
        {
            c.cmd.CommandText = "select count(payslip_id)from payslip";
            int i = Convert.ToInt16(c.cmd.ExecuteScalar());
            i++;
            txtsearch.Text = payslp + i.ToString();
            txtadrs.Text = "";
            txtda.Text = "";
            txtdesig.Text = "";
            txtltaken.Text = "";
            txtfname.Text = "";
            txtlname.Text = "";
            txtpf.Text = "";
            txtphone.Text = "";
            txtsal.Text = "";
            txthra.Text = "";
            txtextra.Text = "";
            txttdays.Text = "";
            txtsalde.Text = "";
            txtyear.Text = "";
            txtdate.Text = "";
            txtworked.Text = "";
            txttdays.Text = "";
            ddlistmonth.SelectedIndex = 0;
            txttotsal.Text = "";
        }
    }
    protected void btngive_Click(object sender, EventArgs e)
    {
        if (txtempid.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter EMployee-Id For Payslip...!!!!')</script>");
            txtempid.Focus();
        }
        else
        {
            try
            {
                btngive.Visible = false;
                c = new connect();
                c.cmd.CommandText = "select * from employee where emp_id='" + txtempid.Text + "'and status='" + "Active" + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "emp");
                if (ds.Tables["emp"].Rows.Count > 0)
                {
                    txtempid.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[0]);
                    txtfname.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[1]);
                    txtlname.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[2]);
                    txtdesig.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[11]);
                    txtphone.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[10]);
                    txtadrs.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[5]);
                    txtsal.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[13]);
                    txtda.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[14]);
                    txthra.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[15]);
                    txtpf.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[16]);
                    txtyear.Text = Convert.ToString(DateTime.Now.Year);
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Sorry!!!Enter Employee-Id Doesnot Exists..!!!')</script>");
                    btngive.Visible = true;
                    txtempid.Text = "";
                    txtempid.Focus();
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
    protected void btngen_Click(object sender, EventArgs e)
    {
        if (txtpf .Text ==""||txtltaken .Text ==""||txtlname .Text ==""||txtempid .Text =="")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter All Fields..!!!')</script>");
        }
        else if(ddlistmonth .SelectedIndex ==0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Select Month..!!!!')</script>");
        }
        else 
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "select count(*) from payslip where emp_id='" + txtempid.Text + "'and year='" + txtyear.Text + "'and month='" + ddlistmonth.SelectedItem.Text  + "'";
                int v = Convert.ToInt16(c.cmd.ExecuteScalar());
                if (v > 0)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!This Employee Payslip is Already Generated For This Month...!!!!')</script>");
                    ddlistmonth.SelectedIndex = 0;
                    ddlistmonth.Focus();
                    txtextra.Text = "";
                    txtltaken.Text = "";
                    txtdate.Text = "";
                    txtworked.Text = "";
                    txttdays.Text = "";
                    txtextra.Text = "";
                }
                else
                {
                    c = new connect();
                    long totsal, da, hra, pf, lt, xleave, deduct = 0, days, fsal, n = 0;
                    lt = Convert.ToInt64(txtltaken.Text);
                    xleave = Convert.ToInt64(txtextra.Text);
                    da = Convert.ToInt64(txtda.Text);
                    hra = Convert.ToInt64(txthra.Text);
                    pf = Convert.ToInt64(txtpf.Text);
                    days = Convert.ToInt64(txttdays.Text);
                    totsal = Convert.ToInt64(txtsal.Text) + da + hra - pf;
                    n = totsal / days;
                    deduct = xleave * n;
                    fsal = totsal - deduct;
                    txttotsal.Text = Convert.ToString(fsal);
                    txtsalde.Text = Convert.ToString(deduct);
                    c.cmd.CommandText = "insert into payslip values(@payslip_id,@emp_id,@fname,@lname,@desig,@phone,@address,@leave_taken,@date,@month,@year,@basic,@da,@hra,@pf,@total_salary)";
                    c.cmd.Parameters.Add("@payslip_id", SqlDbType.NVarChar).Value = txtsearch.Text;
                    c.cmd.Parameters.Add("@emp_id", SqlDbType.NVarChar).Value = txtempid.Text;
                    c.cmd.Parameters.Add("@fname", SqlDbType.NVarChar).Value = txtfname.Text;
                    c.cmd.Parameters.Add("@lname", SqlDbType.NVarChar).Value = txtlname.Text;
                    c.cmd.Parameters.Add("@desig", SqlDbType.NVarChar).Value = txtdesig.Text;
                    c.cmd.Parameters.Add("@phone", SqlDbType.BigInt).Value = Convert.ToInt64(txtphone.Text);
                    c.cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = txtadrs.Text;
                    c.cmd.Parameters.Add("@leave_taken", SqlDbType.NVarChar).Value = txtltaken.Text;
                    c.cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = txtdate.Text;
                    c.cmd.Parameters.Add("@month", SqlDbType.NVarChar).Value = ddlistmonth.SelectedItem.Text;
                    c.cmd.Parameters.Add("@year", SqlDbType.NVarChar).Value = txtyear.Text;
                    c.cmd.Parameters.Add("@basic", SqlDbType.BigInt).Value = Convert.ToInt64(txtsal.Text);
                    c.cmd.Parameters.Add("@da", SqlDbType.Decimal).Value = Convert.ToDecimal(txtda.Text);
                    c.cmd.Parameters.Add("@hra", SqlDbType.Decimal).Value = Convert.ToDecimal(txthra.Text);
                    c.cmd.Parameters.Add("@pf", SqlDbType.Decimal).Value = Convert.ToDecimal(txtpf.Text);
                    c.cmd.Parameters.Add("@total_salary", SqlDbType.Decimal).Value = Convert.ToDecimal(txttotsal.Text);
                    c.cmd.ExecuteNonQuery();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Employee Payslip Generated Sucessfully!!!')</script>");
                    btnreset.Enabled = true;
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
    protected void btnreset_Click(object sender, EventArgs e)
    {
        Session["p"] = txtsearch.Text;
        Response.Redirect("~/pay.aspx");
    }
    protected void ddlistmonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            ds = new DataSet();
            if (IsPostBack)
            {
                c.cmd.CommandText = "select * from attendance where emp_id='" + txtempid.Text + "'and month='"+ddlistmonth .SelectedItem .Text +"'and year='"+txtyear .Text +"'";
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "e");
                if (ds.Tables["e"].Rows.Count > 0)
                {
                    txtdate.Text = Convert.ToString(ds.Tables["e"].Rows[0].ItemArray[2]);
                    txtworked.Text = Convert.ToString(ds.Tables["e"].Rows[0].ItemArray[9]);
                    txtltaken.Text = Convert.ToString(ds.Tables["e"].Rows[0].ItemArray[7]);
                    txttdays.Text = Convert.ToString(ds.Tables["e"].Rows[0].ItemArray[5]);
                    txtextra.Text = Convert.ToString(ds.Tables["e"].Rows[0].ItemArray[8]);
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Attendance not Registered Yet..!!!')</script>");
                    txtadrs.Text = "";
                    txtda.Text = "";
                    txtdesig.Text = "";
                    txtempid.Text = "";
                    txtfname.Text = "";
                    txtlname.Text = "";
                    txtpf.Text = "";
                    txtphone.Text = "";
                    txtltaken.Text = "";
                    txtsal.Text = "";
                    txthra.Text = "";
                    txtextra.Text = "";
                    txttdays.Text = "";
                    txtsalde.Text = "";
                    txtyear.Text = "";
                    txtdate.Text = "";
                    txtworked.Text = "";
                    txttdays.Text = "";
                    ddlistmonth.SelectedIndex = 0;
                    txtsearch.Text = "";
                    txttotsal.Text = "";
                    txtempid.Focus();
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
    protected void txtempid_TextChanged(object sender, EventArgs e)
    {
        txtempid.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToUpper(this.txtempid.Text);
    }
}
