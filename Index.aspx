﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CarRental.Index" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alpha97 - Car Rent Website</title>

    <!-- ? ==================== FAVICON ==================== ? -->

    <link rel="shortcut icon" href="./images/favicon.svg" type="image/x-icon">

    <!-- ? ==================== CUSTOM CSS ==================== ? -->

    <link rel="stylesheet" href="./css/style.css">

    <!-- ? ==================== GOOGLE FONTS ==================== ? -->

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;600&display=swap"
        rel="stylesheet">
    <style>
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
    </style>
</head>
<body>

    <!-- ? ============== HEADER ============== ? -->

    <header class="header" data-header>
        <div class="container">
            <div class="overlay" data-overlay></div>
            <a href="#" class="logo">
                <img src="./images/logo1.png" alt="Alpha97 Logo">
            </a>

            <nav class="navbar" data-navbar>
                <ul class="navbar-list">
                    <li>
                        <a href="Index.aspx" class="navbar-link" data-nav-link>Home</a>
                    </li>

                    <li>
                        <a href="ViewCar.aspx" class="navbar-link" data-nav-link>Explore cars</a>
                    </li>

                    <li>
                        <a href="About.aspx" class="navbar-link" data-nav-link>About us</a>
                    </li>

                    <li>
                        <a href="FeedBack.aspx" class="navbar-link" data-nav-link>FeedBack</a>
                    </li>
                    <li>
                        <form runat="server">
                            <asp:LinkButton runat="server" href="MyBooking.aspx" ID="mybookingbtn" class="navbar-link" Text="My Booking"></asp:LinkButton>
                    </li>
                </ul>
            </nav>

            <div class="header-actions">


                <a href="#featured-car" aria-labelledby=""></a>

                <asp:LinkButton runat="server" href="Login.aspx" ID="lgbtn" class="btn user-btn" aria-label="Profile">
                <ion-icon name="person-outline"></ion-icon>
			    <span class="aria-label-text">Log In</span>
                </asp:LinkButton>
                <asp:LinkButton runat="server" ID="logoutbtn" class="btn user-btn" aria-label="Profile" OnClick="logoutbtn_Click">
                <ion-icon name="exit-outline"></ion-icon>
		        <span class="aria-label-text">Log Out</span>
                </asp:LinkButton>
                <asp:Label runat="server" ID="lbluser"></asp:Label>
                </form>
                <button class="nav-toggle-btn" data-nav-toggle-btn aria-label="Toggle Menu">
                    <span class="one"></span>
                    <span class="two"></span>
                    <span class="three"></span>
                </button>
            </div>
        </div>

    </header>


    <!-- ? ============== MAIN ============== ? -->
    <main>
        <article>

            <!-- ? ============== HERO ============== ? -->

            <section class="section hero" id="home">
                <div class="container">
                    <div class="hero-content">
                        <h2 class="h1 hero-title">The easy way to takeover a lease</h2>

                        <p class="hero-text">
                            Live in New York, New Jerset and Connecticut!
                       
                        </p>
                    </div>

                    <div class="hero-banner"></div>

                </div>
            </section>

            <!-- ? ============== FEATURED CAR ============== ? -->

            <section class="section featured-car" id="featured-car">
                <div class="container">

                    <div class="title-wrapper">
                        <h2 class="h2 section-title">Featured cars</h2>

                        <a href="#" class="featured-car-link">
                            <span>View more</span>

                            <ion-icon name="arrow-forward-outline"></ion-icon>
                        </a>
                    </div>

                    <ul class="featured-car-list">

                        <li>
                            <div class="featured-car-card">

                                <figure class="card-banner">
                                    <img src="./Assets/images/car-1.jpg" alt="Toyota RAV4 2021" loading="lazy" width="440" height="300"
                                        class="w-100">
                                </figure>

                                <div class="card-content">

                                    <div class="card-title-wrapper">
                                        <h3 class="h3 card-title">
                                            <a href="#">Toyota RAV4</a>
                                        </h3>

                                        <data class="year" value="2021">2021</data>
                                    </div>

                                    <ul class="card-list">

                                        <li class="card-list-item">
                                            <ion-icon name="people-outline"></ion-icon>

                                            <span class="card-item-text">4 People</span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="flash-outline"></ion-icon>

                                            <span class="card-item-text">Hybrid</span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="speedometer-outline"></ion-icon>

                                            <span class="card-item-text">6.1km / 1-litre</span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="hardware-chip-outline"></ion-icon>

                                            <span class="card-item-text">Automatic</span>
                                        </li>

                                    </ul>

                                    <div class="card-price-wrapper">

                                        <p class="card-price">
                                            <strong>$440</strong> / month
                           
                                        </p>

                                        <button class="btn fav-btn" aria-label="Add to favourite list">
                                            <ion-icon name="heart-outline"></ion-icon>
                                        </button>

                                        <a href="CarDetails.aspx" class="btn">Rent now</a>

                                    </div>

                                </div>

                            </div>
                        </li>

                        <li>
                            <div class="featured-car-card">

                                <figure class="card-banner">
                                    <img src="./images/car-2.jpg" alt="BMW 3 Series 2019" loading="lazy" width="440" height="300"
                                        class="w-100">
                                </figure>

                                <div class="card-content">

                                    <div class="card-title-wrapper">
                                        <h3 class="h3 card-title">
                                            <a href="#">BMW 3 Series</a>
                                        </h3>

                                        <data class="year" value="2019">2019</data>
                                    </div>

                                    <ul class="card-list">

                                        <li class="card-list-item">
                                            <ion-icon name="people-outline"></ion-icon>

                                            <span class="card-item-text">4 People</span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="flash-outline"></ion-icon>

                                            <span class="card-item-text">Gasoline</span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="speedometer-outline"></ion-icon>

                                            <span class="card-item-text">8.2km / 1-litre</span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="hardware-chip-outline"></ion-icon>

                                            <span class="card-item-text">Automatic</span>
                                        </li>

                                    </ul>

                                    <div class="card-price-wrapper">

                                        <p class="card-price">
                                            <strong>$350</strong> / month
                           
                                        </p>

                                        <button class="btn fav-btn" aria-label="Add to favourite list">
                                            <ion-icon name="heart-outline"></ion-icon>
                                        </button>

                                        <button class="btn">Rent now</button>

                                    </div>

                                </div>

                            </div>
                        </li>

                        <li>
                            <div class="featured-car-card">

                                <figure class="card-banner">
                                    <img src="./images/car-3.jpg" alt="Volkswagen T-Cross 2020" loading="lazy" width="440"
                                        height="300" class="w-100">
                                </figure>

                                <div class="card-content">

                                    <div class="card-title-wrapper">
                                        <h3 class="h3 card-title">
                                            <a href="#">Volkswagen T-Cross</a>
                                        </h3>

                                        <data class="year" value="2020">2020</data>
                                    </div>

                                    <ul class="card-list">

                                        <li class="card-list-item">
                                            <ion-icon name="people-outline"></ion-icon>

                                            <span class="card-item-text">4 People</span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="flash-outline"></ion-icon>

                                            <span class="card-item-text">Gasoline</span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="speedometer-outline"></ion-icon>

                                            <span class="card-item-text">5.3km / 1-litre</span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="hardware-chip-outline"></ion-icon>

                                            <span class="card-item-text">Automatic</span>
                                        </li>

                                    </ul>

                                    <div class="card-price-wrapper">

                                        <p class="card-price">
                                            <strong>$400</strong> / month
                           
                                        </p>

                                        <button class="btn fav-btn" aria-label="Add to favourite list">
                                            <ion-icon name="heart-outline"></ion-icon>
                                        </button>

                                        <button class="btn">Rent now</button>

                                    </div>

                                </div>

                            </div>
                        </li>

                        <li>
                            <div class="featured-car-card">

                                <figure class="card-banner">
                                    <img src="./images/car-4.jpg" alt="Cadillac Escalade 2020" loading="lazy" width="440"
                                        height="300" class="w-100">
                                </figure>

                                <div class="card-content">

                                    <div class="card-title-wrapper">
                                        <h3 class="h3 card-title">
                                            <a href="#">Cadillac Escalade</a>
                                        </h3>

                                        <data class="year" value="2020">2020</data>
                                    </div>

                                    <ul class="card-list">

                                        <li class="card-list-item">
                                            <ion-icon name="people-outline"></ion-icon>

                                            <span class="card-item-text">4 People</span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="flash-outline"></ion-icon>

                                            <span class="card-item-text">Gasoline</span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="speedometer-outline"></ion-icon>

                                            <span class="card-item-text">7.7km / 1-litre</span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="hardware-chip-outline"></ion-icon>

                                            <span class="card-item-text">Automatic</span>
                                        </li>

                                    </ul>

                                    <div class="card-price-wrapper">

                                        <p class="card-price">
                                            <strong>$620</strong> / month
                           
                                        </p>

                                        <button class="btn fav-btn" aria-label="Add to favourite list">
                                            <ion-icon name="heart-outline"></ion-icon>
                                        </button>

                                        <button class="btn">Rent now</button>

                                    </div>

                                </div>

                            </div>
                        </li>

                        <li>
                            <div class="featured-car-card">

                                <figure class="card-banner">
                                    <img src="./images/car-5.jpg" alt="BMW 4 Series GTI 2021" loading="lazy" width="440"
                                        height="300" class="w-100">
                                </figure>

                                <div class="card-content">

                                    <div class="card-title-wrapper">
                                        <h3 class="h3 card-title">
                                            <a href="#">BMW 4 Series GTI</a>
                                        </h3>

                                        <data class="year" value="2021">2021</data>
                                    </div>

                                    <ul class="card-list">

                                        <li class="card-list-item">
                                            <ion-icon name="people-outline"></ion-icon>

                                            <span class="card-item-text">4 People</span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="flash-outline"></ion-icon>

                                            <span class="card-item-text">Gasoline</span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="speedometer-outline"></ion-icon>

                                            <span class="card-item-text">7.6km / 1-litre</span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="hardware-chip-outline"></ion-icon>

                                            <span class="card-item-text">Automatic</span>
                                        </li>

                                    </ul>

                                    <div class="card-price-wrapper">

                                        <p class="card-price">
                                            <strong>$530</strong> / month
                           
                                        </p>

                                        <button class="btn fav-btn" aria-label="Add to favourite list">
                                            <ion-icon name="heart-outline"></ion-icon>
                                        </button>

                                        <button class="btn">Rent now</button>

                                    </div>

                                </div>

                            </div>
                        </li>

                        <li>
                            <div class="featured-car-card">

                                <figure class="card-banner">
                                    <img src="./images/car-6.jpg" alt="BMW 4 Series 2019" loading="lazy" width="440" height="300"
                                        class="w-100">
                                </figure>

                                <div class="card-content">

                                    <div class="card-title-wrapper">
                                        <h3 class="h3 card-title">
                                            <a href="#">BMW 4 Series</a>
                                        </h3>

                                        <data class="year" value="2019">2019</data>
                                    </div>

                                    <ul class="card-list">

                                        <li class="card-list-item">
                                            <ion-icon name="people-outline"></ion-icon>

                                            <span class="card-item-text">4 People</span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="flash-outline"></ion-icon>

                                            <span class="card-item-text">Gasoline</span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="speedometer-outline"></ion-icon>

                                            <span class="card-item-text">7.2km / 1-litre</span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="hardware-chip-outline"></ion-icon>

                                            <span class="card-item-text">Automatic</span>
                                        </li>

                                    </ul>

                                    <div class="card-price-wrapper">

                                        <p class="card-price">
                                            <strong>$490</strong> / month
                           
                                        </p>

                                        <button class="btn fav-btn" aria-label="Add to favourite list">
                                            <ion-icon name="heart-outline"></ion-icon>
                                        </button>

                                        <button class="btn">Rent now</button>

                                    </div>

                                </div>

                            </div>
                        </li>

                    </ul>

                </div>
            </section>

            <!-- ? ============== GET START ============== ? -->

            <section class="section get-start">
                <div class="container">
                    <h2 class="h2 section-title">Get started with 4 simple steps</h2>

                    <ul class="get-start-list">
                        <li>
                            <div class="get-start-card">
                                <div class="card-icon icon-1">
                                    <ion-icon name="person-add-outline"></ion-icon>
                                </div>

                                <h3 class="card-title">Create a profile</h3>

                                <p class="card-text">
                                    If you are going to use a passage of Lorem Ipsum, you need to be sure.
                               
                                </p>

                                <a href="#" class="card-link">Get started</a>
                            </div>
                        </li>

                        <li>
                            <div class="get-start-card">
                                <div class="card-icon icon-2">
                                    <ion-icon name="car-outline"></ion-icon>
                                </div>

                                <h3 class="card-title">Tell us what car you want</h3>

                                <p class="card-text">
                                    Various versions have evolved over the years, sometimes by accident, sometimes on purpose
                               
                                </p>

                            </div>
                        </li>

                        <li>
                            <div class="get-start-card">
                                <div class="card-icon icon-3">
                                    <ion-icon name="person-outline"></ion-icon>
                                </div>

                                <h3 class="card-title">Match with seller</h3>

                                <p class="card-text">
                                    It to make a type specimen book. It has survived not only five centuries, 
                                    but also the leap into electronic
                               
                                </p>

                            </div>
                        </li>

                        <li>
                            <div class="get-start-card">
                                <div class="card-icon icon-4">
                                    <ion-icon name="card-outline"></ion-icon>
                                </div>

                                <h3 class="card-title">Make a deal</h3>

                                <p class="card-text">
                                    There are many variations of passages of Lorem available, 
                                    but the majority have suffered alteration
                               
                                </p>

                            </div>
                        </li>

                    </ul>
                </div>
            </section>

            <!-- ? ============== BLOG ============== ? -->

            <section class="section blog" id="blog">
                <div class="container">
                    <h2 class="h2 section-title">Our Blog</h2>

                    <ul class="blog-list has-scrollbar">
                        <li>
                            <div class="blog-card">
                                <figure class="card-banner">
                                    <a href="#">
                                        <img src="./images/blog-1.jpg" alt="Opening of new offices of the company"
                                            loading="lazy" class="w-100">
                                    </a>

                                    <a href="#" class="btn card-badge">Company</a>
                                </figure>
                                <div class="card-content">
                                    <h3 class="h3 card-title">
                                        <a href="#">Opening of new offices of the company</a>
                                    </h3>
                                    <div class="card-meta">
                                        <div class="publish-date">
                                            <ion-icon name="time-outline"></ion-icon>
                                            <time datetime="2022-01-14">January 14, 2022 </time>
                                        </div>
                                        <div class="comments">
                                            <ion-icon name="chatbubble-ellipses-outline"></ion-icon>
                                            <data value="114">114</data>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="blog-card">
                                <figure class="card-banner">
                                    <a href="#">
                                        <img src="./images/blog-2.jpg" alt="What cars are most vulnerable"
                                            loading="lazy" class="w-100">
                                    </a>

                                    <a href="#" class="btn card-badge">Repair</a>
                                </figure>
                                <div class="card-content">
                                    <h3 class="h3 card-title">
                                        <a href="#">What cars are most vulnerable</a>
                                    </h3>
                                    <div class="card-meta">
                                        <div class="publish-date">
                                            <ion-icon name="time-outline"></ion-icon>
                                            <time datetime="2022-01-14">January 14, 2022 </time>
                                        </div>
                                        <div class="comments">
                                            <ion-icon name="chatbubble-ellipses-outline"></ion-icon>
                                            <data value="114">114</data>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="blog-card">
                                <figure class="card-banner">
                                    <a href="#">
                                        <img src="./images/blog-3.jpg" alt="Statistics showed which average age"
                                            loading="lazy" class="w-100">
                                    </a>

                                    <a href="#" class="btn card-badge">Cars</a>
                                </figure>
                                <div class="card-content">
                                    <h3 class="h3 card-title">
                                        <a href="#">Statistics showed which average age</a>
                                    </h3>
                                    <div class="card-meta">
                                        <div class="publish-date">
                                            <ion-icon name="time-outline"></ion-icon>
                                            <time datetime="2022-01-14">January 14, 2022 </time>
                                        </div>
                                        <div class="comments">
                                            <ion-icon name="chatbubble-ellipses-outline"></ion-icon>
                                            <data value="114">114</data>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="blog-card">
                                <figure class="card-banner">
                                    <a href="#">
                                        <img src="./images/blog-4.jpg" alt="What´s required when renting a car?"
                                            loading="lazy" class="w-100">
                                    </a>

                                    <a href="#" class="btn card-badge">Cars</a>
                                </figure>
                                <div class="card-content">
                                    <h3 class="h3 card-title">
                                        <a href="#">What´s required when renting a car?</a>
                                    </h3>
                                    <div class="card-meta">
                                        <div class="publish-date">
                                            <ion-icon name="time-outline"></ion-icon>
                                            <time datetime="2022-01-14">January 14, 2022 </time>
                                        </div>
                                        <div class="comments">
                                            <ion-icon name="chatbubble-ellipses-outline"></ion-icon>
                                            <data value="114">114</data>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="blog-card">
                                <figure class="card-banner">
                                    <a href="#">
                                        <img src="./images/blog-5.jpg" alt="New rules for handling our cars"
                                            loading="lazy" class="w-100">
                                    </a>

                                    <a href="#" class="btn card-badge">Company</a>
                                </figure>
                                <div class="card-content">
                                    <h3 class="h3 card-title">
                                        <a href="#">New rules for handling our cars</a>
                                    </h3>
                                    <div class="card-meta">
                                        <div class="publish-date">
                                            <ion-icon name="time-outline"></ion-icon>
                                            <time datetime="2022-01-14">January 14, 2022 </time>
                                        </div>
                                        <div class="comments">
                                            <ion-icon name="chatbubble-ellipses-outline"></ion-icon>
                                            <data value="114">114</data>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>

                </div>
            </section>

        </article>
    </main>

    <!-- ? ============== FOOTER ============== ? -->

    <footer class="footer">
        <div class="container">
            <div class="footer-top">
                <div class="footer-brand">
                    <a href="#" class="logo">
                        <img src="./images/logo1.png" alt="Alpha97 Logo">
                    </a>

                    <p class="footer-text">
                        Search for cheap rental cars in New York. With a diverse fleet of 19,000 vehicles, Waydex offers its consumers an 
              attractive and fun selection.
           
                    </p>
                </div>

                <ul class="footer-list">
                    <li>
                        <p class="footer-list-title">Company</p>
                    </li>

                    <li>
                        <a href="#" class="footer-link">About us</a>
                    </li>

                    <li>
                        <a href="#" class="footer-link">Pricing plans</a>
                    </li>

                    <li>
                        <a href="#" class="footer-link">Our blog</a>
                    </li>

                    <li>
                        <a href="#" class="footer-link">Contacts</a>
                    </li>

                </ul>

                <ul class="footer-list">
                    <li>
                        <p class="footer-list-title">Support</p>
                    </li>

                    <li>
                        <a href="#" class="footer-link">Help center</a>
                    </li>

                    <li>
                        <a href="#" class="footer-link">Ask a question</a>
                    </li>

                    <li>
                        <a href="#" class="footer-link">Privacy policy</a>
                    </li>

                    <li>
                        <a href="#" class="footer-link">Terms & conditions</a>
                    </li>

                </ul>

                <ul class="footer-list">
                    <li>
                        <p class="footer-list-title">Neighborhoods in New York</p>
                    </li>

                    <li>
                        <a href="#" class="footer-link">Manhattan</a>
                    </li>

                    <li>
                        <a href="#" class="footer-link">Central New York City</a>
                    </li>

                    <li>
                        <a href="#" class="footer-link">Upper East Side</a>
                    </li>

                    <li>
                        <a href="#" class="footer-link">Queens</a>
                    </li>

                    <li>
                        <a href="#" class="footer-link">Theater District</a>
                    </li>

                    <li>
                        <a href="#" class="footer-link">Midtown</a>
                    </li>

                    <li>
                        <a href="#" class="footer-link">SoHo</a>
                    </li>

                    <li>
                        <a href="#" class="footer-link">Chelsea</a>
                    </li>

                </ul>

            </div>

            <div class="footer-bottom">

                <ul class="social-list">

                    <li>
                        <a href="#" class="social-link">
                            <ion-icon name="logo-facebook"></ion-icon>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="social-link">
                            <ion-icon name="logo-instagram"></ion-icon>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="social-link">
                            <ion-icon name="logo-twitter"></ion-icon>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="social-link">
                            <ion-icon name="logo-linkedin"></ion-icon>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="social-link">
                            <ion-icon name="logo-skype"></ion-icon>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="social-link">
                            <ion-icon name="mail-outline"></ion-icon>
                        </a>
                    </li>

                </ul>

                <p class="copyright">
                    &copy; 2023 <a href="https://www.linkedin.com/in/usamaweb/">Muhammad Usama</a>
                    <a href="https://github.com/usamaweb">Alpha97</a>. All Rights Reserved
         
                </p>

            </div>
        </div>
    </footer>























    <!-- ? ==================== CUSTOM JS ==================== ? -->

    <script src="./Assets/js/script.js"></script>

    <!-- ? ==================== IONICON ==================== ? -->

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>
</html>