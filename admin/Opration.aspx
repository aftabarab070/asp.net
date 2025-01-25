<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Opration.aspx.cs" Inherits="CarRental.Admin.Opration" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Dashboard/Arab Cars</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">    
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

        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0">Update Cars</h1>
                        </div>
                    </div><!-- /.row -->
                        <div class="row">
                            <div class="col-md-6">
                                <asp:TextBox runat="server" type="text" ID="carname" placeholder="Enter Car Name" class="form-control my-1"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox runat="server" type="text" ID="caryear" placeholder="Enter Car Modal Year" class="form-control my-1" ></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <asp:TextBox runat="server" type="text" ID="carcap" placeholder="Enter Car Seats" class="form-control my-1"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox runat="server" type="text" ID="carkm" placeholder="Enter Car KiloMeters" class="form-control my-1" ></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <asp:TextBox runat="server" type="text" ID="caramt" placeholder="Enter Car Amount" class="form-control my-1"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox runat="server" type="text" ID="carquantity" placeholder="Enter Car Quantity" class="form-control my-1"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <asp:DropDownList ID="carfueltype" class="form-control my-1" runat="server">
                                    <asp:ListItem class="dropdown-item">Cng</asp:ListItem>
                                    <asp:ListItem>Gasoline</asp:ListItem>
                                    <asp:ListItem>Petrol</asp:ListItem>
                                    <asp:ListItem>Diesel</asp:ListItem>
                                    <asp:ListItem>Hybrid</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-6">  
                                <asp:FileUpload ID="carimg" class="form-control" runat="server" accept="image/*" />                             
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <asp:TextBox runat="server" TextMode="MultiLine" placeholder="Enter Car Description" ID="cardes" class="form-control my-1"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                 <asp:TextBox runat="server" placeholder="Enter Car Type" ID="cartype" class="form-control my-1"></asp:TextBox>
                            </div>
                            </div>
                        </div>
                        <asp:Button ID="updatecardata" runat="server" class="btn btn-primary w-100" Text="Update" OnClick="updatecardata_Click" />
                </form>
                
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->
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