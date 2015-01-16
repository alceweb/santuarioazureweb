using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;

public partial class Account_Register : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
    }

    protected void RegisterUser_CreatedUser(object sender, EventArgs e)
    {
        FormsAuthentication.SetAuthCookie(RegisterUser.UserName, createPersistentCookie: false);

        string continueUrl = RegisterUser.ContinueDestinationPageUrl;
        if (!OpenAuth.IsLocalUrl(continueUrl))
        {
            continueUrl = "~/";
        }
        Response.Redirect(continueUrl);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        PnlPri.Visible = false;
        RegisterUser.Visible = true;
        LinkButton2.Visible = false;
        LinkButton1.Visible = false;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        PnlPri.Visible = true;
        LinkButton1.Visible = true;
    }
}