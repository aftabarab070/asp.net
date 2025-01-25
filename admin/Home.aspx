﻿﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Admin/Home.aspx.cs" CodeBehind="Home.aspx.cs" Inherits="CarRental.Admin.Home" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Dashboard/Arab Cars</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="./plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bootstrap 4 -->
    <link rel="stylesheet" href="./plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="./plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- JQVMap -->
    <link rel="stylesheet" href="./plugins/jqvmap/jqvmap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="./dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="./plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="./plugins/daterangepicker/daterangepicker.css">
    <!-- summernote -->
    <link rel="stylesheet" href="./plugins/summernote/summernote-bs4.min.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        <!-- Preloader -->
        <div class="preloader flex-column justify-content-center align-items-center">
            <img class="animation__shake" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60" />
        </div>
        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <asp:HyperLink runat="server" NavigateUrl="~/home.aspx" CssClass="nav-link">Home</asp:HyperLink>
                </li>
            </ul>

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                        <i class="fas fa-expand-arrows-alt"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <form runat="server">
                        <asp:Button ID="adminlogoutbtn" runat="server" Text="Log Out" CssClass="btn btn-danger" OnClick="adminlogoutbtn_Click1" />
                    </form>
                </li>
            </ul>
        </nav>
        <!-- Main Sidebar Container -->
        <!-- Include sidebar here -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="index3.html" class="brand-link">
                <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
                    style="opacity: .8">
                <span class="brand-text font-weight-light">Alpha97 Cars / Admin</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="dist/img/admin.jpg" class="img-circle elevation-2" alt="User Image">
                    </div>
                    <div class="info">
                        <!-- Replace with a placeholder or static text -->
                        <asp:Label ID="adminunm" class="d-block" ForeColor="White" runat="server"></asp:Label>
                    </div>
                </div>

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                        <li class="nav-item">
                            <a href="Home.aspx" class="nav-link active">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Dashboard
                              <i class="right fas fa-angle"></i>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="Home.aspx" class="nav-link">
                                <i class="nav-icon fas fa-user-secret"></i>
                                <p>
                                    Client
                            <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="NewClient.aspx" class="nav-link">
                                        <i class="fa fa-plus nav-icon"></i>
                                        <p>New Client</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="ApproveClient.aspx" class="nav-link">
                                        <i class="fa fa-thumbs-up nav-icon"></i>
                                        <p>Approve Client</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="ReturnClientcar.aspx" class="nav-link">
                                        <i class="fa fa-undo nav-icon"></i>
                                        <p>Return Car</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="AddCar.aspx" class="nav-link">
                                <i class="nav-icon fas fa-plus"></i>
                                <p>
                                    Add Cars
                            <i class="right fas fa-angle"></i>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="User.aspx" class="nav-link">
                                <i class="nav-icon fas fa-user-alt"></i>
                                <p>
                                    User
                            <i class="right fas fa-angle"></i>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="FeedBack.aspx" class="nav-link">
                                <i class="nav-icon fas fa-heart"></i>
                                <p>
                                    FeedBacks
                            <i class="right fas fa-angle"></i>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="ViewCar.aspx" class="nav-link">
                                <i class="nav-icon fas fa-car"></i>
                                <p>
                                    View Cars
                                <i class="right fas fa-angle"></i>
                                </p>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0">Dashboard</h1>
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row">

                        <div class="col-lg-3 col-md-6 col-sm-12 mb-3">
                            <div class="small-box bg-info">
                                <div class="inner">
                                    <asp:Label ID="NewClientCount" runat="server" Font-Size="XX-Large" Font-Bold="true" Text="Label"></asp:Label>
                                    <p>New Orders</p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-bag"></i>
                                </div>
                                <a href="NewClient.aspx" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>


                        <div class="col-lg-3 col-md-6 col-sm-12 mb-3">
                            <div class="small-box bg-success">
                                <div class="inner">
                                    <asp:Label ID="CountCars" runat="server" Font-Size="XX-Large" Font-Bold="true" Text="Label"></asp:Label>
                                    <p>Cars</p>
                                </div>
                                <div class="icon">
                                    <i class="ion-android-car"></i>
                                </div>
                                <a href="ViewCars.aspx" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>


                        <div class="col-lg-3 col-md-6 col-sm-12 mb-3">
                            <div class="small-box bg-warning">
                                <div class="inner">
                                    <asp:Label ID="UserCount" runat="server" Font-Size="XX-Large" Font-Bold="true" Text="Label"></asp:Label>
                                    <p>User Registrations</p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-person-add"></i>
                                </div>
                                <a href="user.aspx" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>


                        <div class="col-lg-3 col-md-6 col-sm-12 mb-3">
                            <div class="small-box bg-danger">
                                <div class="inner">
                                    <asp:Label ID="FeedBackCount" runat="server" Font-Size="XX-Large" Font-Bold="true" Text="Label"></asp:Label>
                                    <p>Feedbacks</p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-heart"></i>
                                </div>
                                <a href="feedback.aspx" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>


                        <div class="col-lg-3 col-md-6 col-sm-12 mb-3">
                            <div class="small-box bg-secondary">
                                <div class="inner">
                                    <asp:Label ID="PendingClientCount" runat="server" Font-Size="XX-Large" Font-Bold="true" Text="Label"></asp:Label>
                                    <p>Pending Clients</p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-load-a"></i>
                                </div>
                                <a href="NewClient.aspx" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>


                        <div class="col-lg-3 col-md-6 col-sm-12 mb-3">
                            <div class="small-box bg-primary">
                                <div class="inner">
                                    <asp:Label ID="ApprovedClientCount" runat="server" Font-Size="XX-Large" Font-Bold="true" Text="Label"></asp:Label>
                                    <p>Approved Clients</p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-happy"></i>
                                </div>
                                <a href="ApproveClient.aspx" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>


                        <div class="col-lg-3 col-md-6 col-sm-12 mb-3">
                            <div class="small-box bg-dark">
                                <div class="inner">
                                    <asp:Label ID="ReturnClientCount" runat="server" Font-Size="XX-Large" Font-Bold="true" Text="Label"></asp:Label>
                                    <p>Returned Cars</p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-refresh"></i>
                                </div>
                                <a href="ReturnClientCar.aspx" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

        <!-- Control Sidebar -->
        <!-- Include control sidebar if needed -->

        <!-- Main Footer -->
        <!-- Include footer here -->

    </div>
    <!-- ./wrapper -->

    <!-- jQuery -->
    <script src="./plugins/jquery/jquery.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="./plugins/jquery-ui/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
        $.widget.bridge('uibutton', $.ui.button)
    </script>
    <!-- Bootstrap 4 -->
    <script src="./plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- ChartJS -->
    <script src="./plugins/chart.js/Chart.min.js"></script>
    <!-- Sparkline -->
    <script src="./plugins/sparklines/sparkline.js"></script>
    <!-- JQVMap -->
    <script src="./plugins/jqvmap/jquery.vmap.min.js"></script>
    <script src="./plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
    <!-- jQuery K./nob Chart -->
    <script src="./plugins/jquery-knob/jquery.knob.min.js"></script>
    <!-- daterang./epicker -->
    <script src="./plugins/moment/moment.min.js"></script>
    <script src="./plugins/daterangepicker/daterangepicker.js"></script>
    <!-- Tempusdo./minus Bootstrap 4 -->
    <script src="./plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
    <!-- Summerno./te -->
    <script src="./plugins/summernote/summernote-bs4.min.js"></script>
    <!-- overlayS./crollbars -->
    <script src="./plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
    <!-- AdminLTE./ App -->
    <script src="./dist/js/adminlte.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="dist/js/pages/dashboard.js"></script>

</body>
</html>