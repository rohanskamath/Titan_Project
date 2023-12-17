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

public partial class custadd2 : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    string customer = "CUSTOM";

    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;
        txtcname.Focus();
    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        btncal.Visible = true;
        c = new connect();
        if (IsPostBack)
        {
            c.cmd.CommandText = "select count(cust_id) from customer";
            int i = Convert.ToInt16(c.cmd.ExecuteScalar());
            i++;
            txtcid.Text = customer + i.ToString();
            txtcity.Text = "";
            txtadrs.Text = "";
            txtcname.Text = "";
            txtdob.Text = "";
            txtmail.Text = "";
            txtphone.Text = "";
            txtpin.Text = "";
            txtstate.Text = "";
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        c = new connect();
        if (txtcid.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Click On New Button For Customer-Id..!!!!')</script>");
            txtcid.Text = "";
        }
        else
        {
            try
            {
                c = new connect();
                if (Convert.ToString(txtstate.Text) == "" || Convert.ToString(txtpin.Text) == "" || Convert.ToString(txtphone.Text) == "" || Convert.ToString(txtmail.Text) == "" || Convert.ToString(txtdob.Text) == "" || Convert.ToString(txtcname.Text) == "" || Convert.ToString(txtcity.Text) == "" || Convert.ToString(txtadrs.Text) == "")
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter All The Fields...!!!!')</script>");
                }
                else
                {
                    c.cmd.CommandText = "insert into customer values(@cust_id,@name,@gender,@dob,@email,@phone,@address,@city,@pincode,@state)";
                    c.cmd.Parameters.Add("@cust_id", SqlDbType.NVarChar).Value = txtcid.Text;
                    c.cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = txtcname.Text;
                    c.cmd.Parameters.Add("@gender", SqlDbType.NVarChar).Value = (String)Session["c"];
                    c.cmd.Parameters.Add("@dob", SqlDbType.DateTime).Value = txtdob.Text;
                    c.cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = txtmail.Text;
                    c.cmd.Parameters.Add("@phone", SqlDbType.BigInt).Value = Convert.ToInt64(txtphone.Text);
                    c.cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = txtadrs.Text;
                    c.cmd.Parameters.Add("@city", SqlDbType.NVarChar).Value = txtcity.Text;
                    c.cmd.Parameters.Add("@pincode", SqlDbType.BigInt).Value = Convert.ToInt64(txtpin.Text);
                    c.cmd.Parameters.Add("@state", SqlDbType.NVarChar).Value = txtstate.Text;
                    c.cmd.ExecuteNonQuery();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Customer Information Registered...!!!!')</script>");
                    txtcity.Text = "";
                    txtadrs.Text = "";
                    txtcname.Text = "";
                    txtdob.Text = "";
                    txtmail.Text = "";
                    txtphone.Text = "";
                    txtcid.Text = "";
                    txtpin.Text = "";
                    txtstate.Text = "";
                    RadioButton1.Checked = false;
                    RadioButton2.Checked = false;
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
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        Session["c"] = ((System.Web.UI.WebControls.RadioButton)sender).Text;
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        Session["c"] = ((System.Web.UI.WebControls.RadioButton)sender).Text;
    }
    protected void btncal_Click(object sender, EventArgs e)
    {
        if (txtdob.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter the Year First...!!!!')</script>");
            txtdob.Focus();
        }
        else
        {
            Calendar1.Visible = true;
            Calendar1.VisibleDate = Convert.ToDateTime("January" + txtdob.Text);
        }
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
    }
    protected void txtdob_TextChanged(object sender, EventArgs e)
    {
        Regex edat = new Regex("^[0-9]*$");
        if (edat.IsMatch(txtdob.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Valid Date of Birth...!!!!')</script>");
            txtdob.Text = "";
            txtdob.Focus();
        }
    }
    protected void txtcity_TextChanged(object sender, EventArgs e)
    {
        txtcity.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(this.txtcity.Text);
        Regex cy = new Regex("^[A-Z.a-z]*$");
        if (cy.IsMatch(txtcity.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Valid City...!!!!')</script>");
            txtcity.Text = "";
            txtcity.Focus();
        }
    }
    protected void txtpin_TextChanged(object sender, EventArgs e)
    {
        Regex epin = new Regex("^([1-5]{1})([0-9]{5})$");
        if (epin.IsMatch(txtpin.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Valid Pincode...!!!!')</script>");
            txtpin.Text = "";
            txtpin.Focus();
        }
    }
    protected void txtstate_TextChanged(object sender, EventArgs e)
    {
        txtstate.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(this.txtstate.Text);
        Regex s = new Regex("^[A-Z.a-z]*$");
        if (s.IsMatch(txtstate.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Valid State...!!!!')</script>");
            txtstate.Text = "";
            txtstate.Focus();
        }
    }
    protected void txtphone_TextChanged(object sender, EventArgs e)
    {
        Regex pho = new Regex("^([6-9]{1})([0-9]{9})$");
        if (pho.IsMatch(txtphone.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Valid Contact Number...!!')</script>");
            txtphone.Text = "";
            txtphone.Focus();
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        btncal.Visible = false;
        txtcity.Text = "";
        txtadrs.Text = "";
        txtcname.Text = "";
        txtdob.Text = "";
        txtmail.Text = "";
        txtphone.Text = "";
        txtcid.Text = "";
        txtpin.Text = "";
        txtstate.Text = "";
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/main2.aspx");
    }
    protected void txtcname_TextChanged(object sender, EventArgs e)
    {
        txtcname.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(this.txtcname.Text);
    }
}
