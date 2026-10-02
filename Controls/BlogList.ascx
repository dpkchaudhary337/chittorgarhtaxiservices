<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BlogList.ascx.cs" Inherits="Controls_BlogList" %>
<div class="row">
    <asp:Repeater ID="rptPosts" runat="server" ItemType="BlogPost">
        <ItemTemplate>
            <div class="<%# ColumnCss %> mb-4">
                <article class="blog-card">
                    <a href="<%#: Item.Url %>" class="blog-cover <%#: Item.Theme %>" tabindex="-1" aria-hidden="true">
                        <i class="<%#: Item.Icon %>"></i>
                        <span class="blog-cat"><%#: Item.Category %></span>
                    </a>
                    <div class="blog-card-body">
                        <div class="blog-meta">
                            <span><i class="far fa-calendar-alt"></i><time datetime="<%# Item.Published.ToString("yyyy-MM-dd") %>"><%# Item.Published.ToString("dd MMM yyyy") %></time></span>
                            <span><i class="far fa-clock"></i><%# Item.ReadMinutes %> min read</span>
                        </div>
                        <h3><a href="<%#: Item.Url %>"><%#: Item.Title %></a></h3>
                        <p><%#: Item.Excerpt %></p>
                        <a class="link-arrow" href="<%#: Item.Url %>" aria-label="Read more: <%#: Item.Title %>">Read article <i class="fas fa-arrow-right" aria-hidden="true"></i></a>
                    </div>
                </article>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
