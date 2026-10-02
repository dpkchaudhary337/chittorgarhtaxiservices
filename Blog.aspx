<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="Blog" %>
<%@ Register Src="~/Controls/BlogList.ascx" TagPrefix="uc" TagName="BlogList" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="page-hero">
        <div class="container">
            <nav aria-label="breadcrumb">
                <ol class="crumbs">
                    <li><a href="./">Home</a></li>
                    <li aria-current="page">Blog</li>
                </ol>
            </nav>
            <h1>Chittorgarh Travel Blog</h1>
            <p>Travel guides, sightseeing ideas, route tips and taxi fare guides to help you plan the perfect trip in and around Chittorgarh.</p>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <uc:BlogList ID="allPosts" runat="server" Count="0" />
        </div>
    </section>
</asp:Content>
