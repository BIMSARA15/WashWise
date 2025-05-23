<%@ page import="com.lms.service.*" %>
<%@ page import="com.lms.model.*" %>
<%@ page import="java.sql.SQLException" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Delivery Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="CSS/Delivery/delivery.css">
</head>

<body class="bg-light">

<!-- <div>
<title>Dashboard</title>
 
    <link href="CSS/dashboard/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <link href="CSS/dashboard/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet" type="text/css">

    <link href="CSS/dashboard/plugins/bower_components/toast-master/css/jquery.toast.css" rel="stylesheet" type="text/css">

    <link href="CSS/dashboard/plugins/bower_components/morrisjs/morris.css" rel="stylesheet" type="text/css">

    <link href="CSS/dashboard/plugins/bower_components/chartist-js/dist/chartist.min.css" rel="stylesheet" type="text/css">
    
    <link href="CSS/dashboard/plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.css" rel="stylesheet" type="text/css">

    <link href="CSS/dashboard/css/animate.css" rel="stylesheet" type="text/css">
   
    <link href="CSS/dashboard/css/style.css" rel="stylesheet" type="text/css">
  
    <link href="CSS/dashboard/css/colors/default.css" id="theme" rel="stylesheet" type="text/css">


<body class="fix-header">

    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
        </svg>
    </div>
 
    <div id="wrapper">
      
        <nav class="navbar navbar-default navbar-static-top m-b-0">
            <div class="navbar-header">
                <div class="top-left-part">
              
				<center><h4 style="color:#044fbf; font-size:23px;" > <strong>Wash</strong> <u>Wise</u></h4> </center> 
                    
                </div>
              
                <ul class="nav navbar-top-links navbar-right pull-right">
                    <li>
                        <a class="nav-toggler open-close waves-effect waves-light hidden-md hidden-lg" href="javascript:void(0)"><i class="fa fa-bars"></i></a>
                    </li>
                    <li>
                        <form role="search" class="app-search hidden-sm hidden-xs m-r-10">
                            <input type="text" placeholder="Search..." class="form-control"> 
                            <a href="">
                                <i class="fa fa-search"></i>
                            </a> 
                        </form>
                    </li>
                    <li>
                        <a class="profile-pic" href="#"> <img src="CSS/dashboard/plugins/images/users/varun.jpg" alt="user-img" width="36" class="img-circle"><b class="hidden-xs"><% String name = session.getAttribute("userName").toString(); out.print(name);%></b></a>
                    </li>
                </ul>
            </div>
            
        </nav>
     
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav slimscrollsidebar">
                <div class="sidebar-head">
                    <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu">Navigation</span></h3>
                </div>
                <ul class="nav" id="side-menu">
                    <li style="padding: 70px 0 0;">
                        <a href="dashboard.jsp" class="waves-effect"><i class="fa fa-clock-o fa-fw" aria-hidden="true"></i>Dashboard</a>
                    </li>
                    <li>
                      <a href="customerEditBios.jsp" class="waves-effect"><i class="fa fa-user fa-fw" aria-hidden="true"></i> <b> Edit Profile  </b></a>
                    </li>
                    <li>
                        <a href="order.jsp" class="waves-effect"><i class="fa fa-table fa-fw" aria-hidden="true"></i> <b>Order </b></a>
                    </li>
                    <li>
                        <a href="paymentList.jsp" class="waves-effect"><i class="fa fa-font fa-fw" aria-hidden="true"></i> <b>Payment </b></a>
                    </li>
                   
                  
                    <li>
                        <a href="logout.jsp" class="waves-effect"><i class="fa fa-info-circle fa-fw" aria-hidden="true"></i>  <b>Log out </b></a>
                    </li>

                </ul>
                
            </div>
            
        </div>
       
      
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Dashboard</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        
                     
                    </div>
                  
                </div>
          
                <div class="row">
                
                	 <center><h3 style="color:#044fbf;font-family: Helvetica,sans-serif; font-size:30px; font-weight: bold;"><u><% String name1 = session.getAttribute("userName").toString(); out.print("Welcome back "+ name1 +" !");%></u></h3></center> 
                    
                    <br>
                    <div class="col-lg-4 col-sm-6 col-xs-12">
                        <div class="white-box analytics-info">
                            <h3 class="box-title">Total Orders</h3>
                            <ul class="list-inline two-part">
                                <li>
                                    <div id="sparklinedash"></div>
                                </li>
                                <li class="text-right"><i class="ti-arrow-up text-success"></i> <span class="counter text-success">12</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 col-xs-12">
                        <div class="white-box analytics-info">
                            <h3 class="box-title">Total Delievries</h3>
                            <ul class="list-inline two-part">
                                <li>
                                    <div id="sparklinedash2"></div>
                                </li>
                                <li class="text-right"><i class="ti-arrow-up text-purple"></i> <span class="counter text-purple">9</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 col-xs-12">
                        <div class="white-box analytics-info">
                            <h3 class="box-title">Total Visits</h3>
                            <ul class="list-inline two-part">
                                <li>
                                    <div id="sparklinedash3"></div>
                                </li>
                                <li class="text-right"><i class="ti-arrow-up text-info"></i> <span class="counter text-info">25</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            
                <div class="row">
                    
                </div>
            
                <div class="row">
                   
                </div>
              
                <div class="row">
                
                </div>
            </div>
        
            <footer class="footer text-center">  <b> - Laundry Management System -</b> </footer>
        </div>
     
    </div>
    <script src="CSS/dashboard/plugins/bower_components/jquery/dist/jquery.min.js"></script>

    <script src="CSS/dashboard/bootstrap/dist/js/bootstrap.min.js"></script>
 
    <script src="CSS/dashboard/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
   
    <script src="CSS/dashboard/js/jquery.slimscroll.js"></script>
 
    <script src="CSS/dashboard/js/waves.js"></script>
  
    <script src="CSS/dashboard/plugins/bower_components/waypoints/lib/jquery.waypoints.js"></script>
    
    <script src="CSS/dashboard/plugins/bower_components/counterup/jquery.counterup.min.js"></script>
    
    <script src="CSS/dashboard/plugins/bower_components/chartist-js/dist/chartist.min.js"></script>
    
    <script src="CSS/dashboard/plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.min.js"></script>
   
    <script src="CSS/dashboard//plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
  
    <script src="CSS/dashboard/js/custom.min.js"></script>
    
    <script src="CSS/dashboard/js/dashboard1.js"></script>
    
   <script src="CSS/dashboard/plugins/bower_components/toast-master/js/jquery.toast.js"></script>
   
</div>-->


<nav style="background-color: #333; position: fixed; top: 0; width: 100%; z-index: 1000;">
    <div style="margin: 0 auto; padding: 10px 20px;">
        <div style="display: flex; align-items: center;">
           
            <a href="admindashboard.jsp" style="color: white; font-size: 24px; text-decoration: none; margin-left: 15px;">
                <span style="color: #00A6FB; font-weight: bold;">Wash</span>Wise
            </a>
        </div>
    </div>
</nav>
    <div class="container mt-5">
        <div class="card shadow-lg">
            <div class="card-header text-center bg-primary text-white">
                <h3>Delivery Form</h3>
            </div>
            <div class="card-body">
                <form name="deliveryForm" method="post" action="deliveryServlet">
                    <div class="mb-3 row">
                        <label for="orderId" class="col-sm-3 col-form-label">Order ID</label>
                        <div class="col-sm-9">
                            <input type="number" class="form-control" id="orderId" name="orderId" value="" required>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="location" class="col-sm-3 col-form-label">Location</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="location" name="location" value="" required>
                        </div>
                    </div>

                   <div class="mb-3 row">
    <label for="phoneNo" class="col-sm-3 col-form-label">Phone No</label>
    <div class="col-sm-9">
        <input type="text" class="form-control" id="phoneNo" name="phoneNo" value="" required 
               pattern="^\d{10}$" 
               title="Please enter a valid 10-digit phone number">
    </div>
</div>

<div class="mb-3 row">
    <label for="email" class="col-sm-3 col-form-label">Email</label>
    <div class="col-sm-9">
        <input type="email" class="form-control" id="email" name="email" value="" required
               pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" 
               title="Please enter a valid email address">
    </div>
</div>


                    <div class="mb-3 row">
                        <label class="col-sm-3 col-form-label">Delivery Type</label>
                        <div class="col-sm-9">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="deliveryType" id="regular" value="1" checked required>
                                <label class="form-check-label" for="regular">Regular</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="deliveryType" id="express" value="2" required>
                                <label class="form-check-label" for="express">Express</label>
                            </div>
                        </div>
                    </div>

                    <div class="text-center">
                        <button type="submit" class="btn btn-success">Submit Delivery</button>
                    </div>
                </form>
            </div>
        </div>
        <!-- Optional: Include a loading animation if needed -->
        <div class="text-center mt-4">
            <img id="gif" src="CSS/Delivery/gals3.gif" class="img-fluid">
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
