<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyBooking.aspx.cs" Inherits="CarRental.MyBooking" %>

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
        /* Table Styling */
        .table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            border: 1px solid #ddd;
            margin-bottom: 30px;
        }

            .table th, .table td {
                padding: 12px 15px;
                text-align: center;
                border: 1px solid #ddd;
            }

            .table th {
                background-color: #007bff;
                color: white;
                font-weight: bold;
                text-transform: uppercase;
            }

            .table tbody tr:hover {
                background-color: #f4f4f4;
                cursor: pointer;
            }

            .table img {
                width: 100px;
                height: auto;
                border-radius: 5px;
            }

            /* Styling for the table header and body */
            .table thead {
                background-color: #2c3e50;
                color: white;
            }

            .table tbody tr:nth-child(even) {
                background-color: #f9f9f9;
            }

            .table tbody tr:nth-child(odd) {
                background-color: #ffffff;
            }

        /* Responsive table design */
        @media (max-width: 768px) {
            .table th, .table td {
                padding: 10px 8px;
                font-size: 14px;
            }

            .table {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

    <!-- ? ============== HEADER ============== ? -->

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

            <div class="container-fluid pt-5">
                <div class="container pt-5">
                    <h1 class="display-4 text-uppercase text-center mb-5">Your Cars</h1>
                    <div class="table-responsive">
                        <asp:Repeater ID="CustomerCarDetails" runat="server">
                            <HeaderTemplate>
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <tr>
                                            <td>Image</td>
                                            <td>Car Name</td>
                                            <td>Car Amount</td>
                                            <td>Car Year</td>
                                            <td>Car Capacity</td>
                                            <td>Car Kilometer</td>
                                            <td>Car FuelType</td>
                                            <td>Status</td>
                                            <td>PickUp Date</td>
                                            <td>Drop Date</td>
                                            <td>Total Amount</td>

                                        </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <Columns>
                                    <td><asp:Image runat="server" ImageUrl='<%# "~/Admin/upload/" + Eval("car_image") %>' class="img-fluid" alt="Car Image" /></td>
                                    <td><%# Eval("car_name") %></td>
                                    <td><%# Eval("car_amount") %></td>
                                    <td><%# Eval("car_year") %></td>
                                    <td><%# Eval("car_capacity") %></td>
                                    <td><%# Eval("car_kilometer") %></td>
                                    <td><%# Eval("car_fueltype") %></td>
                                    <td><%# Eval("status") %></td>
                                    <td><%# Eval("pdate") %></td>
                                    <td><%# Eval("ddate") %></td>
                                    <td><%# Eval("tamount") %></td>
                                    </Columns>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
</div>
                            </FooterTemplate>
                        </asp:Repeater>

                    </div>
                </div>
            </div>


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
