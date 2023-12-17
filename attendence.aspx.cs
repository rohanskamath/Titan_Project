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

public partial class attendence : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;
        txtempid.Focus();
    }
    protected void btnok_Click(object sender, EventArgs e)
    {
        txtdesig.Enabled = false;
        if (txtempid.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Employee-Id First...!!!!')</script>");
            txtempid.Text = "";
            txtempid.Enabled = true;
        }
        else
        {
            try
            {
                btncal.Visible = true;
                c = new connect();
                c.cmd.CommandText = "select * from employee where emp_id='" + txtempid.Text + "'and status='" + "Active" + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "emp");
                if (ds.Tables["emp"].Rows.Count > 0)
                {
                    txtempid.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[0]);
                    txtdesig.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[11]);
                    DateTime g = Convert.ToDateTime(ds.Tables["emp"].Rows[0].ItemArray[12]);
                    long p = Convert.ToInt32(DateTime.Now.Month);
                    long q = Convert.ToInt32(g.Month);
                    long n = Convert.ToInt32(DateTime.Now.Year);
                    long r = Convert.ToInt32(g.Year);
                    if (n >= r)
                    {
                        if (q < p)
                        {

                            Panel1.Visible = true;
                        }
                        else if (q == p && n != r)
                        {
                            Panel1.Visible = true;
                        }
                        else
                        {
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Sorry!!!Employee Had Joined This Month!!')</script>");
                        }
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Sorry!!!System Year Not Correct!!!')</script>");
                    }
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Sorry!!Employee-Id doesnot Exists...!!!')</script>");
                    txtempid.Text = "";
                    txtempid.Enabled = true;
                    btncal.Visible = false;
                }
                txtlgiven.Text = "4";
                txtdate.Text = Convert.ToString(DateTime.Today.ToShortDateString());
                txtyear.Text = Convert.ToString(DateTime.Now.Year);
                long m;
                DateTime today = DateTime.Now.Date;
                decimal d = today.Day;
                if (d < 10)
                {
                    m = Convert.ToInt32(DateTime.Now.Month);
                    switch (m)
                    {
                        case 1:
                            txtmonth.Text = "December";
                            txttotdays.Text = "31";
                            break;
                        case 2:
                            txtmonth.Text = "January";
                            txttotdays.Text = "31";
                            break;
                        case 3:
                            txtmonth.Text = "Febrauary";
                            txttotdays.Text = "28";
                            break;
                        case 4:
                            txtmonth.Text = "March";
                            txttotdays.Text = "31";
                            break;
                        case 5:
                            txtmonth.Text = "April";
                            txttotdays.Text = "30";
                            break;
                        case 6:
                            txtmonth.Text = "May";
                            txttotdays.Text = "31";
                            break;
                        case 7:
                            txtmonth.Text = "June";
                            txttotdays.Text = "30";
                            break;
                        case 8:
                            txtmonth.Text = "July";
                            txttotdays.Text = "31";
                            break;
                        case 9:
                            txtmonth.Text = "August";
                            txttotdays.Text = "31";
                            break;
                        case 10:
                            txtmonth.Text = "September";
                            txttotdays.Text = "30";
                            break;
                        case 11:
                            txtmonth.Text = "October";
                            txttotdays.Text = "31";
                            break;
                        case 12:
                            txtmonth.Text = "November";
                            txttotdays.Text = "30";
                            break;
                    }
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Sorry!!Attendance Registration Has Been Expired..!!!')</script>");
                    txtdate.Text = "";
                    txtyear.Text = "";
                    Panel1.Visible = false;
                    btncal.Visible = false;
                }
            }
            catch (Exception)
            {
                throw;
            }
            finally 
            {
                c.cnn.Close ();
            }
        }
    }
    protected void btncal_Click(object sender, EventArgs e)
    {
        Regex epin = new Regex("^[0-9]*$");
        if (txtltaken.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please Enter Leave Taken Field!!!')</script>");
            txtltaken.Focus();
        }
        else if (epin.IsMatch(txtltaken.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('oops!!!Please Enter digits!!')</script>");
            txtltaken.Text = "";
        }
        else
        {
            c = new connect();
            btncal.Visible = false;
            double lg, lt, exleave;
            lg = Convert.ToDouble(txtlgiven.Text);
            lt = Convert.ToDouble(txtltaken.Text);
            if (lt > 4)
            {
                exleave = lt - lg;
                txtxtra.Text = Convert.ToString(exleave);
            }
            else
            {
                txtxtra.Text = "0";
            }
        }
        if(txtltaken .Text !="")
        {
            long d;
            d = Convert.ToInt32(txttotdays.Text) - Convert.ToInt32(txtltaken.Text);
            txtwdays.Text = d.ToString();
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        txtempid.Enabled = true;
        if (txtltaken.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter the Leave Taken Field And Click on Calculate Button...!!!!')</script>");
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "select count(*) from attendance where emp_id='" + txtempid.Text + "'and year='" + txtyear.Text + "'and month='" + txtmonth.Text + "'";
                int v = Convert.ToInt16(c.cmd.ExecuteScalar());
                if (v > 0)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!Attendance is Already Registed For This Month...!!!!')</script>");
                    txtempid.Text = "";
                    txtdate.Text = "";
                    txtdesig.Text = "";
                    txtlgiven.Text = "";
                    txtltaken.Text = "";
                    txtmonth.Text = "";
                    txttotdays.Text = "";
                    txtwdays.Text = "";
                    txtyear.Text = "";
                }
                else
                {
                    c.cmd.CommandText = "insert into attendance values(@emp_id,@desig,@date,@month,@year,@total_days,@leave_given,@leave_taken,@extra_leave,@no_days)";
                    c.cmd.Parameters.Add("@emp_id", SqlDbType.NVarChar).Value = txtempid.Text;
                    c.cmd.Parameters.Add("@desig", SqlDbType.NVarChar).Value = txtdesig.Text;
                    c.cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = txtdate.Text;
                    c.cmd.Parameters.Add("@month", SqlDbType.NVarChar).Value = txtmonth.Text;
                    c.cmd.Parameters.Add("@year", SqlDbType.NVarChar).Value = txtyear.Text;
                    c.cmd.Parameters.Add("@total_days", SqlDbType.NVarChar).Value = txttotdays.Text;
                    c.cmd.Parameters.Add("@leave_given", SqlDbType.NVarChar).Value = txtlgiven.Text;                    
                    c.cmd.Parameters.Add("@leave_taken", SqlDbType.NVarChar).Value = txtltaken.Text;
                    c.cmd.Parameters.Add("@extra_leave", SqlDbType.NVarChar).Value = txtxtra.Text;
                    c.cmd.Parameters.Add("@no_days", SqlDbType.NVarChar).Value = txtwdays.Text;
                    c.cmd.ExecuteNonQuery();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('This Employees Attendance Has Been Registered...!!!!')</script>");
                    txtempid.Text = "";
                    txtempid.Enabled = true;
                    Panel1.Visible = false;
                    txtdate.Text = "";
                    txtdesig.Text = "";
                    txtlgiven.Text = "";
                    txtltaken.Text = "";
                    txtmonth.Text = "";
                    txttotdays.Text = "";
                    txtwdays.Text = "";
                    txtyear.Text = "";
                    txtxtra.Text = "";
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
        Panel1.Visible = false;
        txtempid.Enabled = true;
        txtempid.Text = "";
        txtdate.Text = "";
        txtdesig.Text = "";
        txtlgiven.Text = "";
        txtltaken.Text = "";
        txtmonth.Text = "";
        txttotdays.Text = "";
        txtwdays.Text = "";
        txtyear.Text = "";
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/main.aspx");
    }
    protected void txtempid_TextChanged(object sender, EventArgs e)
    {
        txtempid.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToUpper(this.txtempid.Text);
    }
}
