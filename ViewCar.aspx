<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCar.aspx.cs" Inherits="CarRental.ViewCar" %>

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
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;600&display=swap" rel="stylesheet">
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
                        <asp:LinkButton href="MyBooking.aspx" runat="server" ID="mybookingbtn" class="navbar-link" Text="My Booking"></asp:LinkButton>
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
            <!-- ? =    ============= HERO ============== ? -->

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
                        <asp:Repeater runat="server" ID="cardetails">
                            <ItemTemplate>
                        <li>
                            <div class="featured-car-card">

                                <figure class="card-banner">
                                    <asp:Image runat="server" ImageUrl='<%# "~/Admin/upload/" + Eval("car_image") %>' alt="Toyota RAV4 2021" loading="lazy" width="380" height="250"
                                        class="w-100" />
                                </figure>

                                <div class="card-content">

                                    <div class="card-title-wrapper">
                                        <h3 class="h3 card-title">
                                            <a href="#"><%# Eval("car_name") %></a>
                                        </h3>

                                        <data class="year" value="2021"><%# Eval("car_year") %></data>
                                    </div>

                                    <ul class="card-list">

                                        <li class="card-list-item">
                                            <ion-icon name="people-outline"></ion-icon>

                                            <span class="card-item-text"><%# Eval("car_capacity") %> People</span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="flash-outline"></ion-icon>

                                            <span class="card-item-text"><%# Eval("car_fueltype") %></span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="speedometer-outline"></ion-icon>

                                            <span class="card-item-text"><%# Eval("car_kilometer") %>km / 1-litre</span>
                                        </li>

                                        <li class="card-list-item">
                                            <ion-icon name="hardware-chip-outline"></ion-icon>

                                            <span class="card-item-text"><%# Eval("car_type") %></span>
                                        </li>

                                    </ul>

                                    <div class="card-price-wrapper">

                                        <p class="card-price">
                                            <strong>₹<%# Eval("car_amount") %></strong> / month
                                        </p>

                                       <a href="CarDetails.aspx?id=<%# Eval("car_id") %>" class="btn">Rent Now</a> 
                                       
                                    </div>

                                </div>

                            </div>
                        </li>
                            </ItemTemplate>
</asp:Repeater>
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

    <script src="./js/script.js"></script>

    <!-- ? ==================== IONICON ==================== ? -->

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>
</html>
