using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class ColorBox_ColorboxExample : System.Web.UI.Page
{
/*In this example we will show single HyperLink, when it is clicked a slideshow will start with all the images in the specified directory*/

        protected void Page_Load(object sender, EventArgs e)
        {
            //Getting all the files from the Directory Images
            string[] filesindirectory = Directory.GetFiles(Server.MapPath("~/Images/"));

            bool firstTime = true; // is used to check if it is first image or not
            var count = 1; // for giving id to hyperlink

            //looping through all the images in the specified directory
            foreach (string item in filesindirectory)
            {
                //Getting the image URL
                string imageUrl = String.Format("~/Images/{0}", System.IO.Path.GetFileName(item));

                //creating new HyperLink
                HyperLink link = new HyperLink();
                link.ID = "hyperLink" + count;
                link.NavigateUrl = imageUrl;

                //Adding rel=example1 attribute to HyperLink
                link.Attributes.Add("rel", "example1");

                /*if it is for the firsttime show the link by giving Text to the link otherwise keep it blank*/

                if (firstTime)
                    link.Text = "View As Slideshow";
                else
                    link.Text = "";

                //Adding HyperLink to the Page Control
                Page.Controls.Add(link);
                count++;
                firstTime = false;
            }
        }
    }