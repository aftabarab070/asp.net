<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarBooking.aspx.cs" Inherits="CarRental.CarBooking" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alpha97 - Car Rent Website</title>

    <!-- FAVICON -->
    <link rel="shortcut icon" href="./images/favicon.svg" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://unpkg.com/ionicons@5.5.2/dist/ionicons.min.css">

    <!-- CUSTOM CSS -->
    <link rel="stylesheet" href="./css/style.css">

    <!-- GOOGLE FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;600&display=swap" rel="stylesheet">

    <style>
        /* General container styling */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Section title styling */
        .display-4 {
            font-size: 2.5rem;
            font-weight: bold;
            color: #2c3e50;
        }

        /* Row and column layout */
        .row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
        }

        /* Car image styling */
        .img-fluid {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* Car details section */
        .col-lg-6 {
            flex: 1;
            padding: 15px;
        }

        /* Car price and rating */
        h4 {
            font-size: 1.5rem;
            color: #3498db;
            font-weight: bold;
        }

        .d-flex {
            display: flex;
            align-items: center;
        }

            .d-flex small {
                font-size: 1rem;
                color: #f39c12;
            }

        .mb-3 {
            margin-bottom: 1rem;
        }

        /* Additional Specifications Styling */
        .bg-secondary {
            background-color: #f4f4f4;
            padding: 40px;
            border-radius: 8px;
        }

        .text-primary {
            color: #3498db;
        }

        .mb-4 {
            margin-bottom: 2rem;
        }

        .pt-5 {
            padding-top: 50px;
        }

        .pt-2 {
            padding-top: 20px;
        }

        /* Column layout for specs */
        .col-md-3 {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
            flex-basis: 45%;
        }

            .col-md-3 i {
                font-size: 1.5rem;
                color: #3498db;
                margin-right: 10px;
            }

            .col-md-3 span {
                font-size: 1.1rem;
                color: #333;
            }

        /* Button styling */
        .btn-primary {
            background-color: #007bff;
            border-color: #3498db;
            color: white;
            padding: 12px 20px;
            font-size: 1.1rem;
            border-radius: 5px;
            text-align: center;
            margin-bottom: 20px;
        }

            .btn-primary:hover {
                background-color: #2980b9;
            }

        .btn-block {
            display: block;
            width: 100%;
        }

        .large-icon {
            font-size: 2rem; /* Set icon size */
            margin-right: 10px; /* Gap between the icon and text */
            color: #007bff; /* Blue color for icons */
            display: block; /* Ensures the icon is a block-level element for centering */
            padding: 8px; /* Add padding around the icon */
            border-radius: 50%; /* Optional: makes the icon circular with padding */
            background-color: rgba(0, 123, 255, 0.1); /* Optional: add a background color */
        }

        /* Booking Form */
        .bg-secondary {
            background-color: #f4f4f4;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

            .bg-secondary h2 {
                font-size: 24px;
                font-weight: 600;
                margin-bottom: 20px;
            }

        .form-group {
            margin-bottom: 15px;
        }

        .input-group {
            display: flex;
            justify-content: space-between;
        }

        input[type="date"],
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

            input[type="date"]:focus,
            input[type="text"]:focus {
                border-color: #007bff;
                outline: none;
            }

        button.btn-primary {
            width: 100%;
            background-color: #007bff;
            color: white;
            border: none;
            padding: 15px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 90px;
        }

        .form-group .form-control {
            width: 850px;
        }

        button.btn-primary:hover {
            background-color: #0056b3;
        }

        /* Responsive Design */
        @media (max-width: 1199px) {
            .container {
                padding: 0 15px;
            }

            .display-4 {
                font-size: 2rem;
            }

            .row {
                flex-direction: column;
                align-items: center;
            }

            .col-lg-6 {
                padding: 10px;
                flex: 0 0 100%;
            }

            .bg-secondary {
                padding: 20px;
            }

            .form-group .form-control {
                width: 100%;
            }

            .row.pt-2 {
                gap: 20px; /* Adjust gap between icons */
            }

            .icon-large {
                font-size: 32px; /* Adjust icon size for smaller screens */
                padding: 8px;
            }

            .col-md-3 {
                flex-basis: 100%;
            }
        }

        @media (max-width: 991px) {
            .col-md-3 {
                flex-basis: 100%;
            }

            .btn-primary {
                font-size: 14px;
            }

            .form-group .form-control {
                font-size: 0.9rem;
            }

            .icon-large {
                font-size: 30px; /* Further reduce icon size */
            }
        }

        @media (max-width: 767px) {
            .display-4 {
                font-size: 1.8rem;
            }

            .row.pt-2 {
                flex-direction: column;
                align-items: center;
            }

            .col-md-3 {
                flex-basis: 100%;
            }

            .icon-large {
                font-size: 28px; /* Reduce icon size more for small screens */
                padding: 6px;
            }

            .col-lg-6 {
                padding: 0 10px;
                margin-top: 20px;
            }

            .form-group .form-control {
                font-size: 0.85rem;
            }

            .bg-secondary {
                padding: 15px;
            }

            .container-fluid.pb-5 {
                margin-bottom: 15px;
            }
        }

        @media (max-width: 480px) {
            .display-4 {
                font-size: 1.6rem;
            }

            .btn-primary {
                padding: 12px;
                font-size: 14px;
            }

            .form-group .form-control {
                font-size: 0.8rem;
                width: 390px;
            }

            .icon-large {
                font-size: 24px; /* Further reduce icon size for very small screens */
                padding: 4px;
                grid-row: auto;
            }

            .bg-secondary {
                width: 400px;
            }
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <form runat="server">
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

                            <asp:LinkButton runat="server" ID="mybookingbtn" class="navbar-link" Text="My Booking"></asp:LinkButton>
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

                    <button class="nav-toggle-btn" data-nav-toggle-btn aria-label="Toggle Menu">
                        <span class="one"></span>
                        <span class="two"></span>
                        <span class="three"></span>
                    </button>
                </div>
            </div>


        </header>

        <!-- Main Content -->

        <main>
            <article>
                <!-- Hero Section -->
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
                <asp:Repeater ID="cardetails" runat="server">
                    <ItemTemplate>
                        <!-- Car Details Section -->
                        <div class="container-fluid pt-5">
                            <div class="container pt-5">
                                <h1 class="display-4 text-uppercase text-center mb-5"><%# Eval("car_name") %></h1>
                                <div class="row align-items-center pb-2">
                                    <!-- Car Image Section -->
                                    <div class="col-lg-6 mb-4">
                                        <asp:Image runat="server" ImageUrl='<%# "~/Admin/upload/" + Eval("car_image") %>' class="img-fluid" alt="Car Image" />
                                    </div>

                                    <!-- Car Details Section -->
                                    <div class="col-lg-6 mb-4">
                                        <h4 class="mb-2">₹<%# Eval("car_amount") %>/Day</h4>
                                        <div class="d-flex mb-3">
                                            <h6 class="mr-2">Rating:</h6>
                                            <div class="d-flex align-items-center justify-content-center mb-1">
                                                <small class="fa fa-star text-primary mr-1"></small>
                                                <small class="fa fa-star text-primary mr-1"></small>
                                                <small class="fa fa-star text-primary mr-1"></small>
                                                <small class="fa fa-star text-primary mr-1"></small>
                                                <small class="fa fa-star-half-alt text-primary mr-1"></small>
                                                <small>(250)</small>
                                            </div>
                                        </div>
                                        <p><%# Eval("car_description") %></p>
                                    </div>
                                </div>

                                <!-- Additional Car Specifications and Booking Section -->
                                <div class="container-fluid">
                                    <div class="bg-secondary p-5">
                                        <h3 class="text-primary text-center mb-4">Book Cars</h3>
                                        <div class="row pt-2">
                                            <!-- Car Specifications -->
                                            <div class="col-md-3 col-6 mb-2">
                                                <ion-icon name="car-outline" class="text-primary mr-2 large-icon"></ion-icon>
                                                <span>Model: <%# Eval("car_year") %></span>
                                            </div>
                                            <div class="col-md-3 col-6 mb-2">
                                                <ion-icon name="people-outline" class="text-primary mr-2 large-icon"></ion-icon>
                                                <span>People:  <%# Eval("car_capacity") %></span>
                                            </div>
                                            <div class="col-md-3 col-6 mb-2">
                                                <ion-icon name="flash-outline" class="text-primary mr-2 large-icon"></ion-icon>
                                                <span>Fuel Type:  <%# Eval("car_fueltype") %></span>
                                            </div>
                                            <div class="col-md-3 col-6 mb-2">
                                                <ion-icon name="speedometer-outline" class="text-primary mr-2 large-icon"></ion-icon>
                                                <span>Efficiency:  <%# Eval("car_kilometer") %>km / 1-litre</span>
                                            </div>
                                            <div class="col-md-3 col-6 mb-2">
                                                <ion-icon name="hardware-chip-outline" class="text-primary mr-2 large-icon"></ion-icon>
                                                <span>Transmission:  <%# Eval("car_type") %></span>
                                            </div>
                                        </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <!-- BOOKING FORM SECTION -->
                <section class="section car-booking">
                    <div class="container-fluid pb-5">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-8">
                                    <h2 class="mb-4">Booking Detail</h2>
                                    <div class="mb-5">
                                        <div class="form-group">
                                            <label for="inputpickupdate">PickUp Date</label>
                                            <asp:TextBox ID="startdate" type="date" class="form-control" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label for="inputDropDate">Drop Date</label>
                                            <asp:TextBox ID="enddate" type="date" class="form-control" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label for="inputmessage">Enter Message</label>
                                            <asp:TextBox ID="Message" type="text" runat="server" class="form-control" placeholder="Message"></asp:TextBox>
                                        </div>
                                        <div class="form-group" hidden>
                                            <asp:TextBox runat="server" type="text" ID="duration" class="form-control" placeholder="Duration"></asp:TextBox>
                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-4">
                                    <div class="bg-secondary p-5 mb-5">
                                        <h2 class="text-primary mb-4">Payment Options</h2>
                                        <div class="form-group">
                                            <div class="d-flex align-items-center mb-3">
                                                <i class="fa fa-2x fa-money-bill text-primary flex-shrink-0 mr-3"></i>&nbsp  
                                                  <div>
                                                     <h5 class="text-primary mb-1">On Destination</h5>
                                                  </div>
                                            </div>
                                        </div>
                                        <asp:Button ID="rentbtn" runat="server" class="btn btn-block btn-primary py-3" Text="Rent Now" OnClick="rentbtn_Click"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </article>
        </main>
    </form>

    <!-- Footer Section -->
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
    <!-- CUSTOM JS -->
    <script src="./js/script.js"></script>
    <script>
        var today = new Date();
        var dd = today.getDate();
        var mm = today.getMonth() + 1; //January is 0!
        var yyyy = today.getFullYear();
        if (dd < 10) {
            dd = '0' + dd
        }
        if (mm < 10) {
            mm = '0' + mm
        }

        today = yyyy + '-' + mm + '-' + dd;
        document.getElementById("startdate").setAttribute("min", today);
    </script>
    <script>
        var today = new Date();
        var dd = today.getDate();
        var mm = today.getMonth() + 1; //January is 0!
        var yyyy = today.getFullYear();
        if (dd < 10) {
            dd = '0' + dd
        }
        if (mm < 10) {
            mm = '0' + mm
        }

        today = yyyy + '-' + mm + '-' + dd;
        document.getElementById("enddate").setAttribute("min", today);
    </script>
    <!-- IONICON -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>

