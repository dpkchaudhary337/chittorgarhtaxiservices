using System;
using System.IO;
using System.Web;
using System.Web.UI;

/// <summary>
/// Shared layout for blog articles. The article metadata (title, description, dates...) is looked up
/// in BlogRepository using the page's file name as the slug.
/// </summary>
public partial class BlogPostMaster : MasterPage
{
    private BlogPost post;

    protected BlogPost Post
    {
        get
        {
            if (post == null)
            {
                string slug = Path.GetFileNameWithoutExtension(Request.AppRelativeCurrentExecutionFilePath);
                post = BlogRepository.Find(slug);
                if (post == null)
                {
                    throw new HttpException(404, "Blog post '" + slug + "' is not registered in BlogRepository.");
                }
            }
            return post;
        }
    }

    protected string ShareUrl
    {
        get { return Uri.EscapeDataString(Seo.AbsoluteUrl(Post.Url)); }
    }

    protected string ShareText
    {
        get { return Uri.EscapeDataString(Post.Title + " " + Seo.AbsoluteUrl(Post.Url)); }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Seo.Apply(Page, Post.MetaTitle, Post.Description, Post.Keywords, Post.Url, null, "article");

        string url = Seo.AbsoluteUrl(Post.Url);
        var publisher = Seo.Obj(
            "@type", "Organization",
            "name", Seo.SiteName,
            "url", Seo.SiteUrl + "/",
            "logo", Seo.Obj("@type", "ImageObject", "url", Seo.AbsoluteUrl("favicon.svg")));

        Seo.AddJsonLd(Page, Seo.Obj(
            "@context", "https://schema.org",
            "@type", "BlogPosting",
            "mainEntityOfPage", Seo.Obj("@type", "WebPage", "@id", url),
            "headline", Post.Title,
            "description", Post.Description,
            "image", Seo.AbsoluteUrl(Seo.DefaultImage),
            "datePublished", Post.Published.ToString("yyyy-MM-dd"),
            "dateModified", Post.Updated.ToString("yyyy-MM-dd"),
            "articleSection", Post.Category,
            "keywords", Post.Keywords,
            "author", Seo.Obj("@type", "Organization", "name", Seo.SiteName, "url", Seo.SiteUrl + "/"),
            "publisher", publisher));
        Seo.AddJsonLd(Page, Seo.BreadcrumbSchema("Blog", "Blog.aspx", Post.Title, Post.Url));

        relatedPosts.ExcludeSlug = Post.Slug;
        rptRecent.DataSource = BlogRepository.Latest(4, Post.Slug);
        rptRecent.DataBind();
    }
}
