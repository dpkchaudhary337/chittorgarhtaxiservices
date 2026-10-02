using System;
using System.Collections.Generic;
using System.Configuration;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;

public static class Seo
{
    public const string SiteName = "Chittorgarh Taxi Services";
    public const string Phone = "+91 96022 68863";
    public const string PhoneLink = "+919602268863";
    public const string AltPhone = "+91 75684 20820";
    public const string AltPhoneLink = "+917568420820";
    public const string WhatsAppNumber = "919602268863";
    public const string Email = "chittorgarhtaxiservices@gmail.com";
    public const string AltEmail = "pvyas456@gmail.com";
    public const string StreetAddress = "Meera Nagar, Ambe Market 2-Block";
    public const string City = "Chittorgarh";
    public const string PostalCode = "312001";
    public const string Region = "Rajasthan";
    public const double Latitude = 24.890419;
    public const double Longitude = 74.626333;
    public const int FoundedYear = 2018;
    public const string DefaultImage = "images/banner11.jpg";
    public const string MapUrl = "https://www.google.com/maps/search/?api=1&query=Chittorgarh+Taxi+Services+Meera+Nagar+Chittorgarh";

    public static string SiteUrl
    {
        get
        {
            string url = ConfigurationManager.AppSettings["SiteUrl"];
            return string.IsNullOrEmpty(url) ? "http://www.chittorgarhtaxiservices.com" : url.TrimEnd('/');
        }
    }

    public static int YearsOfService
    {
        get { return DateTime.Now.Year - FoundedYear; }
    }

    public static string AbsoluteUrl(string relativePath)
    {
        return SiteUrl + "/" + (relativePath ?? string.Empty).TrimStart('~', '/');
    }

    public static string WhatsAppLink(string message)
    {
        return "https://wa.me/" + WhatsAppNumber + "?text=" + Uri.EscapeDataString(message);
    }

    /// <summary>
    /// Writes title, description, canonical, Open Graph and Twitter tags into the page head.
    /// Page.Title is rendered unencoded by ASP.NET, so it is encoded here.
    /// </summary>
    public static void Apply(Page page, string title, string description, string keywords, string path, string image, string ogType)
    {
        string url = AbsoluteUrl(path);
        string img = AbsoluteUrl(string.IsNullOrEmpty(image) ? DefaultImage : image);

        page.Title = HttpUtility.HtmlEncode(title);

        var sb = new StringBuilder();
        sb.AppendLine();
        Meta(sb, "name", "description", description);
        if (!string.IsNullOrEmpty(keywords))
        {
            Meta(sb, "name", "keywords", keywords);
        }
        sb.AppendFormat("    <link rel=\"canonical\" href=\"{0}\" />\n", HttpUtility.HtmlAttributeEncode(url));
        Meta(sb, "property", "og:type", string.IsNullOrEmpty(ogType) ? "website" : ogType);
        Meta(sb, "property", "og:site_name", SiteName);
        Meta(sb, "property", "og:locale", "en_IN");
        Meta(sb, "property", "og:title", title);
        Meta(sb, "property", "og:description", description);
        Meta(sb, "property", "og:url", url);
        Meta(sb, "property", "og:image", img);
        Meta(sb, "name", "twitter:card", "summary_large_image");
        Meta(sb, "name", "twitter:title", title);
        Meta(sb, "name", "twitter:description", description);
        Meta(sb, "name", "twitter:image", img);

        page.Header.Controls.Add(new LiteralControl(sb.ToString()));
    }

    public static void Apply(Page page, string title, string description, string keywords, string path)
    {
        Apply(page, title, description, keywords, path, null, "website");
    }

    private static void Meta(StringBuilder sb, string attr, string key, string content)
    {
        sb.AppendFormat("    <meta {0}=\"{1}\" content=\"{2}\" />\n", attr, key, HttpUtility.HtmlAttributeEncode(content));
    }

    /// <summary>Adds a JSON-LD structured data block to the page head.</summary>
    public static void AddJsonLd(Page page, object data)
    {
        string json = new JavaScriptSerializer().Serialize(data);
        page.Header.Controls.Add(new LiteralControl("\n    <script type=\"application/ld+json\">" + json + "</script>\n"));
    }

    /// <summary>Builds a dictionary from alternating key/value arguments (handy for "@type" style keys).</summary>
    public static Dictionary<string, object> Obj(params object[] keyValues)
    {
        var d = new Dictionary<string, object>();
        for (int i = 0; i + 1 < keyValues.Length; i += 2)
        {
            if (keyValues[i + 1] != null)
            {
                d[(string)keyValues[i]] = keyValues[i + 1];
            }
        }
        return d;
    }

    public static Dictionary<string, object> LocalBusinessSchema()
    {
        return Obj(
            "@context", "https://schema.org",
            "@type", "LocalBusiness",
            "@id", SiteUrl + "/#business",
            "name", SiteName,
            "description", "Taxi and cab hire in Chittorgarh for local sightseeing, Chittorgarh Fort tours, outstation trips, Udaipur airport and railway transfers.",
            "url", SiteUrl + "/",
            "image", AbsoluteUrl(DefaultImage),
            "telephone", PhoneLink,
            "email", Email,
            "priceRange", "Rs. 9 - 16 per km",
            "foundingDate", FoundedYear.ToString(),
            "address", Obj(
                "@type", "PostalAddress",
                "streetAddress", StreetAddress,
                "addressLocality", City,
                "addressRegion", Region,
                "postalCode", PostalCode,
                "addressCountry", "IN"),
            "geo", Obj("@type", "GeoCoordinates", "latitude", Latitude, "longitude", Longitude),
            "openingHoursSpecification", Obj(
                "@type", "OpeningHoursSpecification",
                "dayOfWeek", new[] { "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" },
                "opens", "00:00",
                "closes", "23:59"),
            "areaServed", new object[]
            {
                Obj("@type", "City", "name", "Chittorgarh"),
                Obj("@type", "City", "name", "Udaipur"),
                Obj("@type", "City", "name", "Bhilwara"),
                Obj("@type", "State", "name", "Rajasthan")
            },
            "hasOfferCatalog", Obj(
                "@type", "OfferCatalog",
                "name", "Taxi Services",
                "itemListElement", new object[]
                {
                    Offer("Local Taxi and Chittorgarh Fort Sightseeing"),
                    Offer("Outstation Taxi from Chittorgarh"),
                    Offer("Udaipur Airport Pickup and Drop"),
                    Offer("Railway Station Transfers"),
                    Offer("Sanwariya Seth Temple Darshan Taxi"),
                    Offer("Wedding and Corporate Car Rental")
                }));
    }

    private static Dictionary<string, object> Offer(string name)
    {
        return Obj("@type", "Offer", "itemOffered", Obj("@type", "Service", "name", name));
    }

    /// <summary>Breadcrumb schema. Pass alternating name/path pairs, starting after "Home".</summary>
    public static Dictionary<string, object> BreadcrumbSchema(params string[] namePathPairs)
    {
        var items = new List<object>();
        items.Add(Obj("@type", "ListItem", "position", 1, "name", "Home", "item", SiteUrl + "/"));
        for (int i = 0; i + 1 < namePathPairs.Length; i += 2)
        {
            items.Add(Obj("@type", "ListItem", "position", items.Count + 1, "name", namePathPairs[i], "item", AbsoluteUrl(namePathPairs[i + 1])));
        }
        return Obj("@context", "https://schema.org", "@type", "BreadcrumbList", "itemListElement", items);
    }
}
