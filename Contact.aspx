<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section class="page-hero">
        <div class="container">
            <nav aria-label="breadcrumb">
                <ol class="crumbs">
                    <li><a href="./">Home</a></li>
                    <li aria-current="page">Contact Us</li>
                </ol>
            </nav>
            <h1>Contact Chittorgarh Taxi Services</h1>
            <p>Call, WhatsApp or visit us to book a taxi in Chittorgarh. We are available 24 hours a day, 7 days a week.</p>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-3 mb-4">
                    <div class="contact-card">
                        <span class="service-icon"><i class="fas fa-phone-alt"></i></span>
                        <h2>Call Us</h2>
                        <p><a href="tel:<%: Seo.PhoneLink %>"><%: Seo.Phone %></a></p>
                        <p><a href="tel:<%: Seo.AltPhoneLink %>"><%: Seo.AltPhone %></a></p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 mb-4">
                    <div class="contact-card">
                        <span class="service-icon"><i class="fab fa-whatsapp"></i></span>
                        <h2>WhatsApp</h2>
                        <p>Quick replies, instant booking</p>
                        <p><a href="<%: Seo.WhatsAppLink("Hi, I want to book a taxi from Chittorgarh.") %>" target="_blank" rel="noopener">Chat with us</a></p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 mb-4">
                    <div class="contact-card">
                        <span class="service-icon"><i class="far fa-envelope"></i></span>
                        <h2>Email</h2>
                        <p><a href="mailto:<%: Seo.Email %>"><%: Seo.Email %></a></p>
                        <p><a href="mailto:<%: Seo.AltEmail %>"><%: Seo.AltEmail %></a></p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 mb-4">
                    <div class="contact-card">
                        <span class="service-icon"><i class="fas fa-map-marker-alt"></i></span>
                        <h2>Visit Us</h2>
                        <address class="mb-0">
                            <p><%: Seo.StreetAddress %>,<br /><%: Seo.City %>, <%: Seo.Region %> <%: Seo.PostalCode %></p>
                        </address>
                        <p><a href="<%: Seo.MapUrl %>" target="_blank" rel="noopener">Get directions</a></p>
                    </div>
                </div>
            </div>

            <div class="row align-items-center mt-4">
                <div class="col-lg-5 mb-4 mb-lg-0">
                    <span class="eyebrow">Find Us</span>
                    <h2 class="section-title">Located in the Heart of <span>Chittorgarh</span></h2>
                    <p class="section-lead mb-4">
                        Our office is in Meera Nagar near Ambe Market, a short drive from Chittorgarh railway station, the bus stand
                        and the road up to Chittorgarh Fort. Pickups are available from anywhere in the city.
                    </p>
                    <ul class="check-list">
                        <li><i class="fas fa-check"></i>Open 24 x 7</li>
                        <li><i class="fas fa-check"></i>Instant confirmation</li>
                        <li><i class="fas fa-check"></i>Doorstep pickup</li>
                        <li><i class="fas fa-check"></i>Local &amp; outstation trips</li>
                    </ul>
                </div>
                <div class="col-lg-7">
                    <div class="map-wrap">
                        <iframe title="Chittorgarh Taxi Services location on Google Maps" loading="lazy" referrerpolicy="no-referrer-when-downgrade"
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d904.8044561104547!2d74.62578592692053!3d24.89055056977341!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7176cf886252f530!2sChittorgarh%20Taxi%20Services!5e0!3m2!1sen!2sin!4v1595835426634!5m2!1sen!2sin"
                            allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
