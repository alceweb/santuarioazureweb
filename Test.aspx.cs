using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Net.Mail;

public partial class Test : System.Web.UI.Page
{
    string[] elencoRuoli;
    string[] elencoUtenti;
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("it-IT");
        System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("it-IT");
        if(!IsPostBack)
        Response.Write(DateTime.Today.ToShortDateString());
        elencoRuoli = Roles.GetAllRoles();
        ListView1.DataSource = elencoRuoli;
        ListView1.DataBind();
        ListView2.DataSource = elencoUtenti;
        ListView2.DataBind();
    }

}