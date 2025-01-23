<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CarRental.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alpha97 - Car Rent Website</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="./images/favicon.svg" type="image/x-icon">

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;600&display=swap" rel="stylesheet">

    <style>
        /* Overall container styling */
        .login-section {
            padding: 40px 0;
            background-color: #f4f4f4;
            font-family: 'Quicksand', sans-serif;
        }

        .login-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* Title Styling */
        h2 {
            font-size: 28px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        /* Form Row Layout (Side by Side Fields) */
        .form-row {
            display: flex;
            justify-content: space-between;
            gap: 20px;
            margin-bottom: 15px;
        }

        .form-group {
            flex: 1;
            margin-bottom: 10px;
        }

            /* Label Styling */
            .form-group label {
                font-weight: bold;
                display: block;
                margin-bottom: 8px;
                color: #555;
            }

            /* Input Field Styling */
            .form-group input {
                width: 375px;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 6px;
                font-size: 16px;
                outline: none;
                transition: border 0.3s ease;
            }

                /* Focus effect for input fields */
                .form-group input:focus {
                    border-color: #007bff;
                }

        /* Submit Button Styling */
        .button {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

            /* Hover effect for submit button */
            .button:hover {
                background-color: #0056b3;
            }

        /* Link for registration */
        .signup-link {
            text-align: center;
            margin-top: 20px;
        }

            .signup-link a {
                color: #007bff;
                text-decoration: none;
                font-weight: bold;
            }

                .signup-link a:hover {
                    text-decoration: underline;
                }

        /* Mobile responsiveness */
        @media (max-width: 768px) {
            .form-row {
                flex-direction: column;
            }

            .form-group {
                width: 100%;
            }
        }
    </style>

</head>
<body>

<!-- Main Section -->
<main>
    <section class="login-section">
        <div class="login-container">
            <h2>Login to Your Account</h2>
            <form action="#" runat="server" method="post">
                <!-- Username and Password Fields -->
                <div class="form-row">
                    <div class="form-group">
                        <asp:TextBox type="text" ID="txtunm" runat="server" placeholder="Enter your Username" required></asp:TextBox>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <asp:TextBox type="password" ID="txtpwd" runat="server" placeholder="Enter your password" required></asp:TextBox>
                    </div>
                </div>

                <asp:Button type="submit" ID="loginbtn" runat="server" Text="Login" class="button" OnClick="loginbtn_Click" />
            </form>

            <div class="signup-link">
                <p>Don't have an account? <a href="Register.aspx">Register</a></p>
            </div>
        </div>
    </section>
</main>

<!-- Custom JS -->
<script src="./js/script.js"></script>

<!-- Ionicon -->
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>
</html>
