using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string name = txtName.Text.Trim();
        string emailID = txtEmailID.Text.Trim();
        string mobile = txtMobile.Text.Trim();
        var emailData = File.ReadAllText(Server.MapPath("~/template/mailforAdmin.html"));
        emailData = emailData.Replace("###ADMINNAME###", name);
        emailData = emailData.Replace("###EMAILID###", emailID);
        emailData = emailData.Replace("###CONTACTNUMBER###", mobile);
        Thread T1 = new Thread(delegate()
        {
            try
            {
                SendMailMessage(emailID, "Enquiry from Chittorgarh Taxi Services", emailData);
            }
            catch (Exception ex)
            {
                litMessage.Text = Convert.ToString(ex.Message);
            }
        });
        T1.Start();

        txtMobile.Text = "";
        txtEmailID.Text = "";
        txtName.Text = "";
        Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "openPopup()", true);
    }
    public static void SendMailMessage(string toAddress, string subject, string body, string[] attachments = null)
    {
        string fromEmail = "";
        string server = "";
        int emailPort = 0;
        string userName = "";
        string password = "";

        fromEmail = "chittorgarhtaxiservices@gmail.com";
        server = "smtp.gmail.com";
        emailPort = 587;
        userName = "chittorgarhtaxiservices@gmail.com";
        password = "Taxi@0001";

       

        MailAddress from = new MailAddress(fromEmail, "Chittorgarh Taxi Services");
        MailAddress to = new MailAddress(toAddress, "");
        using (MailMessage mm = new MailMessage(from, to))
        {
            mm.Subject = subject;
            mm.Body = body;
            mm.IsBodyHtml = true;
            mm.CC.Add(fromEmail);
            SmtpClient smtp = new SmtpClient();
            smtp.Host = server;
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential(userName, password);
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = emailPort;
            smtp.Send(mm);
        }
    }
}