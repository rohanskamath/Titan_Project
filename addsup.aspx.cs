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

public partial class addsup : System.Web.UI.Page
{
    connect c;
    String Supplier = "SUP10";

    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;
        txtname.Focus();
    }
    protected void  Button1_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            if (Convert.ToString(txtsupid.Text) == "" || Convert.ToString(txtstate.Text) == "" || Convert.ToString(txtpin.Text) == "" || Convert.ToString(txtphone.Text) == "" || Convert.ToString(txtname.Text) == "" || Convert.ToString(txtmail.Text) == "" || Convert.ToString(txtcity.Text) == "" || Convert.ToString(txtadrs.Text) == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!!Enter All The Fields...!!!!')</script>");
            }
            else
            {
                c = new connect();
                c.cmd.CommandText = "insert into supplier values(@sup_id,@name,@email,@phone,@address,@city,@pincode,@state)";
                c.cmd.Parameters.Add("@sup_id", SqlDbType.NVarChar).Value = txtsupid.Text;
                c.cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = txtname.Text;
                c.cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = txtmail.Text;
                c.cmd.Parameters.Add("@phone", SqlDbType.BigInt).Value = Convert.ToInt64(txtphone.Text);
                c.cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = txtadrs.Text;
                c.cmd.Parameters.Add("@city", SqlDbType.NVarChar).Value = txtcity.Text;
                c.cmd.Parameters.Add("@pincode", SqlDbType.BigInt).Value = Convert.ToInt64(txtpin.Text);
                c.cmd.Parameters.Add("@state", SqlDbType.NVarChar).Value = txtstate.Text;
                c.cmd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Supplier Information Registered...!!!!')</script>");
                txtadrs.Text = "";
                txtcity.Text = "";
                txtmail.Text = "";
                txtname.Text = "";
                txtphone.Text = "";
                txtpin.Text = "";
                txtstate.Text = "";
                txtsupid.Text = "";
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
        txtsupid.Enabled = false;
        c = new connect();
        if (IsPostBack)
        {
            c.cmd.CommandText = "select count(sup_id) from supplier";
            int i = Convert.ToInt16(c.cmd.ExecuteScalar());
            i++;
            txtsupid.Text = Supplier + i.ToString();
        }
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/main.aspx");
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtadrs.Text = "";
        txtcity.Text = "";
        txtmail.Text = "";
        txtname.Text = "";
        txtphone.Text = "";
        txtpin.Text = "";
        txtstate.Text = "";
        txtsupid.Text = "";
    }
    protected void txtname_TextChanged(object sender, EventArgs e)
    {
        txtname.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(this.txtname.Text);
        Regex en = new Regex("^[a-z.A-Z]*$");
        if (en.IsMatch(txtname.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!!Enter Valid Name...!!!!!')</script>");
            txtname.Focus();
        }
    }
    protected void txtcity_TextChanged(object sender, EventArgs e)
    {
        txtcity.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(this.txtcity.Text);
        Regex cy = new Regex("^[A-Z.a-z]*$");
        if (cy.IsMatch(txtcity.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Valid City...!!!!!')</script>");
            txtcity.Focus();
        }
    }
    protected void txtpin_TextChanged(object sender, EventArgs e)
    {
        Regex epin = new Regex("^([1-5]{1})([0-9]{5})$");
        if (epin.IsMatch(txtpin.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Valid Pincode...!!!!!')</script>");
            txtpin.Text = "";
            txtpin.Focus();
        }
    }
    protected void txtphone_TextChanged(object sender, EventArgs e)
    {
        Regex pho = new Regex("^([6-9]{1})([0-9]{9})$");
        if (pho.IsMatch(txtphone.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Valid Contact number...!!!!!')</script>");
            txtphone.Text = "";
            txtphone.Focus();
        }
    }
    protected void txtstate_TextChanged(object sender, EventArgs e)
    {
        txtstate.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(this.txtstate.Text);
        Regex s = new Regex("^[A-Z.a-z]*$");
        if (s.IsMatch(txtstate.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Valid State...!!!!!')</script>");
            txtstate.Focus();
        }
    }
}
