<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewClient.aspx.cs" Inherits="CarRental.Admin.NewClient" %>

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
     <form runat="server">
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
                   
                        <asp:Button ID="adminlogoutbtn" runat="server" Text="Log Out" CssClass="btn btn-danger" OnClick="adminlogoutbtn_Click1" />
                    
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

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0">New Client</h1>
                        </div>
                    </div>
                    <!-- /.row -->

                    <!-- Table -->
                    <asp:Repeater runat="server" ID="CustomerDetails">
                        <HeaderTemplate>
                            <table class="table table-hover table-bordered">
                                <tr>
                                    <th>#</th>
                                    <th>Customer Name</th>
                                    <th>Customer Email</th>
                                    <th>From Date</th>
                                    <th>Drop Date</th>
                                    <th>Posting Date</th>
                                    <th>Status</th>
                                    <th>Action</th>

                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("id") %></td>
                                <td><%# Eval("fullname") %></td>
                                <td><%# Eval("email") %></td>
                                <td><%# Eval("pdate") %></td>
                                <td><%# Eval("ddate") %></td>
                                <td><%# Eval("postingdate") %></td>
                                <td><%# Eval("status") %></td>
                                <td>
                                    <a href="Booking_Details.aspx?id=<%# Eval("id") %>&carid=<%# Eval("car_id") %>" class="btn btn-info btn-sm">View</a>
                                    <a href="#" data-toggle="modal" data-target="#deleteModal_<%# Eval("id") %>">
                                        <i class="fa fa-trash text-danger"></i>
                                    </a>
                                </td>
                            </tr>
                            <!-- Modal -->
                                    <div class="modal fade" id="deleteModal_<%# Eval("id") %>" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel_<%# Eval("id") %>" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="deleteModalLabel_<%# Eval("id") %>">Delete Client</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">                                                   
                                                        <asp:TextBox runat="server" type="hidden" ID="delete_id"></asp:TextBox>
                                                        <asp:TextBox runat="server" type="hidden" ID="delete_email"></asp:TextBox>
                                                        <h4>Are you sure you want to delete this Customer?</h4>
                                                        <asp:TextBox runat="server" TextMode="MultiLine" name="reason" class="form-control" placeholder="Reason" required></asp:TextBox>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                    <a href="DeleteNewClient.aspx?id=<%# Eval("id") %>&email=<%# Eval("email") %>" type="submit" name="deletedata" class="btn btn-danger">Yes, Delete!</a>
                                                </div>
                                            </div>
                                           
                                        </div>
                                    </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Control sidebar content goes here -->
            </aside>
            <!-- /.control-sidebar -->
        </div>
        <!-- /.content-wrapper -->

        <!-- Control Sidebar -->
        <!-- Include control sidebar if needed -->

        <!-- Main Footer -->
        <!-- Include footer here -->

    </div>
    <!-- ./wrapper -->
     </form>
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
