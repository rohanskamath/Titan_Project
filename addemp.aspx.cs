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
using System.Text;
using System.Threading;

public partial class addemp : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;
    String employee = "EMP10";

    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;
        txtfname.Focus();
    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        btncal.Visible = true;
        btnfind.Visible = true;
        txtdoj.Text = DateTime.Now.ToShortDateString();
        c = new connect();
        if (IsPostBack)
        {
            c.cmd.CommandText = "select count(emp_id) from employee";
            int i = Convert.ToInt16(c.cmd.ExecuteScalar());
            i++;
            txtempid.Text = employee + i.ToString();
            txtfname.Text = "";
            txtpin.Text = "";
            txtadrs.Text = "";
            txtbasic.Text = "";
            txtcity.Text = "";
            txtda.Text = "";
            ddlist.SelectedIndex = 0;
            rbtnmale.Checked = false;
            rbtnfemale.Checked = false;
            txtstate.Text = "";
            txtdob.Text = "";
            txthra.Text = "";
            txtlname.Text = "";
            txtmail.Text = "";
            txtpf.Text = "";
            txtphone1.Text = "";
        }

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            if (Convert.ToString(txtfname.Text) == "" || Convert.ToString(txtlname.Text) == "" || Convert.ToString(txtadrs.Text) == "" || Convert.ToString(txtbasic.Text) == "" || Convert.ToString(txtcity.Text) == "" || Convert.ToString(txtda.Text) == "" || ddlist .SelectedIndex  == 0 || Convert.ToString(txtdob.Text) == "" || Convert.ToString(txtdoj.Text) == "" || Convert.ToString(txthra.Text) == "" || Convert.ToString(txtlname.Text) == "" || Convert.ToString(txtmail.Text) == "" || Convert.ToString(txtpf.Text) == "" || Convert.ToString(txtphone1.Text) == "" || Convert.ToString(txtpin.Text) == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('oops!!Enter All The Fields...!!!!')</script>");
                btncal.Visible = true;
                btnfind.Visible = true;
            }
            else 
            {
                c = new connect();
                c.cmd.CommandText = "select * from employee where phone='" + txtphone1.Text + "'or email='" + txtmail.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "e");
                if (ds.Tables["e"].Rows.Count == 0)
                {
                    c.cmd.CommandText = "insert into employee values(@emp_id,@fname,@lname,@dob,@gender,@address,@city,@pincode,@state,@email,@phone,@desig,@doj,@basic,@da,@hra,@pf,@status)";
                    c.cmd.Parameters.Clear();
                    c.cmd.Parameters.Add("@emp_id", SqlDbType.NVarChar).Value = txtempid.Text;
                    c.cmd.Parameters.Add("@fname", SqlDbType.NVarChar).Value = txtfname.Text;
                    c.cmd.Parameters.Add("@lname", SqlDbType.NVarChar).Value = txtlname.Text;
                    c.cmd.Parameters.Add("@dob", SqlDbType.DateTime).Value = txtdob.Text;
                    c.cmd.Parameters.Add("@gender", SqlDbType.NVarChar).Value =(String ) Session["g"];
                    c.cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = txtadrs.Text;
                    c.cmd.Parameters.Add("@city", SqlDbType.NVarChar).Value = txtcity.Text;
                    c.cmd.Parameters.Add("@pincode", SqlDbType.BigInt).Value = Convert.ToInt64(txtpin.Text);
                    c.cmd.Parameters.Add("@state", SqlDbType.NVarChar).Value = txtstate.Text;
                    c.cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = txtmail.Text;
                    c.cmd.Parameters.Add("@phone", SqlDbType.BigInt).Value = Convert.ToInt64(txtphone1.Text);
                    c.cmd.Parameters.Add("@desig", SqlDbType.NVarChar).Value = ddlist.SelectedItem.Text;
                    c.cmd.Parameters.Add("@doj", SqlDbType.DateTime).Value = txtdoj.Text;
                    c.cmd.Parameters.Add("@basic", SqlDbType.BigInt).Value = Convert.ToInt64(txtbasic.Text);
                    c.cmd.Parameters.Add("@da", SqlDbType.Decimal).Value = Convert.ToDecimal(txtda.Text);
                    c.cmd.Parameters.Add("@hra", SqlDbType.Decimal).Value = Convert.ToDecimal(txthra.Text);
                    c.cmd.Parameters.Add("@pf", SqlDbType.Decimal).Value = Convert.ToDecimal(txtpf.Text);
                    c.cmd.Parameters.Add("@status", SqlDbType.NVarChar).Value = "Active";
                    c.cmd.ExecuteNonQuery();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Employee Information Registered...!!!!')</script>");
                    txtempid.Text = "";
                    txtfname.Text = "";
                    txtpin.Text = "";
                    txtadrs.Text = "";
                    txtbasic.Text = "";
                    txtcity.Text = "";
                    txtda.Text = "";
                    btncal.Visible = false;
                    btnfind.Visible = false;
                    ddlist.SelectedIndex = 0;
                    rbtnmale.Checked = false;
                    rbtnfemale.Checked = false;
                    txtstate.Text = "";
                    txtdob.Text = "";
                    txtdoj.Text = "";
                    txthra.Text = "";
                    txtlname.Text = "";
                    txtmail.Text = "";
                    txtpf.Text = "";
                    txtphone1.Text = "";
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('oops!!Phone number and Email-id Already Exist...!!')</script>");
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
    protected void rbtnmale_CheckedChanged(object sender, EventArgs e)
    {
        Session["g"] = ((System.Web.UI.WebControls.RadioButton)sender).Text;
    }
    protected void rbtnfemale_CheckedChanged(object sender, EventArgs e)
    {
        Session["g"] = ((System.Web.UI.WebControls.RadioButton)sender).Text;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtdob.Text = Calendar1.SelectedDate.ToShortDateString();
        if (txtdob.Text == "")
        {
            Calendar1.Visible = true;
        }
        else if (txtdob.Text != "")
        {
            Calendar1.Visible = false;
        }
        long age;
        c = new connect();
        DateTime dob = new DateTime();
        dob = Convert.ToDateTime(txtdob.Text);
        age = DateTime.Now.Year - dob.Year;
        if (age < 18)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Sorry!!Age Should Be 18+....!!!!')</script>");
            txtdob.Text = "";
        }
    }
    protected void btncal_Click(object sender, EventArgs e)
    {
        if (txtdob.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('oops!!Enter the Year First...!!!!')</script>");
            txtdob.Focus();
        }
        else
        {
            Calendar1.Visible = true;
            Calendar1.VisibleDate = Convert.ToDateTime("January" + txtdob.Text);
        }
    }
    protected void txtfname_TextChanged(object sender, EventArgs e)
    {
        txtfname.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(this.txtfname.Text);
        Regex en = new Regex("^[a-z.A-Z]*$");
        if (en.IsMatch(txtfname.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('oops!!!!Enter the Valid First Name....!!!!')</script>");
            txtfname.Focus();
        }
    }
    protected void txtlname_TextChanged(object sender, EventArgs e)
    {
        txtlname.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(this.txtlname.Text);
        Regex n = new Regex("^[a-z.A-Z]*$");
        if (n.IsMatch(txtlname.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('oops!!!!Enter The Valid Last Name....!!!!')</script>");
            txtlname.Focus();
        }
    }
    protected void txtdob_TextChanged(object sender, EventArgs e)
    {
        Regex edat = new Regex("^[0-9]*$");
        if (edat.IsMatch(txtdob.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('oops!!Enter Valid Date of Birth....!!!!')</script>");
            txtdob.Text = "";
            txtdob.Focus();
        }
    }
    protected void txtcity_TextChanged(object sender, EventArgs e)
    {
        txtcity.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(this.txtcity.Text);
        Regex cy = new Regex("^[A-Z][a-z.A-Z]*$");
        if (cy.IsMatch(txtcity.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('oops!!Enter Valid City....!!!!')</script>");
            txtcity.Focus();
        }
    }
    protected void txtpin_TextChanged(object sender, EventArgs e)
    {
        Regex epin = new Regex("^([1-5]{1})([0-9]{5})$");
        if (epin.IsMatch(txtpin.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('oops!!Enter Valid Pincode...!!!!')</script>");
            txtpin.Text = "";
            txtpin.Focus();
        }
    }
    protected void txtdoj_TextChanged(object sender, EventArgs e)
    {
        Regex dat = new Regex("^[0-9]*$");
        if (dat.IsMatch(txtdoj.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('oops!!Enter Valid Date of Join...!!!!')</script>");
            txtdoj.Text = "";
            txtdoj.Focus();
        }
    }
    protected void txtbasic_TextChanged(object sender, EventArgs e)
    {
        Regex bas = new Regex("^[0-9]*$");
        if (bas.IsMatch(txtbasic.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('oops!!Enter Valid Basic Pay...!!!!')</script>");
            txtbasic.Text = "";
            txtbasic.Focus();
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        txtfname.Text = "";
        txtpin.Text = "";
        txtadrs.Text = "";
        txtbasic.Text = "";
        txtcity.Text = "";
        txtda.Text = "";
        txtstate.Text = "";
        ddlist.SelectedIndex = 0;
        rbtnmale.Checked = false;
        rbtnfemale.Checked = false;
        txtdob.Text = "";
        txtdoj.Text = "";
        txthra.Text = "";
        txtlname.Text = "";
        txtmail.Text = "";
        txtpf.Text = "";
        txtphone1.Text = "";
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/main.aspx");
    }

    protected void btnfind_Click(object sender, EventArgs e)
    {
        if (txtbasic.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Enter Salary to Calculate!!')</script>");
        }
        else
        {
            double da, hra, pf;
            da = Convert.ToDouble(txtbasic.Text) * (65.0 / 100);
            hra = Convert.ToDouble(txtbasic.Text) * (20.0 / 100);
            pf = Convert.ToDouble(txtbasic.Text) * (15.0 / 100);
            txtda.Text = Convert.ToString(da);
            txthra.Text = Convert.ToString(hra);
            txtpf.Text = Convert.ToString(pf);
            btnfind.Visible = false;
        }
    }
    protected void txtstate_TextChanged(object sender, EventArgs e)
    {
        txtstate.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(this.txtstate.Text);
        Regex st = new Regex("^[a-z.A-Z]*$");
        if (st.IsMatch(txtstate.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('oops!!Enter Valid State...!!!!')</script>");
            txtcity.Focus();
        }
    }
    protected void ddlist_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlist.SelectedItem.Text == "Employee")
        {
            btnfind.Visible = true;
        }
        else if (ddlist.SelectedItem.Text == "Sales Manager")
        {
            btnfind.Visible = true;
        }
        else if(ddlist.SelectedItem.Text == "-----Select-----")
        {
            btnfind.Visible = false;
        }
    }
}