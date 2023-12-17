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

public partial class updatecust : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;
        txtsearch.Focus();
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        c = new connect();
        if (txtadrs.Text == "" || txtcity.Text == "" || txtphone.Text == "" || txtpin.Text == "" || txtstate.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!Enter All Fields...!!!!')</script>");
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "update customer set address=@address,city=@city,pincode=@pincode,state=@state where phone='" + txtphone.Text + "'";
                c.cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = txtadrs.Text;
                c.cmd.Parameters.Add("@city", SqlDbType.NVarChar).Value = txtcity.Text;
                c.cmd.Parameters.Add("@pincode", SqlDbType.BigInt).Value = Convert.ToInt64(txtpin.Text);
                c.cmd.Parameters.Add("@state", SqlDbType.NVarChar).Value = txtstate.Text;
                c.cmd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Customer Information Updated!!')</script>");
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

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            if (Convert.ToString(txtsearch.Text) == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!Enter Customer-Id First...!!!!')</script>");
                txtsearch.Text = "";
            }
            else
            {
                c = new connect();
                c.cmd.CommandText = "select * from customer where cust_id='" + txtsearch.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "cust");
                if (ds.Tables["cust"].Rows.Count > 0)
                {
                    txtcid.Text = Convert.ToString(ds.Tables["cust"].Rows[0].ItemArray[0]);
                    txtcame.Text = Convert.ToString(ds.Tables["cust"].Rows[0].ItemArray[1]);
                    if (Convert.ToString(ds.Tables["cust"].Rows[0].ItemArray[2]) == "Male")
                    {
                        RadioButton1.Checked = true;
                    }
                    else if (Convert.ToString(ds.Tables["cust"].Rows[0].ItemArray[2]) == "Female")
                    {
                        RadioButton2.Checked = true;
                    }
                    txtdob.Text = Convert.ToString(ds.Tables["cust"].Rows[0].ItemArray[3]);
                    txtmail.Text = Convert.ToString(ds.Tables["cust"].Rows[0].ItemArray[4]);
                    txtphone.Text = Convert.ToString(ds.Tables["cust"].Rows[0].ItemArray[5]);
                    txtadrs.Text = Convert.ToString(ds.Tables["cust"].Rows[0].ItemArray[6]);
                    txtcity.Text = Convert.ToString(ds.Tables["cust"].Rows[0].ItemArray[7]);
                    txtpin.Text = Convert.ToString(ds.Tables["cust"].Rows[0].ItemArray[8]);
                    txtstate.Text = Convert.ToString(ds.Tables["cust"].Rows[0].ItemArray[9]);
                    c.cmd.ExecuteNonQuery();
                    txtsearch.Text = "";
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!Customer-Id Doesnot Exists...!!!!')</script>");
                    txtsearch.Text = "";
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
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/main.aspx");
    }
    protected void txtsearch_TextChanged(object sender, EventArgs e)
    {
        txtsearch.Text = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(this.txtsearch.Text);
    }
}
