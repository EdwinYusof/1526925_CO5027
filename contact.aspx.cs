using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SmtpClient sendmail = new SmtpClient();
            sendmail.Host = "smtp.gmail.com";
            sendmail.Port = 587;
            sendmail.EnableSsl = true;

            System.Net.NetworkCredential userpass = new System.Net.NetworkCredential();
            userpass.UserName = "dokeperuan@gmail.com";
            userpass.Password = "Amber2015";

            sendmail.Credentials = userpass;

            MailMessage msg = new MailMessage(txtEmail.Text, "dokeperuan@gmail.com");

            msg.Subject = "Message from " + txtName.Text ;
            msg.Body = "Subject:" + txtSubject.Text + "\n";
            msg.Body += "Email:" + txtEmail.Text + "\n";
            msg.Body += "Message:" + txtComments.Text;

            sendmail.Send(msg);
            Literal1.Text = "Your message was successfully sent.";
            txtEmail.Text = "";
            txtName.Text = "";
            txtSubject.Text = "";
            txtComments.Text = "";
           

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}