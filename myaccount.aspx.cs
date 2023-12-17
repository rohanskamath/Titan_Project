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

public partial class myaccount : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        String n = (String)Session["usern"];
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from employee where emp_id='" + n + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "u");
            if (ds.Tables["u"].Rows.Count > 0)
            {
                lblempid.Text = Convert.ToString(ds.Tables["u"].Rows[0].ItemArray[0]);
                lblfname.Text = Convert.ToString(ds.Tables["u"].Rows[0].ItemArray[1]);
                lbllname.Text = Convert.ToString(ds.Tables["u"].Rows[0].ItemArray[2]);
                lbldob.Text = Convert.ToString(ds.Tables["u"].Rows[0].ItemArray[3]);
                lblsex.Text = Convert.ToString(ds.Tables["u"].Rows[0].ItemArray[4]);
                lblph.Text = Convert.ToString(ds.Tables["u"].Rows[0].ItemArray[10]);
                lblmail.Text = Convert.ToString(ds.Tables["u"].Rows[0].ItemArray[9]);
                lbldesig.Text = Convert.ToString(ds.Tables["u"].Rows[0].ItemArray[11]);
                lbladrs.Text = Convert.ToString(ds.Tables["u"].Rows[0].ItemArray[5]);
                lblcity.Text = Convert.ToString(ds.Tables["u"].Rows[0].ItemArray[6]);
                lblpin.Text = Convert.ToString(ds.Tables["u"].Rows[0].ItemArray[7]);
                lblstate.Text = Convert.ToString(ds.Tables["u"].Rows[0].ItemArray[8]);
                c.cmd.ExecuteNonQuery();
            }
            else
            {
                Response.Redirect("~/main2.aspx");
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
