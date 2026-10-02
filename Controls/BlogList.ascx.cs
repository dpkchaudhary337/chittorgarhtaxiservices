using System;
using System.Web.UI;

public partial class Controls_BlogList : UserControl
{
    private string columnCss = "col-md-6 col-lg-4";

    /// <summary>Number of posts to show; 0 shows all.</summary>
    public int Count { get; set; }

    /// <summary>Slug of a post to leave out (e.g. the article currently being read).</summary>
    public string ExcludeSlug { get; set; }

    public string ColumnCss
    {
        get { return columnCss; }
        set { columnCss = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        rptPosts.DataSource = BlogRepository.Latest(Count, ExcludeSlug);
        rptPosts.DataBind();
    }
}
