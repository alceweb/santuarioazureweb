using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Riservata_PreghiAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["Data"].DefaultValue = DateTime.Today.ToShortDateString();
        SqlDataSource1.InsertParameters["Utente"].DefaultValue = User.Identity.Name.ToString();
    }
}