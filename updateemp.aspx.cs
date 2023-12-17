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

public partial class updateemp : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;
        txtsearch.Focus();
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        try
        {
            if (Convert.ToString(txtsearch.Text) == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!!Enter Employee-Id First...!!!')</script>");
                txtsearch.Text = "";
            }
            else
            {
                c = new connect();
                c.cmd.CommandText = "select *from employee where emp_id='" + txtsearch.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "emp");
                if (ds.Tables["emp"].Rows.Count > 0)
                {
                    txtempid.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[0]);
                    txtfname.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[1]);
                    txtlname.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[2]);
                    txtdob.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[3]);
                    if (Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[4]) == "Male")
                    {
                        rbtnmale.Checked = true;
                    }
                    else if (Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[4]) == "Female")
                    {
                        rbtnfemale.Checked = true;
                    }
                    txtadrs.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[5]);
                    txtcity.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[6]);
                    txtpin.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[7]);
                    txtstate.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[8]);
                    txtmail.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[9]);
                    txtphone.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[10]);
                    txtdesig.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[11]);
                    txtdoj.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[12]);
                    txtbasic.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[13]);
                    txtda.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[14]);
                    txthra.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[15]);
                    txtpf.Text = Convert.ToString(ds.Tables["emp"].Rows[0].ItemArray[16]);
                    c.cmd.ExecuteNonQuery();
                    txtsearch.Text = "";
                    btncal.Visible = true;
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!Entered Employee-Id Doesnot Exists...!!!!')</script>");
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
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        c = new connect();
        if (txtadrs.Text == "" || txtbasic.Text == "" || txtstate.Text == "" || txtcity.Text == "" || txtpin.Text == "" || txtdesig.Text == "" || txtphone.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Oops!!Enter All The Fields...!!!!')</script>");
        }
        else
        {
            try
            {
                c = new connect();
                c.cmd.CommandText = "update employee set address=@address,city=@city,pincode=@pincode,state=@state,phone=@phone,desig=@desig,da=@da,basic=@basic,hra=@hra,pf=@pf where emp_id='" + txtempid.Text + "'";
                c.cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = txtadrs.Text;
                c.cmd.Parameters.Add("@city", SqlDbType.NVarChar).Value = txtcity.Text;
                c.cmd.Parameters.Add("@pincode", SqlDbType.BigInt).Value = Convert.ToInt64(txtpin.Text);
                c.cmd.Parameters.Add("@state", SqlDbType.NVarChar).Value = txtstate.Text;
                c.cmd.Parameters.Add("@phone", SqlDbType.BigInt).Value = Convert.ToString(txtphone.Text);
                c.cmd.Parameters.Add("@desig", SqlDbType.NVarChar).Value = txtdesig.Text;
                c.cmd.Parameters.Add("@basic", SqlDbType.BigInt).Value = Convert.ToInt64(txtbasic.Text);
                c.cmd.Parameters.Add("@da", SqlDbType.Decimal).Value = Convert.ToDecimal(txtda.Text);
                c.cmd.Parameters.Add("@hra", SqlDbType.Decimal).Value = Convert.ToDecimal(txthra.Text);
                c.cmd.Parameters.Add("@pf", SqlDbType.Decimal).Value = Convert.ToDecimal(txtpf.Text);
                c.cmd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Employee Information Updated!!')</script>");
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                c.cnn.Close();
            }
            Session["i"] = txtsearch.Text;
        }
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/main.aspx");
    }
    protected void btncal_Click(object sender, EventArgs e)
    {
        double da, hra, pf;
        da = Convert.ToDouble(txtbasic.Text) * (65.0 / 100);
        hra = Convert.ToDouble(txtbasic.Text) * (20.0 / 100);
        pf = Convert.ToDouble(txtbasic.Text) * (15.0 / 100);
        txtda.Text = Convert.ToString(da);
        txthra.Text = Convert.ToString(hra);
        txtpf.Text = Convert.ToString(pf);
        
    }
}
