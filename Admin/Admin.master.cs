using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Admin_Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("it-IT");
        System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("it-IT");
        if(Context.User.Identity.Name == "cesare")
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }
    }
}
