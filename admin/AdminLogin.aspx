﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Admin/AdminLogin.aspx.cs" CodeBehind="AdminLogin.aspx.cs" Inherits="CarRental.Admin.AdminLogin" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="./plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->    
  <link rel="stylesheet" href="./plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->         
  <link rel="stylesheet" href="./dist/css/adminlte.min.css">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="card card-outline card-primary">
    <div class="card-header text-center">
      <a href="index.aspx" class="h1"><b>Admin</b>/Arab Cars</a>
    </div>
    <div class="card-body">
      <p class="login-box-msg"Sign in to start your session</p>

      <!-- ASP.NET Form -->
      <form id="loginForm" runat="server">
        <div class="input-group mb-3">
          <asp:TextBox ID="txtunm" runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <asp:TextBox ID="txtpwd" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password"></asp:TextBox>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        
        <!-- Validation Message -->
        <asp:Label ID="ErrorMessageLabel" runat="server" ForeColor="Red" Visible="False" Text="Incorrect Username or Password."></asp:Label>

        <div class="row">
          <div class="col-12">
            <asp:Button ID="LoginButton" runat="server" CssClass="btn btn-primary btn-block w-100" Text="Log In" OnClick="LoginButton_Click" />
          </div>
        </div>
      </form>
    </div>
  </div>
</div>

<!-- jQuery -->
<script src="./plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="./plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="./dist/js/adminlte.min.js"></script>
</body>
</html>