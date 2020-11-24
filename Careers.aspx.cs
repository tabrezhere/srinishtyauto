using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Careers : System.Web.UI.Page
{
    string filename;
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
              
        SendEmail(txtname.Text, txtcontact.Text, txtemail.Text, txtaddress.Text, txtqualification.Text, txtexperience.Text);
        

    }
    public void SendEmail(string name, string contact, string emailID,string contactaddress, string qualification, string experience)
    {
        try
        {
            
            //Create the msg object to be sent
            MailMessage msg = new MailMessage();
            //Add your email address to the recipients
            msg.To.Add("salses@srinistyauto.in");//ds_nisty@rediffmail.com
            //Configure the address we are sending the mail from
            MailAddress address = new MailAddress("srinistyauto@gmail.com");
            msg.From = address;
            msg.Subject = "Response from Sri Nisty Automotives Website";

            msg.Body = "Dear Admin, " + " <br/> The following are the details of person contacted you." + " " + "<br/>  <br/><br/>" + "Name:" + " " + name + "<br/>"+"Contact Number:"+" " + "E-mail ID:" +" " + emailID  + "<br/>" + "Address:" + " " +contactaddress+ "<br/>" + "Highest Qualification:" + " " +qualification+"<br/>"+ "Experience:" +" "+experience+ "<br/>";
            msg.IsBodyHtml = true;

            if (FileUpload1.HasFile)
            {
            string fileextention = System.IO.Path.GetExtension(FileUpload1.FileName);
                 if (fileextention == ".doc" || fileextention == ".docx" || fileextention ==".pdf")
                  {
                      filename = Path.GetFileNameWithoutExtension(FileUpload1.FileName);
                      string ext = Path.GetExtension(FileUpload1.FileName);
                      msg.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream,filename+"_"+name+"_"+contact+ext));

                     //Configure an SmtpClient to send the mail.            
                     SmtpClient client = new SmtpClient();
                     client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    // client.EnableSsl = true;
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
                     SendEmailToCandidate(txtname.Text, txtemail.Text);
                     this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Success!', 'Mail Sent successfully.!', 'success');", true);
                      //ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true)
                     clear();

             }
            else
                this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Oops!', 'Something went wrong.File format should be .doc/ .docx', 'error');", true);
            }
        else
       
            this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Oops!', 'No file uploaded. Please upload a file', 'error');", true);
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
    public void SendEmailToCandidate(string name, string email_id)
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

            msg.Body = "Dear"+" " + name+", " + " <br/>We have Received your CV. Thanks for showing your interest with us.<br/> We will contact you soon if your CV satisfies our Company's Criteria" + " " + "<br/>  <br/><br/>" + "For more information please visit our official website" + " " + "<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>" + "Thanks & Regards <br/>HR, Sri Nisty Automotives";
            msg.IsBodyHtml = true;

            //Configure an SmtpClient to send the mail.            
            SmtpClient client = new SmtpClient();
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
           // client.EnableSsl = true;
           // client.Host = "smtp.gmail.com";
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
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);

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
    public void clear()
    {
        txtemail.Text = "";
        txtname.Text = "";
        txtqualification.Text = "";
        txtcontact.Text = "";
        txtexperience.Text = "";
        txtaddress.Text = "";
        
    }

   
}