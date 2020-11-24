using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        
        SendEmail(txtname.Text, txtmsg.Text, txtcontact.Text, txtemail.Text); // e-mail to admin
        SendEmailToCustomer(txtname.Text, txtemail.Text);// e-mail to client
        clear();
    }
    protected void btnrequestcall_Click(object sender, EventArgs e)
    {
        SendEmailForRequestCall(txtname.Text, txtcontact.Text);// e-mail to admin
        RequestCallFeedback(txtname.Text, txtemail.Text, txtcontact.Text);// e-mail to client
        clear();
    }
    public void SendEmail(string name,string message,string contact,string email)
    {
        try
        {
            //Create the msg object to be sent
            MailMessage msg = new MailMessage();
            //Add your email address to the recipients
            msg.To.Add("sales@srinistyauto.in"); // incoming mail
            //Configure the address we are sending the mail from
            MailAddress address = new MailAddress("srinistyauto@gmail.com");
            msg.From = address;
            msg.Subject = "Response from Sri Nisty Automotives Website" ;

            msg.Body = "Dear HR, " + " <br/> The following are the details of person contacted you." + " " + "<br/>  <br/><br/>" + "Name:" + " " + name + "<br/>" + "E-mail ID:" + " " + email + "<br/>" + "Message:" + " " + message + "<br/>" + "Contact Number:" + " " + contact + "<br/>";
            msg.IsBodyHtml = true;

            //Configure an SmtpClient to send the mail.            
            SmtpClient client = new SmtpClient();
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
client.EnableSsl = true;
client.Host = "smtp.gmail.com";
// client.EnableSsl = false;
// client.Host = "relay-hosting.secureserver.net";
            client.Port = 25;

            //Setup credentials to login to our sender email address ("UserName", "Password")
            NetworkCredential credentials = new NetworkCredential("srinistyauto@gmail.com", "nisty123");
            client.UseDefaultCredentials = true;
            client.Credentials = credentials;

            //Send the msg
            client.Send(msg);

            //Display some feedback to the user to let them know it was sent
            //ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
            this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Success!', 'Mail Sent successfully.!', 'success');", true);

        }

        catch (Exception ex)
        {
            if (ex.Message.Contains("System.Net.Mail.SmtpException"))
            {
                this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Oops!', 'Something went wrong. Mail could not be sent.!', 'error');", true);
            }
            else
            {
                this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Oops!', 'Something went wrong. Mail could not be sent.!', 'error');", true);
            }
            //"Your message failed to send, please try again."
        }
    }
    public void SendEmailToCustomer(string name, string email_id)
    {
        try
        {
            //Create the msg object to be sent
            MailMessage msg = new MailMessage();
            //Add your email address to the recipients
            msg.To.Add(email_id);
            //Configure the address we are sending the mail from
            MailAddress address = new MailAddress("srinistyauto@gmail.com");
            msg.From = address;
            msg.Subject = "Feedback from Sri Nisty Automotives ";

            msg.Body = "Dear "+ " " + name+","+" <br/>We have Received your message. Thanks for your feedback." + " " + "<br/>  <br/><br/>" + "For more information please visit our official website" + " " +" www.srinistyauto.in"+ "<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>" +"Thanks & Regards <br/>HR, Sri Nisty Automotives";
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
            NetworkCredential credentials = new NetworkCredential("srinistyauto@gmail.com", "nisty123");
            client.UseDefaultCredentials = true;
            client.Credentials = credentials;

            //Send the msg
            client.Send(msg);

            //Display some feedback to the user to let them know it was sent
            //ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
            this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Success!', 'Mail Sent successfully.!', 'success');", true);

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
                
            }
            //"Your message failed to send, please try again."
        }
    }
    public void RequestCallFeedback(string name, string email_id, string contact)
    {
        try
        {
            //Create the msg object to be sent
            MailMessage msg = new MailMessage();
            //Add your email address to the recipients
            msg.To.Add(email_id);
            //Configure the address we are sending the mail from
            MailAddress address = new MailAddress("srinistyauto@gmail.com");
            msg.From = address;
            msg.Subject = "Feedback from Sri Nisty Automotives ";

            msg.Body = "Dear Sir/Madam, " + " <br/>We have Received your message. Thanks for showing your interest in us<br/> We will Contact you very soon.<br/>  Your Contact Number:" + " " +contact+ "<br/>  <br/><br/>" + "For more information please visit our official website" + " " + "<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>" + "Thanks & Regards <br/>HR, Sri Nisty Automotives";
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
            NetworkCredential credentials = new NetworkCredential("srinistyauto@gmail.com", "nisty123");
            client.UseDefaultCredentials = true;
            client.Credentials = credentials;

            //Send the msg
            client.Send(msg);

            //Display some feedback to the user to let them know it was sent
            //ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
            this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Success!', 'Mail Sent successfully.!', 'success');", true);

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
    public void SendEmailForRequestCall(string name, string contact)
    {
        try
        {
            //Create the msg object to be sent
            MailMessage msg = new MailMessage();
            //Add your email address to the recipients
            msg.To.Add("sales@srinistyauto.in"); //incoming mail
            //Configure the address we are sending the mail from
            MailAddress address = new MailAddress("srinistyauto@gmail.com");
            msg.From = address;
            msg.Subject = "Request for Callback from Sri Nisty Automotives Website";

            msg.Body = "Dear HR, " + " <br/> The following are the details of person who requested Callback for enquires" + " " + "<br/>  <br/><br/>" + "Name:" + " " + name + "<br/>" + "Contact Number:" + " " + contact + "<br/>";
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
            NetworkCredential credentials = new NetworkCredential("srinistyauto@gmail.com", "nisty123");
            client.UseDefaultCredentials = true;
            client.Credentials = credentials;

            //Send the msg
            client.Send(msg);

            //Display some feedback to the user to let them know it was sent
            //ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
            this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Success!', 'Mail Sent successfully.!', 'success');", true);

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
        txtname.Text = "";
        txtmsg.Text = "";
        txtcontact.Text = "";
    }
}