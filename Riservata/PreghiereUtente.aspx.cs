﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Riservata_PreghiereUtente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Utente"] = User.Identity.Name.ToString();
    }
}