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
        ListView1.SelectedIndex = 0;
        string n = DropDownList1.SelectedValue.ToString();
        string cartella = "~/NewsImg/" + n + "/";
        String path = Server.MapPath("~/NewsImg/" + n + "/");
        if(!Directory.Exists(path))
        {
            Directory.CreateDirectory(path);
        }

    }
}