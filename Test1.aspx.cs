using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpCookie myCookie = new HttpCookie("santuario");
        myCookie["Accettato"] = "Cookies accettati";
        myCookie["Data"] =  DateTime.Now.ToString();
        //myCookie.Expires = DateTime.Now.AddDays(60d);
        Response.Cookies.Add(myCookie);

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["santuario"] != null)
        {
            Label1.Text = Request.Cookies["santuario"]["Accettato"] + " il " + Request.Cookies["santuario"]["Data"];
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        HttpCookie myCookie = new HttpCookie("santuario");
        myCookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(myCookie);
        Label1.Text = "Eliminato";
    }
}