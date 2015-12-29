using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Chart_Grafico : System.Web.UI.Page
{
    string mia = "miastringa";

    protected void Page_Load(object sender, EventArgs e)
    {
        String[] dati = {"gen", "feb", "mar", "apr"};
        Random rand = new Random();
        int num = 0;
        num = rand.Next(1, 1000);

        SqlDSStaPage.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlDSStaPage.SelectCommand = "select distinct count(Id) as Numero, Pagina from StaPage group by Pagina order by Numero desc";
    }
    protected void Canval_Load(object sender, EventArgs e)
    {
        Random rand = new Random();
        int num = 0;
        num = rand.Next(1, 1000); 
    }
}