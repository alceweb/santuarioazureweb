using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "select month(data) as mese, count(id) as numero from fedpreg where data >= {fn NOW()}-365 group by MONTH(data) order by mese";
        SqlDataSource2.SelectCommand = "select month(LastLoginDate) as mese, count(UserId) as numero from Memberships where LastLoginDate >= {fn NOW()}-365 group by MONTH(LastLoginDate) order by mese";
        SqlDataSource3.SelectCommand = "select month(CreateDate) as mese, count(UserId) as numero from Memberships where CreateDate >= {fn NOW()}-365 group by MONTH(CreateDate) order by mese";
        SqlDSStaPage.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlDSStaPage.SelectCommand = "select distinct count(Id) as Numero, Pagina from StaPage group by Pagina having count(Id) > 3000 order by Numero desc";
        SqlDSNL.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlDSNL.SelectCommand = "select month(Data) as mese, pagina, count(id) as numero from StaPage where pagina = 'IscrizioneNL' and Data >= {fn NOW()}-365 group by pagina, Month(Data) order by mese";
    }
}