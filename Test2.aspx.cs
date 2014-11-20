using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        TextBox2.Text = ListView1.EditItem.FindControl("DataTextBox").ToString();
        //DateTime dob = DateTime.Parse(Request.Form[TextBox1.UniqueID]);
    }
    protected void ListView1_ItemEditing(object sender, ListViewEditEventArgs e)
    {
        TextBox2.Text = ListView1.EditItem.FindControl("DataTextBox").ToString();
    }
}