﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Net.Mail;

public partial class Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("it-IT");
        System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("it-IT");
        Response.Write(DateTime.Today.ToShortDateString());
    }
    protected void InviaButton_Click(object sender, EventArgs e)
    {
        ////Preparo i campi della mail
        String from = "webservice@santuariodicaravaggio.eu";
        //String to = "list1.c61439.bhym@2many.it";
        String to = "g35.list2.c61439.3ixb@2many.it";
        //Istanzio la classe che rappresenta il messaggio 
        MailMessage mMailMessage = new MailMessage();
        //Aggiungo il Mittente 
        mMailMessage.From = new MailAddress(from);
        //Aggiungo il destinatario 
        mMailMessage.To.Add(new MailAddress(to));
        //L'oggetto 
        mMailMessage.Subject = "Newsletter del venerdì";
        //Il corpo 
        mMailMessage.Body = NLEditor.Text;
        //Setto la modalità testo, per il contenuto del messaggio. Sarebbe possibile inviare anche dell'HTML mettendo true 
        mMailMessage.IsBodyHtml = true;
        //Setto la priorità 
        mMailMessage.Priority = MailPriority.Normal;
        //configurazione nel web.config 
        SmtpClient mSmtpClient = new SmtpClient();
        //Invio il messaggio 
        mSmtpClient.Send(mMailMessage);
        Response.Redirect("Default.aspx");
    }
}