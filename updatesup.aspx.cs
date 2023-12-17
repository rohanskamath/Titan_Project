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

public partial class updatesup : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        txtsearch.Focus();
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            if (Convert.ToString(txtsearch.Text) == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Supplier-Id To Update...!!!')</script>");
                txtsearch.Text = "";
            }
            else
            {
                c = new connect();
                c.cmd.CommandText = "select * from supplier where sup_id='" + txtsearch.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "sup");
                txtsupid.Text = Convert.ToString(ds.Tables["sup"].Rows[0].ItemArray[0]);
                txtname.Text = Convert.ToString(ds.Tables["sup"].Rows[0].ItemArray[1]);
                txtmail.Text = Convert.ToString(ds.Tables["sup"].Rows[0].ItemArray[2]);
                txtphone.Text = Convert.ToString(ds.Tables["sup"].Rows[0].ItemArray[3]);
                txtadrs.Text = Convert.ToString(ds.Tables["sup"].Rows[0].ItemArray[4]);
                txtcity.Text = Convert.ToString(ds.Tables["sup"].Rows[0].ItemArray[5]);
                txtpin.Text = Convert.ToString(ds.Tables["sup"].Rows[0].ItemArray[6]);
                txtstate.Text = Convert.ToString(ds.Tables["sup"].Rows[0].ItemArray[7]);
                c.cmd.ExecuteNonQuery();
                txtsearch.Text = "";
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
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        c = new connect();
        if (txtadrs.Text == "" || txtstate.Text == "" || txtcity.Text == "" || txtpin.Text == "" || txtphone.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!Enter All The Fields...!!!!')</script>");
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "update supplier set phone=@phone,address=@address,city=@city,pincode=@pincode,state=@state where sup_id='" + txtsupid.Text + "'";
                c.cmd.Parameters.Add("@phone", SqlDbType.BigInt).Value = Convert.ToInt64(txtphone.Text);
                c.cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = txtadrs.Text;
                c.cmd.Parameters.Add("@city", SqlDbType.NVarChar).Value = txtcity.Text;
                c.cmd.Parameters.Add("@pincode", SqlDbType.BigInt).Value = Convert.ToInt64(txtpin.Text);
                c.cmd.Parameters.Add("@state", SqlDbType.NVarChar).Value = txtstate.Text;
                c.cmd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Supplier Information Updated!!!')</script>");
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
    protected void txtcity_TextChanged(object sender, EventArgs e)
    {
        Regex cy = new Regex("^[A-Z.a-z]*$");
        if (cy.IsMatch(txtcity.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Valid City...!!!!!')</script>");
            txtcity.Text = "";
            txtcity.Focus();
        }
    }
    protected void txtstate_TextChanged(object sender, EventArgs e)
    {
        Regex s = new Regex("^[A-Z.a-z]*$");
        if (s.IsMatch(txtstate.Text) == false)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please!!Enter Valid State...!!!!!')</script>");
            txtstate.Text = "";
            txtstate.Focus();
        }
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/main.aspx");
    }
}
