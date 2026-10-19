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
    private class Faq
    {
        public string Question { get; set; }
        public string Answer { get; set; }
    }

    private class Car
    {
        public string Name { get; set; }
        public string Type { get; set; }
        public string Image { get; set; }
        public int Seats { get; set; }
        public string Rate { get; set; }
    }

    private static readonly List<Car> Fleet = new List<Car>
    {
        new Car { Name = "Swift Dzire", Type = "Economy", Image = "swift.jpg", Seats = 4, Rate = "10-11" },
        new Car { Name = "Etios", Type = "Sedan", Image = "etios.jpg", Seats = 4, Rate = "11-12" },
        new Car { Name = "Ertiga", Type = "MUV", Image = "ertiga.jpg", Seats = 6, Rate = "12-13" },
        new Car { Name = "Tavera", Type = "MUV", Image = "tavera.jpg", Seats = 9, Rate = "13-14" },
        new Car { Name = "Innova", Type = "Premium SUV", Image = "innova.jpg", Seats = 7, Rate = "15-16" },
        new Car { Name = "Cruiser", Type = "Group Travel", Image = "Cruiser.jpg", Seats = 12, Rate = "17-18" }
    };

    private static readonly List<Faq> Faqs = new List<Faq>
    {
        new Faq { Question = "How can I book a taxi in Chittorgarh?", Answer = "You can book a taxi by calling us on +91 96022 68863, sending a WhatsApp message, or filling in the booking form on this page. We confirm the car, driver and fare before your trip." },
        new Faq { Question = "What are the taxi fares in Chittorgarh?", Answer = "Our fares start from about Rs. 10-11 per km for Swift Dzire, Rs. 11-12 per km for Etios, Rs. 12-13 per km for Ertiga, Rs. 13-14 per km for Tavera, Rs. 15-16 per km for Innova and Rs. 17-18 per km for Cruiser. Tolls, parking and driver night allowance are extra where applicable." },
        new Faq { Question = "Do you provide pickup from Udaipur Airport?", Answer = "Yes. We provide pickup and drop between Udaipur's Maharana Pratap Airport (Dabok) and Chittorgarh, which is roughly 90 km and takes about 1.5 to 2 hours. Share your flight number and we track delays at no extra cost." },
        new Faq { Question = "Can I hire a taxi for Chittorgarh Fort sightseeing?", Answer = "Absolutely. We offer half-day and full-day local taxis that cover Chittorgarh Fort, Vijay Stambh, Kirti Stambh, Padmini Palace, Meera Temple, Kalika Mata Temple and other city attractions with waiting time included." },
        new Faq { Question = "Are your taxis available 24 hours?", Answer = "Yes, our taxi service runs 24 hours a day, 7 days a week, including early-morning railway pickups, late-night airport transfers and festival days." },
        new Faq { Question = "Do you offer one-way and outstation taxis from Chittorgarh?", Answer = "Yes. We run one-way drops and round trips from Chittorgarh to Udaipur, Bhilwara, Ajmer, Jaipur, Kota, Nathdwara, Mount Abu, Indore, Ujjain, Ahmedabad and many other cities." }
    };

    protected void Page_Load(object sender, EventArgs e)
    {
        Seo.Apply(this,
            "Taxi Service in Chittorgarh | Book Cab 24x7 | Chittorgarh Taxi Services",
            "Book a reliable taxi in Chittorgarh for fort sightseeing, Udaipur airport transfers, Sanwariya Seth darshan and outstation trips. Clean cars, local drivers, fares from Rs. 10/km.",
            "taxi service in chittorgarh, chittorgarh taxi, cab in chittorgarh, chittorgarh car rental, taxi hire chittorgarh, chittorgarh to udaipur taxi, chittorgarh fort taxi",
            "");

        Seo.AddJsonLd(this, Seo.LocalBusinessSchema());
        Seo.AddJsonLd(this, Seo.Obj(
            "@context", "https://schema.org",
            "@type", "WebSite",
            "name", Seo.SiteName,
            "url", Seo.SiteUrl + "/"));
        Seo.AddJsonLd(this, Seo.Obj(
            "@context", "https://schema.org",
            "@type", "FAQPage",
            "mainEntity", Faqs.Select(f => Seo.Obj(
                "@type", "Question",
                "name", f.Question,
                "acceptedAnswer", Seo.Obj("@type", "Answer", "text", f.Answer))).ToList()));

        if (!IsPostBack)
        {
            rptFleet.DataSource = Fleet;
            rptFleet.DataBind();
            rptFaq.DataSource = Faqs;
            rptFaq.DataBind();
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid)
        {
            return;
        }
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
