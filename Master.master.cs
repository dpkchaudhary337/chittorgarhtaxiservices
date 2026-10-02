using System;
using System.IO;
using System.Web.UI;

public partial class Master : System.Web.UI.MasterPage
{
    private string currentPage;

    protected string CurrentPage
    {
        get
        {
            if (currentPage == null)
            {
                currentPage = Path.GetFileNameWithoutExtension(Request.AppRelativeCurrentExecutionFilePath) ?? string.Empty;
            }
            return currentPage;
        }
    }

    protected bool IsPage(string name)
    {
        if (string.Equals(name, "Blog", StringComparison.OrdinalIgnoreCase) && BlogRepository.Find(CurrentPage) != null)
        {
            return true;
        }
        return string.Equals(CurrentPage, name, StringComparison.OrdinalIgnoreCase);
    }

    protected string Active(string name)
    {
        return IsPage(name) ? " active" : string.Empty;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
    }
}
