using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Admin_NewsGalleria : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LblUploadOk2.Text = "";
        LblUploadOk.Text = "";
        string n = DropDownList1.SelectedValue.ToString();
        string cartella = "~/NewsImg/" + n + "/";
        string curFile = "/NewsImg/" + n + "/" + n + ".jpg";
        if (File.Exists(Server.MapPath(curFile)))
        {
            Image ImageP = new Image();
            ImageP.ImageUrl = cartella + n + ".jpg";
            ImageP.CssClass = "NewsImg";
            PlaceHolder1.Controls.Add(ImageP);
        }
        String path = Server.MapPath("~/NewsImg/" + n + "/");
        if (!Directory.Exists(path))
        {
            Directory.CreateDirectory(path);
        }
        string[] immagini = System.IO.Directory.GetFiles(Server.MapPath(cartella), "*.jpg");
        string[] filePaths = Directory.GetFiles(Server.MapPath(cartella), "*.jpg");
        List<ListItem> files = new List<ListItem>();
        foreach (string filePath in filePaths)
        {
            files.Add(new ListItem(Path.GetFileName(filePath), filePath));
        }
        ListView2.DataSource = files;
        ListView2.DataBind();
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
            string nomefile = path + n + "." + estensione;
            FileUpload2.SaveAs(nomefile);
            // Avvisa dell'avvenuto upload.
            LblUploadOk2.Text = "Immagine caricata corretamente. Premi \"F5\" per aggiornare la pagina ";
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
                file.SaveAs(path + System.IO.Path.GetFileName(file.FileName));
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
    protected void DownloadFile(object sender, EventArgs e)
    {
        string filePath = (sender as LinkButton).CommandArgument;
        Response.ContentType = ContentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
        Response.WriteFile(filePath);
        Response.End();
    }
    protected void DeleteFile(object sender, EventArgs e)
    {
        string filePath = (sender as LinkButton).CommandArgument;
        File.Delete(filePath);
        Response.Redirect(Request.Url.AbsoluteUri);
    }
}