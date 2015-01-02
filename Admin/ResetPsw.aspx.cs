using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Admin_ResetPsw : System.Web.UI.Page
{
    MembershipUser u;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Membership.EnablePasswordReset)
        {
            FormsAuthentication.RedirectToLoginPage();
        }

        Msg.Text = "";

        if (!IsPostBack)
        {
            Msg.Text = "Inserisci il nome utente da resettare e premi invio.";
        }
        else
        {
            VerifyUsername();
        }
    }
    public void VerifyUsername()
    {
        u = Membership.GetUser(UsernameTextBox.Text, false);

        if (u == null)
        {
            Msg.ForeColor = System.Drawing.Color.Red;
            Msg.Text = "Utente " + Server.HtmlEncode(UsernameTextBox.Text) + " non trovato. Riprova con un nome utente valido.";

            ResetPasswordButton.Enabled = false;
        }
        else
        {
            Msg.ForeColor = System.Drawing.Color.Green;
            Msg.Text = "Utente " + Server.HtmlEncode(UsernameTextBox.Text) + " trovato. Puoi procedere con il reset della password.";
            ResetPasswordButton.Enabled = true;
        }
    }

    public void ResetPassword_OnClick(object sender, EventArgs args)
    {
        string newPassword;

        u = Membership.GetUser(UsernameTextBox.Text, false);

        if (u == null)
        {
            Msg.Text = "Utente " + Server.HtmlEncode(UsernameTextBox.Text) + " non trovato. Riprova con un nome utente valido.";
            return;
        }

        try
        {
            newPassword = u.ResetPassword();
        }
        catch (MembershipPasswordException e)
        {
            Msg.Text = "Invalid password answer. Please re-enter and try again.";
            return;
        }
        catch (Exception e)
        {
            Msg.Text = e.Message;
            return;
        }

        if (newPassword != null)
        {
            Msg.Text = "Password resettata, la nuova password è:<hr/> <strong>" + Server.HtmlEncode(newPassword) + "</strong><hr/>";
        }
        else
        {
            Msg.Text = "Password reset failed. Please re-enter your values and try again.";
        }
    }
}