using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IscrizioneNL : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource SqlDSStaPageIns = new SqlDataSource();
        SqlDSStaPageIns.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        string pagina = Page.Title.ToString();
        String data = DateTime.Today.ToString();
        SqlDSStaPageIns.InsertCommand = "insert into StaPage ([Pagina], [Data]) values ('" + pagina + "', '" + data + "')";
        SqlDSStaPageIns.Insert();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        PnlPri.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
    }
}