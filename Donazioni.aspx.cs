using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Donazioni : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource SqlDSStaPageIns = new SqlDataSource();
        SqlDSStaPageIns.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        string pagina = Page.Title.ToString();
        String data = DateTime.Today.ToString("MM/dd/yyyy");
        SqlDSStaPageIns.InsertCommand = "insert into StaPage ([Pagina], [Data]) values ('" + pagina + "', '" + data + "')";
        SqlDSStaPageIns.Insert();
    }
}