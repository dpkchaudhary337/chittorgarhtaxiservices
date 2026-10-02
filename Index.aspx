<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>
<%@ Register Src="~/Controls/BlogList.ascx" TagPrefix="uc" TagName="BlogList" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
    <link rel="preload" as="image" href="images/banner11.jpg" />
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Hero -->
    <section class="hero">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-7">
                    <span class="eyebrow"><i class="fas fa-map-marker-alt"></i>Chittorgarh, Rajasthan</span>
                    <h1>Reliable <span>Taxi Service in Chittorgarh</span> &ndash; Book a Cab 24 x 7</h1>
                    <p class="hero-lead">
                        Clean cars, courteous local drivers and honest per-km fares for Chittorgarh Fort sightseeing,
                        Udaipur airport transfers, Sanwariya Seth darshan and outstation trips across Rajasthan.
                    </p>
                    <ul class="hero-points">
                        <li><i class="fas fa-check-circle"></i>Fares from &#8377;9/km</li>
                        <li><i class="fas fa-check-circle"></i>No hidden charges</li>
                        <li><i class="fas fa-check-circle"></i>Airport &amp; railway pickup</li>
                        <li><i class="fas fa-check-circle"></i>One-way &amp; round trips</li>
                    </ul>
                    <div class="hero-actions">
                        <a class="btn-brand" href="tel:<%: Seo.PhoneLink %>"><i class="fas fa-phone-alt"></i>Call <%: Seo.Phone %></a>
                        <a class="btn-outline-light-ink" href="<%: Seo.WhatsAppLink("Hi, I want to book a taxi from Chittorgarh.") %>" target="_blank" rel="noopener"><i class="fab fa-whatsapp"></i>Book on WhatsApp</a>
                    </div>
                    <div class="hero-rating">
                        <span class="stars" aria-hidden="true"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></span>
                        <span>Trusted by <strong class="text-white">2,800+</strong> happy travellers since 2018</span>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="booking-card" id="book">
                        <h2>Book Your Taxi</h2>
                        <p class="booking-sub">Share your details and we will call you back within minutes.</p>

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtName" Text="Full name" />
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="e.g. Rahul Sharma" autocomplete="name" MaxLength="80" />
                            <asp:RequiredFieldValidator ID="reqName" runat="server" ControlToValidate="txtName" ValidationGroup="validate"
                                Display="Dynamic" CssClass="field-error" ErrorMessage="Please enter your name." SetFocusOnError="true" />
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtMobile" Text="Mobile number" />
                            <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" TextMode="Phone" placeholder="10-digit mobile number" autocomplete="tel" MaxLength="15" />
                            <asp:RequiredFieldValidator ID="rfvtxtContactNumber" runat="server" ControlToValidate="txtMobile" ValidationGroup="validate"
                                Display="Dynamic" CssClass="field-error" ErrorMessage="Please enter your mobile number." SetFocusOnError="true" />
                            <asp:RegularExpressionValidator ID="revMobile" runat="server" ControlToValidate="txtMobile" ValidationGroup="validate"
                                ValidationExpression="^(\+91[\-\s]?|0)?[6-9]\d{9}$" Display="Dynamic" CssClass="field-error"
                                ErrorMessage="Please enter a valid 10-digit mobile number." />
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtEmailID" Text="Email address" />
                            <asp:TextBox ID="txtEmailID" runat="server" CssClass="form-control" TextMode="Email" placeholder="you@example.com" autocomplete="email" MaxLength="120" />
                            <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmailID" ValidationGroup="validate"
                                Display="Dynamic" CssClass="field-error" ErrorMessage="Please enter your email address." />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailID" ValidationGroup="validate"
                                ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                                Display="Dynamic" CssClass="field-error" ErrorMessage="Please enter a valid email address." />
                        </div>
                        <asp:Button ID="btnSubmit" runat="server" Text="Book Now" CssClass="btn-brand btn-block-full" ValidationGroup="validate" OnClick="btnSubmit_Click" />
                        <p class="booking-note"><i class="fas fa-shield-alt"></i> Your details are safe with us. No spam, ever.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Feature strip -->
    <section class="feature-strip" aria-label="Why travel with us">
        <div class="container">
            <div class="feature-strip-inner">
                <div class="feature-item"><i class="fas fa-car"></i><h3>Clean Cars</h3><p>Sanitised &amp; well maintained</p></div>
                <div class="feature-item"><i class="fas fa-user-tie"></i><h3>Courteous Drivers</h3><p>Verified &amp; experienced</p></div>
                <div class="feature-item"><i class="far fa-clock"></i><h3>Always On Time</h3><p>Punctual pickups</p></div>
                <div class="feature-item"><i class="fas fa-rupee-sign"></i><h3>Affordable</h3><p>Honest per-km pricing</p></div>
                <div class="feature-item"><i class="fas fa-headset"></i><h3>24 x 7 Support</h3><p>Call or WhatsApp anytime</p></div>
            </div>
        </div>
    </section>

    <!-- About -->
    <section class="section about" id="about">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 mb-5 mb-lg-0 reveal">
                    <div class="about-media">
                        <img src="images/car.jpg" alt="Clean, well-maintained taxi ready for a trip in Chittorgarh" width="900" height="601" loading="lazy" />
                        <div class="about-badge"><strong><%= Seo.YearsOfService %>+</strong><span>Years of service</span></div>
                    </div>
                </div>
                <div class="col-lg-6 pl-lg-5 reveal">
                    <span class="eyebrow">About Us</span>
                    <h2 class="section-title">Your Trusted <span>Taxi Partner</span> in Chittorgarh</h2>
                    <p>
                        Chittorgarh Taxi Services is your one-stop shop for renting or hiring taxi cabs in Chittorgarh.
                        Since 2018 we have been serving inter-city trips, airport transfers and local daily tours for families,
                        tourists, pilgrims and business travellers.
                    </p>
                    <p>
                        We also partner with corporates and travel companies for all their road travel needs. Every trip is handled by a
                        local driver who knows the city, the fort roads and the highways of Mewar inside out.
                    </p>
                    <ul class="check-list">
                        <li><i class="fas fa-check"></i>Chittorgarh Fort sightseeing</li>
                        <li><i class="fas fa-check"></i>Udaipur airport transfers</li>
                        <li><i class="fas fa-check"></i>Railway station pickup</li>
                        <li><i class="fas fa-check"></i>Outstation &amp; one-way trips</li>
                        <li><i class="fas fa-check"></i>Temple &amp; pilgrimage tours</li>
                        <li><i class="fas fa-check"></i>Wedding &amp; corporate hire</li>
                    </ul>
                    <a class="btn-dark-ink" href="#services">Explore Our Services <i class="fas fa-arrow-right"></i></a>
                </div>
            </div>
        </div>
    </section>

    <!-- Services -->
    <section class="section bg-soft" id="services">
        <div class="container">
            <div class="section-head">
                <span class="eyebrow">Our Services</span>
                <h2 class="section-title">Taxi Services for <span>Every Journey</span></h2>
                <p class="section-lead">Whether it is a quick city ride or a week-long Rajasthan tour, we have the right car and driver for you.</p>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-4 mb-4 reveal">
                    <div class="service-card">
                        <span class="service-icon"><i class="fab fa-fort-awesome"></i></span>
                        <h3>Local Sightseeing &amp; Fort Tour</h3>
                        <p>Half-day and full-day taxis covering Chittorgarh Fort, Vijay Stambh, Padmini Palace, Meera Temple and more.</p>
                        <a class="link-arrow" href="Chittorgarh-Fort-Travel-Guide.aspx">Fort travel guide <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-4 reveal">
                    <div class="service-card">
                        <span class="service-icon"><i class="fas fa-road"></i></span>
                        <h3>Outstation Taxi</h3>
                        <p>Comfortable round trips and one-way drops to Udaipur, Jaipur, Ajmer, Kota, Indore, Ahmedabad and beyond.</p>
                        <a class="link-arrow" href="Outstation-Taxi-from-Chittorgarh.aspx">Routes &amp; fares <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-4 reveal">
                    <div class="service-card">
                        <span class="service-icon"><i class="fas fa-plane-arrival"></i></span>
                        <h3>Airport &amp; Railway Transfers</h3>
                        <p>Timely pickup and drop for Udaipur's Maharana Pratap Airport and Chittorgarh railway station, day or night.</p>
                        <a class="link-arrow" href="Udaipur-Airport-to-Chittorgarh-Taxi.aspx">Airport transfer guide <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-4 reveal">
                    <div class="service-card">
                        <span class="service-icon"><i class="fas fa-place-of-worship"></i></span>
                        <h3>Sanwariya Seth Darshan</h3>
                        <p>Hassle-free temple trips to Shri Sanwaliya Ji, Matri Kundiya and other sacred sites around Chittorgarh.</p>
                        <a class="link-arrow" href="Sanwariya-Seth-Temple-Taxi-from-Chittorgarh.aspx">Plan your darshan <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-4 reveal">
                    <div class="service-card">
                        <span class="service-icon"><i class="fas fa-route"></i></span>
                        <h3>Chittorgarh to Udaipur Taxi</h3>
                        <p>The most popular route from Chittorgarh. Sedans, SUVs and tempo-style vehicles for groups of every size.</p>
                        <a class="link-arrow" href="Chittorgarh-to-Udaipur-Taxi.aspx">Udaipur route guide <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-4 reveal">
                    <div class="service-card">
                        <span class="service-icon"><i class="fas fa-briefcase"></i></span>
                        <h3>Wedding &amp; Corporate Hire</h3>
                        <p>Multiple cars for weddings, events, conferences and corporate guests with reliable, uniformed drivers.</p>
                        <a class="link-arrow" href="Contact.aspx">Request a quote <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Fleet -->
    <section class="section" id="fleet">
        <div class="container">
            <div class="section-head">
                <span class="eyebrow">Our Fleet</span>
                <h2 class="section-title">Cars &amp; Taxis Available <span>for Rent</span></h2>
                <p class="section-lead">Choose the right vehicle for your group. All cars are air-conditioned and driven by experienced local drivers.</p>
            </div>
            <div class="row justify-content-center">
                <asp:Repeater ID="rptFleet" runat="server">
                    <ItemTemplate>
                        <div class="col-md-6 col-lg-4 mb-4 reveal">
                            <article class="fleet-card">
                                <div class="fleet-img">
                                    <img src="images/<%# Eval("Image") %>" alt="<%# Eval("Name") %> taxi for hire in Chittorgarh" width="640" height="420" loading="lazy" />
                                    <span class="fleet-tag"><%# Eval("Type") %></span>
                                </div>
                                <div class="fleet-body">
                                    <h3><%# Eval("Name") %></h3>
                                    <ul class="fleet-specs">
                                        <li><i class="fas fa-user-friends"></i><%# Eval("Seats") %> passengers</li>
                                        <li><i class="fas fa-snowflake"></i>AC</li>
                                        <li><i class="fas fa-route"></i>Local &amp; outstation</li>
                                    </ul>
                                    <div class="fleet-foot">
                                        <div class="fleet-price">&#8377;<%# Eval("Rate") %><small>per km</small></div>
                                        <a class="btn-brand" href="<%# Seo.WhatsAppLink("Hi, I want to book a " + Eval("Name") + " taxi from Chittorgarh.") %>" target="_blank" rel="noopener">Book <%# Eval("Name") %></a>
                                    </div>
                                </div>
                            </article>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <p class="routes-note text-center">Fares are indicative. Toll tax, parking, state permit and driver night allowance are extra where applicable.</p>
        </div>
    </section>

    <!-- Stats -->
    <section class="stats-band" aria-label="Our numbers">
        <div class="container">
            <div class="row">
                <div class="col-6 col-md-3">
                    <div class="stat"><i class="fas fa-taxi"></i><p class="stat-number" data-count="35" data-suffix="+">35+</p><p class="stat-label">Vehicles</p></div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="stat"><i class="fas fa-plane-arrival"></i><p class="stat-number" data-count="280" data-suffix="+">280+</p><p class="stat-label">Airport pickups &amp; drops</p></div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="stat"><i class="far fa-calendar-check"></i><p class="stat-number" data-count="<%= Seo.YearsOfService %>" data-suffix="+"><%= Seo.YearsOfService %>+</p><p class="stat-label">Years of service</p></div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="stat"><i class="far fa-smile"></i><p class="stat-number" data-count="2800" data-suffix="+">2,800+</p><p class="stat-label">Happy clients</p></div>
                </div>
            </div>
        </div>
    </section>

    <!-- Why choose us -->
    <section class="section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-5 mb-5 mb-lg-0">
                    <span class="eyebrow">Why Choose Us</span>
                    <h2 class="section-title">Instant, Friendly Support <span>24/7</span> &ndash; Wherever You Are</h2>
                    <p class="section-lead mb-4">
                        We are a local Chittorgarh business, not a faceless app. You talk directly to the people who own the cars,
                        so you always get a straight answer and a fair price.
                    </p>
                    <a class="btn-brand" href="#book"><i class="fas fa-taxi"></i>Book a Taxi</a>
                </div>
                <div class="col-lg-7 pl-lg-5">
                    <div class="row">
                        <div class="col-md-6 reveal">
                            <div class="why-item"><span class="why-icon"><i class="fas fa-rupee-sign"></i></span><div><h3>Competitive Prices</h3><p>Clear per-km rates shared upfront. No surge pricing and no surprise charges at the end of the trip.</p></div></div>
                        </div>
                        <div class="col-md-6 reveal">
                            <div class="why-item"><span class="why-icon"><i class="fas fa-shield-alt"></i></span><div><h3>Fast &amp; Safe</h3><p>Well-serviced vehicles, safe driving and GPS-ready drivers to get you there quickly and securely.</p></div></div>
                        </div>
                        <div class="col-md-6 reveal">
                            <div class="why-item"><span class="why-icon"><i class="fas fa-id-card"></i></span><div><h3>Trained, Skilled Drivers</h3><p>Experienced, polite drivers who know local routes, highways and every corner of Chittorgarh Fort.</p></div></div>
                        </div>
                        <div class="col-md-6 reveal">
                            <div class="why-item"><span class="why-icon"><i class="fas fa-female"></i></span><div><h3>Family &amp; Women Friendly</h3><p>Comfortable, respectful service trusted by families, solo women travellers and senior citizens.</p></div></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Popular routes -->
    <section class="section bg-soft" id="routes">
        <div class="container">
            <div class="section-head">
                <span class="eyebrow">Popular Routes</span>
                <h2 class="section-title">Outstation Taxi <span>from Chittorgarh</span></h2>
                <p class="section-lead">Approximate road distances and drive times for our most requested destinations.</p>
            </div>
            <div class="routes-table reveal">
                <div class="table-responsive">
                    <table>
                        <thead>
                            <tr><th scope="col">Route</th><th scope="col">Distance</th><th scope="col">Drive time</th><th scope="col">Best for</th></tr>
                        </thead>
                        <tbody>
                            <tr><td><a href="Chittorgarh-to-Udaipur-Taxi.aspx">Chittorgarh to Udaipur</a></td><td>~115 km</td><td>2 - 2.5 hrs</td><td>Lakes, palaces, airport</td></tr>
                            <tr><td><a href="Udaipur-Airport-to-Chittorgarh-Taxi.aspx">Udaipur Airport to Chittorgarh</a></td><td>~90 km</td><td>1.5 - 2 hrs</td><td>Flight arrivals</td></tr>
                            <tr><td><a href="Sanwariya-Seth-Temple-Taxi-from-Chittorgarh.aspx">Chittorgarh to Sanwariya Seth</a></td><td>~40 km</td><td>45 - 60 min</td><td>Temple darshan</td></tr>
                            <tr><td><a href="Outstation-Taxi-from-Chittorgarh.aspx">Chittorgarh to Bhilwara</a></td><td>~60 km</td><td>1 - 1.5 hrs</td><td>Business trips</td></tr>
                            <tr><td><a href="Outstation-Taxi-from-Chittorgarh.aspx">Chittorgarh to Ajmer / Pushkar</a></td><td>~190 km</td><td>3.5 - 4 hrs</td><td>Dargah, Pushkar lake</td></tr>
                            <tr><td><a href="Outstation-Taxi-from-Chittorgarh.aspx">Chittorgarh to Jaipur</a></td><td>~310 km</td><td>5 - 6 hrs</td><td>Capital city, airport</td></tr>
                            <tr><td><a href="Outstation-Taxi-from-Chittorgarh.aspx">Chittorgarh to Kota</a></td><td>~160 km</td><td>3 hrs</td><td>Coaching city, Chambal</td></tr>
                            <tr><td><a href="Outstation-Taxi-from-Chittorgarh.aspx">Chittorgarh to Indore</a></td><td>~330 km</td><td>6 - 7 hrs</td><td>Madhya Pradesh trips</td></tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <p class="routes-note text-center">Distances are approximate and depend on the exact pickup point and route taken. Call us for an exact quote.</p>
        </div>
    </section>

    <!-- Testimonials -->
    <section class="section" id="testimonials">
        <div class="container">
            <div class="section-head">
                <span class="eyebrow">Testimonials</span>
                <h2 class="section-title">What Our <span>Happy Customers</span> Say</h2>
                <p class="section-lead">Over 2,500 travellers have trusted us with their journeys. Here is what a few of them said.</p>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-4 mb-4 reveal">
                    <figure class="testimonial-card">
                        <i class="fas fa-quote-right quote-icon" aria-hidden="true"></i>
                        <div class="stars" aria-label="Rated 5 out of 5"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
                        <blockquote>Best driver, very good service and luxury vehicles at fair prices. Thank you, sir ji!</blockquote>
                        <figcaption class="testimonial-person">
                            <img src="images/t1.jpg" alt="Deepak J Choudhary" width="52" height="52" loading="lazy" />
                            <div><strong>Deepak J Choudhary</strong><span>Jaipur</span></div>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-md-6 col-lg-4 mb-4 reveal">
                    <figure class="testimonial-card">
                        <i class="fas fa-quote-right quote-icon" aria-hidden="true"></i>
                        <div class="stars" aria-label="Rated 5 out of 5"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
                        <blockquote>Reliable and genuine service. Had a really nice experience &ndash; the best taxi service in Chittorgarh.</blockquote>
                        <figcaption class="testimonial-person">
                            <img src="images/t2.png" alt="Mukesh Chasta" width="52" height="52" loading="lazy" />
                            <div><strong>Mukesh Chasta</strong><span>Chittorgarh</span></div>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-md-6 col-lg-4 mb-4 reveal">
                    <figure class="testimonial-card">
                        <i class="fas fa-quote-right quote-icon" aria-hidden="true"></i>
                        <div class="stars" aria-label="Rated 5 out of 5"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
                        <blockquote>Best customer service, good job! If anyone visits Chittorgarh, they must try this taxi service.</blockquote>
                        <figcaption class="testimonial-person">
                            <img src="images/t3.png" alt="Tarun Gawer" width="52" height="52" loading="lazy" />
                            <div><strong>Tarun Gawer</strong><span>Jaipur</span></div>
                        </figcaption>
                    </figure>
                </div>
            </div>
        </div>
    </section>

    <!-- Team -->
    <section class="section bg-soft">
        <div class="container">
            <div class="section-head">
                <span class="eyebrow">Our Team</span>
                <h2 class="section-title">The People <span>Behind Your Ride</span></h2>
            </div>
            <div class="row justify-content-center">
                <div class="col-sm-6 col-lg-3 mb-4 reveal">
                    <div class="team-card">
                        <img src="images/team4.jpg" alt="Mahaveer Vyas, Accounts Manager at Chittorgarh Taxi Services" width="500" height="530" loading="lazy" />
                        <div class="team-body"><h3>Mahaveer Vyas</h3><span>Accounts Manager</span></div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3 mb-4 reveal">
                    <div class="team-card">
                        <img src="images/team1.jpg" alt="Himanshu, Marketing Head at Chittorgarh Taxi Services" width="500" height="530" loading="lazy" />
                        <div class="team-body"><h3>Himanshu</h3><span>Marketing Head</span></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Blog -->
    <section class="section" id="blog">
        <div class="container">
            <div class="section-head">
                <span class="eyebrow">Travel Blog</span>
                <h2 class="section-title">Chittorgarh <span>Travel Guides</span> &amp; Tips</h2>
                <p class="section-lead">Helpful guides to plan your sightseeing, temple visits and road trips from Chittorgarh.</p>
            </div>
            <uc:BlogList ID="latestPosts" runat="server" Count="3" />
            <div class="text-center mt-2">
                <a class="btn-dark-ink" href="Blog.aspx">View All Articles <i class="fas fa-arrow-right"></i></a>
            </div>
        </div>
    </section>

    <!-- FAQ -->
    <section class="section bg-soft" id="faq">
        <div class="container">
            <div class="section-head">
                <span class="eyebrow">FAQs</span>
                <h2 class="section-title">Frequently Asked <span>Questions</span></h2>
                <p class="section-lead">Quick answers about booking a taxi in Chittorgarh.</p>
            </div>
            <div class="faq-list">
                <asp:Repeater ID="rptFaq" runat="server">
                    <ItemTemplate>
                        <details class="faq-item"<%# Container.ItemIndex == 0 ? " open" : "" %>>
                            <summary><%#: Eval("Question") %></summary>
                            <div class="faq-answer"><p><%#: Eval("Answer") %></p></div>
                        </details>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </section>

    <!-- Booking success modal -->
    <div id="bookingModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="bookingModalTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-success">
                    <span class="success-icon"><i class="fas fa-check"></i></span>
                    <h2 id="bookingModalTitle">Enquiry sent successfully!</h2>
                    <p><asp:Literal ID="litMessage" runat="server" Text="Thank you. We will contact you back very soon." /></p>
                    <button type="button" class="btn-brand" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
