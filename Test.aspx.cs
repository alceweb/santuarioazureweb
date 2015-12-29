using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Net.Mail;
using System.Web.UI.DataVisualization.Charting;

public partial class Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["santuario"] != null)
        {
            PnlCookie.Visible = false;
        }
    }
    protected void CookieButton_Click(object sender, EventArgs e)
    {
        //HttpCookie myCookie = new HttpCookie("santuario");
        //myCookie["Accettato"] = "Cookies accettati";
        //myCookie["Data"] = DateTime.Now.ToString();
        //myCookie.Expires = DateTime.Now.AddDays(180d);
        //Response.Cookies.Add(myCookie);
        //PnlCookie.Visible = false;
    }
}