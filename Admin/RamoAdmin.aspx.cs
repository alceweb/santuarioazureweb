using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Admin_RamoAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
   protected void UpdateButton_Click(object sender, EventArgs e)
    {
        //Imposta la cartella di destinazione
        String path = Server.MapPath("~/Ramo/"); 
        //Recupero l'ID per la parte iniziale del nome file
        Label id = (Label)ListView1.EditItem.FindControl("IdLabel1");
        string n = id.Text;
        Label ok = (Label)ListView1.EditItem.FindControl("uploadOk");
        FileUpload f1 = (FileUpload)ListView1.EditItem.FindControl("FileUpload1");
        if (f1.HasFile)
        {
            //recupero il nome e l'estensione del file
            string estensione = System.IO.Path.GetExtension(f1.PostedFile.FileName).Substring(1);
            //Imposto il path completo del sile
            string nomefile = path + n + "." + estensione;
            f1.SaveAs(nomefile);
            //Avvisa dell'avvenuto upload e nasconde il fileupload
            f1.Visible = false;
            ok.ForeColor = System.Drawing.Color.Green;
            ok.Text = "file caricato correttamente";
        }
        else 
        {
            //Avvisa del mancato upload
            ok.ForeColor = System.Drawing.Color.Red;
            ok.Text = "Non hai scelto nessun file";

        }
    }
}