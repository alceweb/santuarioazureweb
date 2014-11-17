using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


public partial class Admin_NewsAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LblUploadOk2.Text = "";
        LblUploadOk.Text = "";
        ListView1.SelectedIndex = 0;
        string n = DropDownList1.SelectedValue.ToString();
        string cartella = "~/NewsImg/" + n + "/";
        Image2.ImageUrl = cartella + n + ".jpg";
        String path = Server.MapPath("~/NewsImg/" + n + "/");
        if(Directory.Exists(path))
        {
            string[] immagini = System.IO.Directory.GetFiles(Server.MapPath(cartella), "*.*");
            lista.DataSource = immagini;
            lista.DataBind();
        }
        else
        {
            Directory.CreateDirectory(path);
            string[] immagini = System.IO.Directory.GetFiles(Server.MapPath(cartella), "*.*");
            lista.DataSource = immagini;
            lista.DataBind();
        }

    }
     protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        pnlGen.Visible = true;
    }
   protected void btnDownload2_Click(object sender, EventArgs e)
    {
        //Recupero l'ID che identificherà il file primario
        string n = DropDownList1.SelectedValue.ToString();
       //Impostola cartella di destinazione
        String path = Server.MapPath("~/NewsImg/" + n + "/");
        if (FileUpload2.HasFile)
        {
            //Recupero l'estensione del file
            string estensione = System.IO.Path.GetExtension(FileUpload2.PostedFile.FileName).Substring(1);
            //Imposto il path completo del file
            string nomefile = path + n + "." + estensione ;
            FileUpload2.SaveAs(nomefile);
            // Avvisa dell'avvenuto upload.
            LblUploadOk2.Text = "Immagine caricata corretamente.";
        }
        else
        {
            // Avvisa del mancato upload.
            LblUploadOk2.Text = "Non hai scelto nessuna immagine.";
        }
    }
    protected void btnDownload_Click(object sender, EventArgs e)
    {
        //Recupero l'ID per la parte iniziale del nome file
        string n = DropDownList1.SelectedValue.ToString();
        //Imposto la cartella di destinazione
        String path = Server.MapPath("~/NewsImg/" + n + "/");
        if (FileUpload1.HasFile)
        {
            foreach (var file in FileUpload1.PostedFiles)
            {
                file.SaveAs( path + System.IO.Path.GetFileName(file.FileName));
                Response.Write(file.ContentLength + System.IO.Path.GetFileName(file.FileName));
            }
            // Avvisa dell'avvenuto upload.
            LblUploadOk.ForeColor = System.Drawing.Color.Red;
            LblUploadOk.Text = "Immagini caricate corretamente. Premi <em><Strong>F5</Strong></em> per aggiornare e visualizzare le immagini!<br/><br/>";
        }
        else
        {
            // Avvisa del mancato upload.
            LblUploadOk.Text = "Non hai scelto l'immagine per la galleria.";
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        pnlImg.Visible = false;
        pnlGalleria.Visible = true;
        LinkButton2.Visible = false;
        LinkButton1.Visible = true;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        pnlImg.Visible = true;
        pnlGalleria.Visible = false;
        LinkButton2.Visible = true;
        LinkButton1.Visible = false;
    }
}