using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;


public partial class Account_ModificaMail : System.Web.UI.Page
{
    MembershipUser u;
    protected void Page_Load(object sender, EventArgs e)
    {
        u = Membership.GetUser(User.Identity.Name);

        if (!IsPostBack)
        {
            EmailLabel.Text = u.Email;
        }
    }
    public void UpdateEmailButton_OnClick(object sender, EventArgs args)
    {
        try
        {
            u.Email = EmailTextBox.Text;

            Membership.UpdateUser(u);

            Msg.Text = "Mail di riferimento modificata con successo.";
            EmailLabel.Text = u.Email;
        }
        catch (System.Configuration.Provider.ProviderException e)
        {
            Msg.Text = e.Message;
        }
    }

}