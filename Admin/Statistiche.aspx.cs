using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Admin_Statistiche : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }


    protected void ListView2_DataBound(object sender, EventArgs e)
    {
        lblAcc.Text = ListView2.Items.Count.ToString();
        lblAcc.Font.Bold = true;
    }

    protected void ListView1_DataBound(object sender, EventArgs e)
    {
        lblIsc.Text = ListView1.Items.Count.ToString();
        lblIsc.Font.Bold = true;
    }
}