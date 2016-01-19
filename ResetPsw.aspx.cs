using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Net.Mail;

public partial class ResetPsw : System.Web.UI.Page
{
    MembershipUser u;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtUtente_TextChanged(object sender, EventArgs e)
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

            ResetPasswordButton.Visible = false;
        }
        else
        {
            Msg.ForeColor = System.Drawing.Color.Green;
            string m = Membership.GetUser(UsernameTextBox.Text).Email.ToString();
            Msg.Text = "Utente <strong>" + Server.HtmlEncode(UsernameTextBox.Text) + "</strong> trovato.<br/>La mail corrispondente è <strong>" + m + ".</strong><br/><h3>Puoi procedere con il reset della password.</h3>";
            ResetPasswordButton.Visible = true;
        }
    }

    protected void ResetPassword_OnClick(object sender, EventArgs args)
    {
        string newPassword;

        u = Membership.GetUser(UsernameTextBox.Text, false);
        string m = Membership.GetUser(UsernameTextBox.Text).Email.ToString();

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
            Msg.Text = "Password resettata, la nuova password è:<hr/> <strong>" + Server.HtmlEncode(newPassword) + "</strong><hr/><br/> è stata inviata una mail all'indirizzo associato all'utente <strong>" + UsernameTextBox.Text + ".</strong><br/> Puoi usare copia (ctrl +c) e incolla (ctrl - v) ";
                ////Preparo i campi della mail
                String from = "webservice@santuariodicaravaggio.eu";
                String to = "cesare@cr-consult.eu";
                //Istanzio la classe che rappresenta il messaggio 
                MailMessage mMailMessage = new MailMessage();
                //Aggiungo il Mittente 
                mMailMessage.From = new MailAddress(from);
                //Aggiungo il destinatario 
                mMailMessage.To.Add(new MailAddress(to));
                mMailMessage.To.Add(new MailAddress(m));
                mMailMessage.To.Add(new MailAddress("info@santuariodicaravaggio.org"));
                //L'oggetto 
                mMailMessage.Subject = "Reset password sito Santuario di Caravaggio";
                //Il corpo 
                mMailMessage.Body = "La procedura di reset della password è avvenuta in modo corretto.<br/>La password dell'utente <strong>" + UsernameTextBox.Text + "</strong> è stata resettata.<br/>La nuova password è: <hr/>" + Server.HtmlEncode(newPassword) + "<hr/><p>Una volta eseguito l'accesso con la nuova passwod, ti consigliamo di cambiarla cliccanco sul nome utente che apparirà in alto a sinistra sopra il menu.</p>";
                //Setto la modalità testo, per il contenuto del messaggio. Sarebbe possibile inviare anche dell'HTML mettendo true 
                mMailMessage.IsBodyHtml = true;
                //Setto la priorità 
                mMailMessage.Priority = MailPriority.Normal;
                //configurazione nel web.config 
                SmtpClient mSmtpClient = new SmtpClient();
                //Invio il messaggio 
                mSmtpClient.Send(mMailMessage);
                Response.Redirect("ResetPswOk.aspx");

        }
        else
        {
            Msg.Text = "Password reset failed. Please re-enter your values and try again.";
        }
    }
}