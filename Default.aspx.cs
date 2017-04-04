using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        load_image();
    }

    protected void load_image()
    {

        DirectoryInfo dir;
        StringBuilder sb = new StringBuilder();
        FileInfo[] files;

        //use this in offline mode
        dir = new DirectoryInfo(Server.MapPath("/images/bouncers/"));

        //this line below is when you upload in the server (remove the slash)
        //dir = new DirectoryInfo(Server.MapPath("/CO5027/images/watches/"));
        files = dir.GetFiles();
        products.Text = dir.ToString();
        String[] titles = { "Bouncer Houses", "Wet and Dry", "Slide Bouncers" };
        sb.Append("<ul class='bxslider'>");
        int x = 0;
        foreach (FileInfo f in files)
        {
            
            String path = f.Name.ToString();
            //this line below is when you upload in the server (remove the slash)
            // sb.Append("<li><img src='/CO5027/images/watches/" + path + "'alt='" + path + "'/>");
            //this line below is for offline mode (add a slash when you upload)
            sb.Append("<li><img src='/images/bouncers/" + path + "'alt='" + path + "'/>");
            sb.Append("<h2>Title:" + titles[x] + "</h2>");
           
            sb.Append("</li>");
            x++;

        }
        sb.Append("</ul>");
        products.Text = sb.ToString();

    }
}