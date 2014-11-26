using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewsGalleria : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cartella = "~/NewsImg/";
        string[] immagini = System.IO.Directory.GetFiles(Server.MapPath(cartella), Request.QueryString["ID"] + "/*.*");
        lista.DataSource = immagini;
        lista.DataBind();
    }
}