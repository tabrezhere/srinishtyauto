using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Super : System.Web.UI.Page
{
    string url;
    protected void Page_Load(object sender, EventArgs e)
    {
        url = HttpContext.Current.Request.Url.AbsoluteUri;
    }
    public void SendEmail(string email_id, string receiver, string sendername, string url)
    {
        try
        {
            //Create the msg object to be sent
            MailMessage msg = new MailMessage();
            //Add your email address to the recipients
            msg.To.Add(email_id);
            //Configure the address we are sending the mail from
            MailAddress address = new MailAddress("cloudserverminds@gmail.com");
            msg.From = address;
            msg.Subject = "Your friend," + " " + sendername + " " + "has something to share with your";

            msg.Body = " Hi " + receiver + ", <br/> Your friend has shared a link with you which showcase the details of SML ISUZU Product." + " " + "<br/> For more queries please visit their official website Sri Nisty Automotives <br/><br/>" + url;
            msg.IsBodyHtml = true;

            //Configure an SmtpClient to send the mail.            
            SmtpClient client = new SmtpClient();
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
//client.EnableSsl = true;
//client.Host = "smtp.gmail.com";
            client.EnableSsl = false;
            client.Host = "relay-hosting.secureserver.net";
            client.Port = 25;

            //Setup credentials to login to our sender email address ("UserName", "Password")
            NetworkCredential credentials = new NetworkCredential("cloudserverminds@gmail.com", "Minds@123");
            client.UseDefaultCredentials = true;
            client.Credentials = credentials;

            //Send the msg
            client.Send(msg);

            //Display some feedback to the user to let them know it was sent
            this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Successful!', 'Your friend has  received  your message', 'success');", true);

        }

        catch (Exception ex)
        {
            if (ex.Message.Contains("System.Net.Mail.SmtpException"))
            {
                // lblresult.Text = "Sorry! Mail could not be sent. Please check your Internet Connection to send E-mail";
                this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Oops!', 'Something went wrong. Mail could not be sent.!', 'error');", true);
            }
            else
            {
                //lblresult.Text = "Sorry! Mail could not be sent. Please check your Internet Connection to send E-mail";
                this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Oops!', 'Something went wrong. Mail could not be sent.!', 'error');", true);
            }
            //"Your message failed to send, please try again."
        }
    }
    public void clear()
    {
        txtemail.Text = "";
        txtreceiver.Text = "";
        txtsender.Text = "";
    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        SendEmail(txtemail.Text, txtreceiver.Text, txtsender.Text, url);
        clear();
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {

    }
}