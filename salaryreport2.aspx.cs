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


public partial class salaryreport2 : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            ds = new DataSet();
            CrystalReportViewer1.SelectionFormula = "{payslip.month}='" + Session["m"] + "'and {payslip.year}='"+ Session["y"] + "'";
            CrystalReportViewer1.RefreshReport();
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
    protected void imagehome_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/salaryreport.aspx");
    }
}
