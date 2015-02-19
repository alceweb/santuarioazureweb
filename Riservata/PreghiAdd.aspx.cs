using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Riservata_PreghiAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("it-IT");
        System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("it-IT");
    }
    protected void InsertButton_Click(object sender, EventArgs e)
    {
        TextBox NomeTextBox = ListView1.InsertItem.FindControl("NomeTextBox") as TextBox;
        string Nome = NomeTextBox.Text;
        TextBox CittaTextBox = ListView1.InsertItem.FindControl("CittaTextBox") as TextBox;
        string Citta = CittaTextBox.Text;
        TextBox PreghieraTextBox = ListView1.InsertItem.FindControl("PreghieraTextBox") as TextBox;
        string Preghiera = PreghieraTextBox.Text;
        SqlDataSource1.InsertCommand = "INSERT INTO [FedPreg] ([Nome], [Citta], [Preghiera], [Data], [Utente]) VALUES ('"
            + Nome + "','" 
            + Citta + "','" 
            + Preghiera + "','" 
            + DateTime.Today.ToString("MM-dd-yyyy") + "','"
            + User.Identity.Name.ToString() + "')";
        SqlDataSource1.Insert();
        Response.Redirect("PreghiAddOk.aspx");
    }
}