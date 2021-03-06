﻿using System;
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
        SqlDataSource3.SelectCommand = "select count(id) as tot from FedPreg";
        ListView3.DataSourceID = "SqlDataSource3";
        ListView3.DataBind();
    }

    protected void ListView1_DataBound(object sender, EventArgs e)
    {
        lblUtente.Text = ListView1.Items.Count.ToString();
    }

    protected void ListView2_DataBound(object sender, EventArgs e)
    {
        lblData.Text = ListView2.Items.Count.ToString();
    }
}