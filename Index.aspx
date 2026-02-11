<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chittorgarh Taxi Services | Taxi in Chittorgarh | Taxi services in Chittorgarh | Taxi Hire Chittorgarh</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta charset="utf-8" />
    <meta name="keywords" content="Chittorgarh taxi services, Chittorgarh car rental, chittorgarh taxi, chittorgarh book taxi, rental, taxi, car service chittorgarh" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all" />
    <link rel="stylesheet" href="css/owl.theme.css" type="text/css" media="all" />
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link href="css/fontawesome-all.css" rel="stylesheet" />
    <link href="//fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <!--/banner-w3layouts-sec-->
        <div class="banner-w3layouts">
            <header>
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <a class="navbar-brand" href="Index.aspx">Chittorgarh Taxi</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon">
                            <i class="fas fa-bars"></i>
                        </span>

                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="Index.aspx">Home
								<span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="nav-item ml-xl-2">
                                <a class="nav-link" href="javacript:void(0);" onclick="scrolltoPosition('about')">About</a>
                            </li>
                            <li class="nav-item ml-xl-2">
                                <a class="nav-link" href="javacript:void(0);" onclick="scrolltoPosition('testimonials')">Testimonials</a>
                            </li>
                            <li class="nav-item ml-xl-2">
                                <a class="nav-link" href="javacript:void(0);" onclick="scrolltoPosition('service')">Services</a>
                            </li>
                            <li class="nav-item ml-xl-2">
                                <a class="nav-link" href="Best-Taxi-Service-Chittorgarh.aspx">Best Taxi Service</a>
                            </li>
                            <li class="nav-item ml-xl-2">
                                <a class="nav-link" href="Contact.aspx">Contact</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!--banner-w3layouts-->
            <div class="banner-w3layouts-info">
                <!--/search_form -->
                <div id="search_form" class="search_top text-center">
                    <h3>Book Your Taxi Now</h3>
                    <p>We offers best car hire rates with no compromised in facility.</p>
                    <div class="ban-form bookTaxi">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-3 banf">
                                    <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ValidationGroup="validate" ID="reqName" runat="server" ControlToValidate="txtName" Display="Dynamic" ForeColor="Red" ErrorMessage="Please enter Name."></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-3 banf">
                                    <asp:TextBox ID="txtMobile" runat="server" class="form-control" placeholder="Mobile No."></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvtxtContactNumber" runat="server" ControlToValidate="txtMobile"
                                        ValidationGroup="validate" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Enter Contact Number." SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-md-3 banf">
                                    <asp:TextBox ID="txtEmailID" runat="server" class="form-control" placeholder="Email ID"></asp:TextBox>
                                    <asp:RequiredFieldValidator ValidationGroup="validate" ID="reqEmail" runat="server" ControlToValidate="txtEmailID" Display="Dynamic" ForeColor="Red" ErrorMessage="Please enter EmailID."></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailID" ValidationGroup="validate"
                                        ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                                        Display="Dynamic" ErrorMessage="Invalid email address" />
                                </div>
                                <div class="col-md-3 banf">
                                    <asp:Button ID="btnSubmit" runat="server" Text="Book Now" CssClass="btn btn-warning" OnClick="btnSubmit_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--//search_form -->
            </div>
            <!--//banner-w3layouts-->
        </div>
        <!--//banner-w3layouts-sec-->
        <section class="banner-w3layouts-bottom py-lg-5 py-3">
            <div class="container py-lg-4 py-3">
                <div class="inner-sec-agileits-w3ls">
                    <div class="owl-carousel owl-theme">
                        <div class="item">
                            <div class="gd-box-info text-center p-lg-4 p-4 rounded">
                                <div class="gd-box-con">
                                    <i class="fas fa-taxi"></i>
                                    <h4>Clean Car</h4>
                                    <p>Drive</p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="gd-box-info text-center p-lg-4 p-4 rounded">
                                <div class="gd-box-con">
                                    <i class="far fa-building"></i>
                                    <h4>Courteous</h4>
                                    <p>Drive</p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="gd-box-info text-center p-lg-4 p-4 rounded">
                                <div class="gd-box-con">
                                    <i class="fas fa-clock"></i>
                                    <h4>On Time</h4>
                                    <p>Services</p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="gd-box-info text-center p-lg-4 p-4 rounded">
                                <div class="gd-box-con">
                                    <i class="far fa-building"></i>
                                    <h4>Affordable</h4>
                                    <p>Prices</p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="gd-box-info text-center p-lg-4 p-4 rounded">
                                <div class="gd-box-con">
                                    <i class="far fa-building"></i>
                                    <h4>Fast & Safe</h4>
                                    <p>Drive</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
        <!-- about -->
        <section class="about">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 p-0">
                        <img src="images/car.jpg" alt="Realtie" class="img-fluid" />
                    </div>
                    <div class="col-lg-6 about-info">
                        <h3 class="tittle text-left mb-lg-5 mb-3">About Us</h3>
                        <p class="my-xl-4 my-lg-3 my-md-4 my-3">
                            Chittorgarh Taxi Services is your one-stop shop for renting or hiring 
                             taxi cabs in Chittorgarh. We serve trips for inter-city, airport
                             transfers and even local daily tours. We partner with corporates and 
                            travel companies for all road travel needs.
                        </p>

                        <a href="#" class="btn btn-sm animated-button gibson-three">Read More</a>

                    </div>

                </div>
            </div>
        </section>
        <!-- /about -->
        <!--/banner-w3layouts-bottom -->
        <section class="banner-w3layouts-bottom py-lg-5 py-3">
            <div class="container py-lg-4 py-3">
                <h3 class="tittle ser text-center mx-auto mb-lg-5 mb-3 ">Provide instant, seamless customer support 24/7 from anywhere you are!</h3>
                <div class="inner-sec-agileits-w3ls">
                    <div class="row pt-lg-3">
                        <div class="serve-grid col-md-4 col-sm-6 mt-lg-5 text-center">
                            <i class="fab fa-react"></i>
                            <h4 class="my-lg-4 my-3">Competitive Prices</h4>
                            <p>
                                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its
							layout.
                            </p>
                        </div>
                        <div class="serve-grid col-md-4 col-sm-6 mt-lg-5 text-center">
                            <i class="fab fa-codepen"></i>
                            <h4 class="my-lg-4 my-3">Fast & Safe</h4>
                            <p>
                                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its
							layout.
                            </p>
                        </div>
                        <div class="serve-grid col-md-4 col-sm-6 mt-lg-5 text-center">
                            <i class="far fa-edit"></i>
                            <h4 class="my-lg-4 my-3">Trained And Skilled Drivers</h4>
                            <p>
                                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its
							layout.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--//banner-w3layouts-bottom -->
        <!--/process-->
        <section class="service banner-w3layouts-bottom py-lg-5 py-3" id="plats">
            <div class="container py-lg-4 py-3">
                <h3 class="tittle text-center">Available Cars/Taxis For Rent</h3>
                <div class="row inner-sec-agileits-w3ls">
                    <div class="tabs">
                        <div class="tab-content" id="pills-tabContent">
                            <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                                <div class="menu-grids mt-4">

                                    <div class="row t-in">
                                        <div class="col-lg-4 text-info-sec">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img src="images/innova.jpg" alt="Realtie" class="img-fluid" />
                                                    <h5 class="card-title mt-3">Innova
														<span>14-15 ₹/Km</span>
                                                    </h5>
                                                    <p class="card-text">
                                                        <i class="fas fa-user"></i>&nbsp;Capacity : 7 Person
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 text-info-sec">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img src="images/swift.jpg" alt="Realtie" class="img-fluid" />
                                                    <h5 class="card-title mt-3">Swift
														<span>9-10 ₹/Km</span>
                                                    </h5>
                                                    <p class="card-text">
                                                        <i class="fas fa-user"></i>&nbsp;Capacity : 4 Person
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 text-info-sec">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img src="images/tavera.jpg" alt="Realtie" class="img-fluid" />
                                                    <h5 class="card-title mt-3">Tavera
														<span>12-13 ₹/Km</span>
                                                    </h5>
                                                    <p class="card-text">
                                                        <i class="fas fa-user"></i>&nbsp;Capacity : 9 Person
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row t-in mt-4">
                                        <div class="col-lg-4 text-info-sec">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img src="images/etios.jpg" alt="Realtie" class="img-fluid" />
                                                    <h5 class="card-title mt-3">Etios
														<span>11-12₹/Km</span>
                                                    </h5>
                                                    <p class="card-text">
                                                        <i class="fas fa-user"></i>&nbsp;Capacity : 4 Person
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 text-info-sec">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img src="images/indigo.jpg" alt="Realtie" class="img-fluid" />
                                                    <h5 class="card-title mt-3">Indigo
														<span>9-10 ₹/Km</span>
                                                    </h5>
                                                    <p class="card-text">
                                                        <i class="fas fa-user"></i>&nbsp;Capacity : 4 Person
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 text-info-sec">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img src="images/ertiga.jpg" alt="Realtie" class="img-fluid" />
                                                    <h5 class="card-title mt-3">Ertiga
														<span>11-12 ₹/Km</span>
                                                    </h5>
                                                    <p class="card-text">
                                                        <i class="fas fa-user"></i>&nbsp;Capacity : 6 Person
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row t-in mt-4">
                                        <div class="col-lg-4 text-info-sec">
                                            <div class="card">
                                                <div class="card-body">
                                                    <img src="images/Cruiser.jpg" alt="Realtie" class="img-fluid" />
                                                    <h5 class="card-title mt-3">Cruiser
														<span>15-16 ₹/Km</span>
                                                    </h5>
                                                    <p class="card-text">
                                                        <i class="fas fa-user"></i>&nbsp;Capacity : 12 Person
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--//preocess-->
        <!-- stats -->
        <section class="stats_test pb-5 container-fluid">
            <div class="row inner_stat_wthree_agileits">
                <div class="col-sm-3 col-6 py-5 stats_info counter_grid">
                    <i class="fas fa-taxi"></i>
                    <p class="counter">35</p>
                    <h4>Vehicles</h4>
                </div>
                <div class="col-sm-3 col-6 py-5 stats_info counter_grid1">
                    <i class="fas fa-users"></i>
                    <p class="counter">280</p>
                    <h4>Airport Pickup And Drop</h4>
                </div>
                <div class="col-sm-3 col-6 py-5 stats_info counter_grid2">
                    <i class="far fa-edit"></i>
                    <p class="counter">7</p>
                    <h4>Years of Service</h4>
                </div>
                <div class="col-sm-3 col-6 py-5 stats_info counter_grid3">
                    <i class="far fa-smile"></i>
                    <p class="counter">2800</p>
                    <h4>Happy Clients</h4>
                </div>
            </div>
        </section>
        <!-- //stats -->
        <!--/features-->
        <section class="banner-w3layouts-bottom py-lg-5 py-3">
            <div class="container py-lg-4 py-3">
                <h3 class="tittle text-center">Partners</h3>

                <div class="row justify-content-center inner-sec-agileits-w3ls mt-lg-5 mt-3">
                    <div class="col-sm-4">
                        <div class="team-grid text-center">
                            <div class="team-img">
                                <img class="img-fluid rounded" src="images/team4.jpg" alt="">
                            </div>
                            <div class="team-info">
                                <h4>Mahaveer Vyas</h4>
                                <span>Accounts Manager</span>
                                <ul class="d-flex justify-content-center py-3 social-icons">
                                    <li>
                                        <a href="#">
                                            <i class="fab fa-facebook-f"></i>
                                        </a>
                                    </li>
                                    <li class="mx-3">
                                        <a href="#">
                                            <i class="fab fa-twitter"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fab fa-google-plus-g"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="team-grid text-center">
                            <div class="team-img">
                                <img class="img-fluid rounded" src="images/team1.jpg" alt="">
                            </div>
                            <div class="team-info">
                                <h4>Himanshu</h4>
                                <span>Marketing Head</span>
                                <ul class="d-flex justify-content-center py-3 social-icons">
                                    <li>
                                        <a href="#">
                                            <i class="fab fa-facebook-f"></i>
                                        </a>
                                    </li>
                                    <li class="mx-3">
                                        <a href="#">
                                            <i class="fab fa-twitter"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fab fa-google-plus-g"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //end row -->
            </div>
        </section>
        <!--//features-->
        <!--/middle-->
        <section class="middle banner-w3layouts-bottom py-lg-5 py-3">
            <div class="container py-lg-5 py-3">
                <h3 class="tittle cen text-left mb-lg-3 mb-2">Over than
				<strong>2500</strong> Happy Customer</h3>
                <div class="inner-sec-agileits-w3ls">
                    <div class="row pt-lg-3">
                        <div class="serve-grid col-md-6 col-sm-6 mt-lg-5 text-left">
                            <i class="fas fa-chart-line"></i>
                            <h4 class="my-lg-4">Best Taxi Services</h4>
                            <p>
                                Reliable and genuine service...had nice experience...best service in Chittorgarh.
                            </p>
                        </div>
                        <div class="serve-grid col-md-6 col-sm-6 mt-lg-5 text-left">
                            <i class="fas fa-male"></i>
                            <h4 class="my-lg-4">Best Taxi Services</h4>
                            <p>
                                Best customer service.. good job. If anyone visit Chittorgarh please must try.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--//middle-->
        <!-- Testimonials-->
        <section class="testimonials py-lg-5 py-3 text-center">
            <div class="container py-lg-5 py-3">
                <h3 class="tittle">Happy Customers</h3>
                <div class="inner-sec-agileits-w3ls mt-lg-5  mt-3">
                    <section class="slider">
                        <div class="flexslider">
                            <ul class="slides">
                                <li>
                                    <div class="testimonials_grid">
                                        <div class="testimonials_grid-inn">
                                            <img src="images/t1.jpg" alt=" " class="img-responsive" />
                                            <div class="test_social_pos">
                                                <ul class="social_list1">
                                                    <li>
                                                        <a href="#" class="facebook1">
                                                            <i class="fab fa-facebook-f"></i>

                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" class="twitter2">
                                                            <i class="fab fa-twitter"></i>

                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" class="dribble3">
                                                            <i class="fab fa-dribbble"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h3>Deepak J Choudhary
                                        </h3>
                                        <label>Jaipur</label>
                                        <p>
                                           Best driver . very good service &.luxyry vehicles or wajib daam 🙏 thanks sir ji
                                        </p>
                                    </div>
                                </li>
                                <li>
                                    <div class="testimonials_grid">
                                        <div class="testimonials_grid-inn">
                                            <img src="images/t2.png" alt=" " class="img-responsive" />
                                            <div class="test_social_pos">
                                                <ul class="social_list1">
                                                    <li>
                                                        <a href="#" class="facebook1">
                                                            <i class="fab fa-facebook-f"></i>

                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" class="twitter2">
                                                            <i class="fab fa-twitter"></i>

                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" class="dribble3">
                                                            <i class="fab fa-dribbble"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h3>Mukesh Chasta
                                        </h3>
                                        <label>Chittorgarh</label>
                                        <p>
                                            Reliable and genuine service...had nice experience...best service in Chittorgarh
                                        </p>
                                    </div>
                                </li>
                                <li>
                                    <div class="testimonials_grid">
                                        <div class="testimonials_grid-inn">
                                            <img src="images/t3.png" alt=" " class="img-responsive" />
                                            <div class="test_social_pos">
                                                <ul class="social_list1">
                                                    <li>
                                                        <a href="#" class="facebook1">
                                                            <i class="fab fa-facebook-f"></i>

                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" class="twitter2">
                                                            <i class="fab fa-twitter"></i>

                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" class="dribble3">
                                                            <i class="fab fa-dribbble"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h3>Tarun Gawer
										
                                        </h3>
                                        <label>Jaipur</label>
                                        <p>
                                            best customer service.. good job. If anyone visit Chittorgarh please must try.
                                        </p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </section>
                </div>
            </div>
        </section>

        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Enquiry sent Successfully !</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        
                        <asp:Literal ID="litMessage" runat="server" Text="we will contact back to you soon."></asp:Literal>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>

        <!-- //testimonials -->
        <!--footer-->
        <footer>
            <!-- footer -->
            <div class="footer-cpy p-lg-4 p-md-3 p-3 container-fluid">
                <div class="row">
                    <div class="col-lg-7 copyrightbottom text-left">
                        <h3>
                            <a class="navbar-brand" href="Index.aspx">Chittorgarh Taxi</a>
                        </h3>
                        <p>
                            © 2018-2025 Chittorgarh Taxi Services. All Rights Reserved | Design by
						<a href="https://awarepedia.com/">Awarepedia India</a>
                        </p>

                    </div>
                    <div class="col-lg-5 copyrighttop mt-3 text-right">
                        <ul>
                            <li class="mx-3">
                                <a class="facebook" href="#">
                                    <i class="fab fa-facebook-f"></i>
                                    <span>Facebook</span>
                                </a>
                            </li>
                            <li class="mx-3">
                                <a class="facebook" href="#">
                                    <i class="fab fa-twitter"></i>
                                    <span>Twitter</span>
                                </a>
                            </li>
                             <li>
                                <a class="facebook" href="#">
                                    <i class="fab fa-google"></i>
                                    <span>Google Map</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
        <!---->

        <!-- /.footer -->
        <script src="js/jquery-2.2.3.min.js"></script>
        <!-- carousel -->
        <script src="js/owl.carousel.js"></script>
        <script>
            $(document).ready(function () {
                $('.owl-carousel').owlCarousel({
                    loop: true,
                    margin: 10,
                    responsiveClass: true,
                    responsive: {
                        0: {
                            items: 1,
                            nav: true
                        },
                        600: {
                            items: 2,
                            nav: false
                        },
                        900: {
                            items: 3,
                            nav: false
                        },
                        1000: {
                            items: 4,
                            nav: true,
                            loop: false,
                            margin: 20
                        }
                    }
                })
            })
        </script>
        <!-- //carousel -->
        <!-- stats -->
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.countup.js"></script>
        <script>
            $('.counter').countUp();
        </script>
        <!-- //stats -->
        <!-- flexSlider -->
        <script defer src="js/jquery.flexslider.js"></script>
        <script>
            $(window).load(function () {
                $('.flexslider').flexslider({
                    animation: "slide",
                    start: function (slider) {
                        $('body').removeClass('loading');
                    }
                });
            });
        </script>
        <!-- //flexSlider -->
        <!-- start-smooth-scrolling -->
        <script src="js/move-top.js"></script>
        <script src="js/easing.js"></script>
        <script>
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();

                    $('html,body').animate({
                        scrollTop: $(this.hash).offset().top
                    }, 1000);
                });
            });
        </script>
        <!-- //end-smooth-scrolling -->
        <!-- dropdown nav -->
        <script>
            $(document).ready(function () {
                $(".dropdown").hover(
                    function () {
                        $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                        $(this).toggleClass('open');
                    },
                    function () {
                        $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                        $(this).toggleClass('open');
                    }
                );
            });
        </script>
        <!-- //dropdown nav -->
        <!-- smooth-scrolling-of-move-up -->
        <script>
            $(document).ready(function () {
                /*
                var defaults = {
                    containerID: 'toTop', // fading element id
                    containerHoverID: 'toTopHover', // fading element hover id
                    scrollSpeed: 1200,
                    easingType: 'linear' 
                };
                */

                $().UItoTop({
                    easingType: 'easeOutQuart'
                });

            });
        </script>
        <!-- //smooth-scrolling-of-move-up -->
        <script src="js/bootstrap.js"></script>
        <!-- js file -->
        <script>
            function openPopup() {
                $("#myModal").modal('show');
            }
            function scrolltoPosition(id) {
                $('html, body').animate({
                    scrollTop: $("." + id).offset().top
                }, 2000);
            };
        </script>
    </form>
</body>
</html>
