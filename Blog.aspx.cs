using System;
using System.Linq;
using System.Web.UI;

public partial class Blog : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Seo.Apply(this,
            "Chittorgarh Travel Blog | Sightseeing, Routes and Taxi Guides",
            "Read Chittorgarh travel guides: fort timings, places to visit, Sanwariya Seth darshan, Udaipur taxi routes, airport transfers and outstation taxi fares.",
            "chittorgarh travel blog, chittorgarh travel guide, chittorgarh sightseeing, chittorgarh taxi blog",
            "Blog.aspx");

        Seo.AddJsonLd(this, Seo.Obj(
            "@context", "https://schema.org",
            "@type", "Blog",
            "name", "Chittorgarh Travel Blog",
            "url", Seo.AbsoluteUrl("Blog.aspx"),
            "publisher", Seo.Obj("@type", "Organization", "name", Seo.SiteName, "url", Seo.SiteUrl + "/"),
            "blogPost", BlogRepository.All().Select(p => Seo.Obj(
                "@type", "BlogPosting",
                "headline", p.Title,
                "url", Seo.AbsoluteUrl(p.Url),
                "datePublished", p.Published.ToString("yyyy-MM-dd"))).ToList()));
        Seo.AddJsonLd(this, Seo.BreadcrumbSchema("Blog", "Blog.aspx"));
    }
}
