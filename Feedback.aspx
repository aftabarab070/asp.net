<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="CarRental.Feedback" %>

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
        /* Feedback Section Styles */
        .feedback {
            background-color: #f9f9f9; /* Light background color */
            padding: 50px 20px; /* Add padding to top, bottom, and sides */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Add a light shadow */
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
            .feedback .container {
                max-width: 800px;
                margin: 0 auto;
            }

            .feedback .section-title {
                font-size: 32px;
                text-align: center;
                margin-bottom: 30px;
                color: #333;
            }

            .feedback .form-group {
                margin-bottom: 20px;
            }

            .feedback .form-label {
                font-size: 18px;
                color: #444;
                font-weight: bold;
                display: block;
                margin-bottom: 5px;
            }

            .feedback .form-input, .feedback .form-textarea {
                width: 100%;
                padding: 12px;
                font-size: 16px;
                border: 1px solid #ccc;
                border-radius: 8px;
                box-sizing: border-box;
                background-color: #fff;
                transition: border-color 0.3s ease;
            }

                .feedback .form-input:focus, .feedback .form-textarea:focus {
                    border-color: #007BFF;
                    outline: none;
                }

            .feedback .form-textarea {
                height: 150px;
                resize: vertical; /* Allows the user to resize the textarea */
            }

            .feedback .btn-submit {
                display: block;
                width: 100%;
                padding: 12px;
                font-size: 18px;
                background-color: #007BFF;
                color: white;
                border: none;
                border-radius: 8px;
                cursor: pointer;
                transition: background-color 0.3s ease;
                margin-top: 20px;
            }

                .feedback .btn-submit:hover {
                    background-color: #0056b3;
                }

                .feedback .btn-submit:focus {
                    outline: none;
                }
    </style>
</head>
<body>
   <form runat="server">
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
            <!-- ? ============== FEEDBACK SECTION ============== ? -->

            <section class="feedback">
                <div class="container">
                    <h2 class="h2 section-title">Customer Feedback</h2>
                    <div class="form-group">
                        <label for="name" class="form-label">Your Name</label>
                        <asp:TextBox runat="server" ID="txtname" class="form-input" placeholder="Enter your name" required></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="email" class="form-label">Your Email</label>
                        <asp:TextBox runat="server" ID="txtmail" class="form-input" placeholder="Enter your Email" required></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="feedback" class="form-label">Your Feedback</label>                        
                        <asp:TextBox runat="server" TextMode="MultiLine" ID="feedback" class="form-input" placeholder="Enter your FeedBack" required></asp:TextBox>
                    </div>

                    <asp:Button runat="server" ID="subfeedback" class="btn btn-submit" Text="Submit Feedback" OnClick="subfeedback_Click" />

                </div>
            </section>

        </article>
    </main>
       </form>
    <!-- ? ============== FOOTER ============== ? -->

    <footer class="footer">
        <div class="container">
            <div class="footer-top">
                <div class="footer-brand">
                    <a href="#" class="logo">
                        <img src="./Assets/images/logo1.png" alt="Alpha97 Logo">
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

