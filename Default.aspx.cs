using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader rs;



    protected void open_connection()
    {
        try
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dokeperuan"].ConnectionString);
            conn.Open();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        open_connection();
        if (!IsPostBack) {
        load_image();
        }
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtemail.Text.ToString().Equals("") || txtpassword.Text.ToString().Equals(""))
            {
                Response.Write("<script> alert('please enter your email and password') </script>");
            }
            else {

                String query = "SELECT * FROM users WHERE useremail=@user AND userpassword=@pass";
                cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@user", txtemail.Text);
                cmd.Parameters.AddWithValue("@pass", txtpassword.Text);
                rs = cmd.ExecuteReader();
                String userlevel="";
                if (rs.HasRows) {
                  
                    while (rs.Read()) {

                      
                        userlevel = rs[2].ToString();
                   
                    }

                    if (userlevel.Equals("guest"))
                    {
                        Session["guest"] = txtemail.Text;
                        Response.Write("<script> alert('Welcome user') </script>");
                        Response.Write("<script> window.location.href='accounts.aspx' </script>");
                    }
                    else {
                        Session["admin"] = txtemail.Text;
                        Response.Write("<script> alert('Welcome admin') </script>");
                        Response.Write("<script> window.location.href='admin.aspx' </script>");
                    }
                    }
                    else
                    {
                     
                        Response.Write("<script> window.location.href='login.aspx?login=error' </script>");
                    }
                
                
            }

        }


        catch (Exception ex) {
            Response.Write(ex.Message);
        }
    }
}