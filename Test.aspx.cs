using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
public partial class Test : System.Web.UI.Page
{
    MembershipUser u;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        u = Membership.GetUser(UsernameTextBox.Text, false);
        u.IsApproved = false;
    }
}