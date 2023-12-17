using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void admin_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/adlogin.aspx");
    }
    protected void user_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/userlogin.aspx");
    }
}
