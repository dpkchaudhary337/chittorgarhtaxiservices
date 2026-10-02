using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Seo.Apply(this,
            "Contact Chittorgarh Taxi Services | Call +91 96022 68863",
            "Contact Chittorgarh Taxi Services to book a cab. Call +91 96022 68863, WhatsApp us or visit our office in Meera Nagar, Chittorgarh. Open 24x7.",
            "chittorgarh taxi contact number, chittorgarh taxi phone number, book taxi chittorgarh, taxi near me chittorgarh",
            "Contact.aspx");

        Seo.AddJsonLd(this, Seo.LocalBusinessSchema());
        Seo.AddJsonLd(this, Seo.BreadcrumbSchema("Contact Us", "Contact.aspx"));
    }
}
