using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_StatistichePreghiere : System.Web.UI.Page
{
    string par = "Utente";
    string par1 = "Data";
    string par2 = "Data";
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "select Utente, count(Utente) as 'Preghiere' From FedPreg group by Utente order By Preghiere Desc";
        SqlDataSource2.SelectCommand = "select Data, count(Data) as 'Preghiere' From FedPreg group by Data order By Data Desc";
        SqlDataSource3.SelectCommand = "select * From FedPreg Where Nome = 'donato'";
    }
}