<!DOCTYPE html>
<html>

<head>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<meta charset="ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Icons font CSS-->
    <link href="CSS/regform/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="CSS/regform/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
	
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="CSS/regform/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="CSS/regform/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="CSS/regform/css/main.css" rel="stylesheet" media="all">
    
    <%@ page import="com.lms.model.Customer,com.lms.service.*,com.lms.util.*,java.util.*" %>

<title>Register</title>

</head>
<nav style="background-color: #333; position: fixed; top: 0; width: 100%; z-index: 1000;">
    <div style="margin: 0 auto; padding: 10px 20px;">
        <div style="display: flex; align-items: center;">
           
            <a href="admindashboard.jsp" style="color: white; font-size: 24px; text-decoration: none; margin-left: 15px;">
                <span style="color: #00A6FB; font-weight: bold;">Wash</span>Wise
            </a>
        </div>
    </div>
</nav>
<body>


    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Registration Form</h2>
                </div>
                <div class="card-body">
                    <form action="RegistrationAdmin" method="post">
					
                        <div class="form-row m-b-55">
                            <div class="name">Name</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="fname" required="required">
                                            <label class="label--desc">first name</label>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="lname">
                                            <label class="label--desc">last name</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
						
                        <div class="form-row">
                            <div class="name">Address</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="address" required="required">
                                </div>
                            </div>
                        </div>
						
						
                        <div class="form-row">
                            <div class="name">Email</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="email" name="email" required="required">
                                </div>
                            </div>
                        </div>
						
                        <div class="form-row">
                            <div class="name">Phone</div>
                            <div class="value">
								<div class="input-group">
                                    <input class="input--style-5" type="text" name="pnumber" required="required">
                                </div>
                            </div>
                        </div>
						
						 <div class="form-row">
                            <div class="name">Username</div>
                            <div class="value">
								<div class="input-group">
                                    <input class="input--style-5" type="text" name="username" required="required">
                                </div>
                            </div>
                        </div>
						
						 <div class="form-row">
                            <div class="name">Password</div>
                            <div class="value">
								<div class="input-group">
                                    <input class="input--style-5" type="password" name="password" required="required">
                                </div>
                            </div>
                        </div>
				 							
                        <div class="form-row p-t-20">
                            <label class="radio-container label">I agree all statements in Terms of service
							<input type="checkbox" required="required">
                            <span class="checkmark"></span>
                            </label>
                       </div>
                      
                        <div>
                            <button class="btn btn--radius-2 btn--red" type="submit">Register</button>
							<button class="btn btn--radius-2 btn--red" type="reset">Reset</button>
							
							<div id="buttons">
  							<a href="customerlist.jsp" style="border-radius: 5px;  
  							padding: 5px 10px; 
  							font-size: 22px;  
  							text-decoration: none;  
  							margin: 20px;  
  							color: #fff;  
  							position: relative;  
  							display: inline-block;
  							background-color: #9b59b6;
  							box-shadow: 0px 5px 0px 0px #82409D;" >CANCEL</a>
  							</div>
                        </div>
                    </form>
                </div>
            </div>            
        </div>
    </div>
    

    <!-- Jquery JS-->
    <script src="CSS/regform/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="CSS/regform/vendor/select2/select2.min.js"></script>
    <script src="CSS/regform/vendor/datepicker/moment.min.js"></script>
    <script src="CSS/regform/vendor/datepicker/daterangepicker.js"></script>
    <!-- Main JS-->
    <script src="CSS/regform/js/global.js"></script>


</body>
</html>
