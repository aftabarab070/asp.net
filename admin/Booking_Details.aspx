<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Admin/Booking_Details.aspx.cs" CodeBehind="Booking_Details.aspx.cs" Inherits="CarRental.Admin.Booking_Details" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>User Booking Details</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bootstrap 4 -->
    <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- JQVMap -->
    <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
    <!-- summernote -->
    <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
    <!-- <style>
    @media print {
        .no-print {
            display: none;
        }
    }
    </style> -->
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
                                <i class="nav-icon fas fa-car-alt"></i>
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
                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>
        <!-- /.Menu Bar -->

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0">Booking Details</h1>
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
                    <!-- Small boxes (Stat box) -->
                    <div class="row">
                        <div class="container-fluid">
                            <div class="container-fluid">
                                <div class="table-responsive">
                                    <asp:Repeater runat="server" ID="CustomerDetails">
                                        <ItemTemplate>
                                            <table class="table table-striped table-bordered table-hover">
                                                <tbody>
                                                    <tr>
                                                        <th colspan="4" class="text-center text-danger p-4">
                                                            <h3><%# Eval("bookingnumber") %> Booking Details</h3>
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th colspan="4" class="text-center text-primary">User Detils</th>
                                                    </tr>
                                                    <tr class="text-center">
                                                        <th colspan="1">Booking No.</th>
                                                        <td><%# Eval("bookingnumber") %></td>
                                                        <th>Client Name</th>
                                                        <td><%# Eval("fullname") %></td>
                                                    </tr>
                                                    <tr class="text-center">
                                                        <th colspan="1">Content No.</th>
                                                        <td><%# Eval("mob") %></td>
                                                        <th>Email ID</th>
                                                        <td><%# Eval("email") %></td>
                                                    </tr>
                                                    <tr>
                                                        <th colspan="4" class="text-center text-primary">Booking Detils</th>
                                                    </tr>
                                                    <tr class="text-center">
                                                        <th colspan="1">Car Name</th>
                                                        <td><%# Eval("car_name") %></td>
                                                        <th>Booking Date</th>
                                                        <td><%# Eval("postingdate") %></td>
                                                    </tr>
                                                    <tr class="text-center">
                                                        <th colspan="1">From Date</th>
                                                        <td><%# Eval("pdate") %></td>
                                                        <th>To Date</th>
                                                        <td><%# Eval("ddate") %></td>
                                                    </tr>
                                                    <tr class="text-center">
                                                        <th colspan="1">Total Days</th>
                                                        <td><%# Eval("duration") %></td>
                                                        <th>Rent Per Day</th>
                                                        <td>₹<%# Eval("car_amount") %></td>
                                                    </tr>
                                                    <tr class="text-center">
                                                        <th colspan="3">Grand Total</th>
                                                        <td>₹<%# Eval("tamount") %></td>
                                                    </tr>
                                                    <tr class="text-center">
                                                        <th colspan="3">Booking Status</th>
                                                        <td><%# Eval("status") %></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" class="text-center">                                                            
                                                            <%# GetActionButtons(Eval("status").ToString(), Eval("id").ToString(), Eval("car_id").ToString()) %>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    <!-- jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="plugins/jquery-ui/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
        $.widget.bridge('uibutton', $.ui.button)
    </script>
    <!-- Bootstrap 4 -->
    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- ChartJS -->
    <script src="plugins/chart.js/Chart.min.js"></script>
    <!-- Sparkline -->
    <script src="plugins/sparklines/sparkline.js"></script>
    <!-- JQVMap -->
    <script src="plugins/jqvmap/jquery.vmap.min.js"></script>
    <script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="plugins/jquery-knob/jquery.knob.min.js"></script>
    <!-- daterangepicker -->
    <script src="plugins/moment/moment.min.js"></script>
    <script src="plugins/daterangepicker/daterangepicker.js"></script>
    <!-- Tempusdominus Bootstrap 4 -->
    <script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
    <!-- Summernote -->
    <script src="plugins/summernote/summernote-bs4.min.js"></script>
    <!-- overlayScrollbars -->
    <script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/adminlte.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="dist/js/pages/dashboard.js"></script>
</body>

</html>
