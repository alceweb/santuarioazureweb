using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IscrizioneNL2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == false)
        {
            Label5.Text = "Devi accettare la normativa della privacy";
        }
        else 
        {
            Button1.PostBackUrl = "http://f1d3i.s87.it/frontend/subscribe.aspx";
        }
    }
}