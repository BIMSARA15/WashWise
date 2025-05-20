<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">


    <link href="CSS/regform/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="CSS/regform/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <link href="CSS/regform/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="CSS/regform/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
    <link href="CSS/regform/css/main.css" rel="stylesheet" media="all">


<title>Add employee</title>

</head>

<body>

<br><br>
<nav style="background-color: #333; position: fixed; top: 0; width: 100%; z-index: 1000;">
    <div style="margin: 0 auto; padding: 10px 20px;">
        <div style="display: flex; align-items: center;">
           
            <a href="admindashboard.jsp" style="color: white; font-size: 24px; text-decoration: none; margin-left: 15px;">
                <span style="color: #00A6FB; font-weight: bold;">Wash</span>Wise
            </a>
        </div>
    </div>
</nav>

		<div style="background-color: gray; padding-top: 45px; padding-bottom: 50px;">

        <div style="max-width: 790px; margin: 0 auto; width: 100%;">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Employee Registration Form</h2>
                </div>
                <div style="padding: 20px; background-color: white; border: 1px solid #ddd; border-radius: 5px;">
						
					<!-- Create form for insert data -->
                    <form action="AddEmployeeServlet" method="post">
					
                        <div class="form-row m-b-55">
                            <div class="name">Name</div>
                            <div class="value">
                            <div class="row row-space">
                            <div class="col-2">
                            <div class="input-group-desc">
                            <input type="text" name="fname" required style="padding: 10px; border: 2px solid #ccc; border-radius: 5px; font-size: 16px; width: 100%; box-sizing: border-box;">
                            <label style="font-size: 16px;  color: gray; margin-bottom: 5px; display: gray;">First Name</label>
							</div>
                             </div>
                             
                             
                             <div class="col-2">
                             <div class="input-group-desc">
                             <input type="text" name="lname" required style="padding: 10px; border: 2px solid #ccc; border-radius: 5px; font-size: 16px; width: 100%; box-sizing: border-box;">
							 <label style="font-size: 16px;  color: gray; margin-bottom: 5px; display: gray;">Last Name</label>
                             </div>
                             </div>
                             </div>
                            </div>
                        </div>
						
                        <div class="form-row">
                        <div class="name">Address</div>
                        <div class="value">
                        <div class="input-group">
                        <input type="text" name="address" required style="padding: 10px; border: 2px solid #ccc; border-radius: 5px; font-size: 16px; width: 100%; box-sizing: border-box;">
						</div>
                        </div>
                        </div>
						
						
                        <div class="form-row">
                        <div class="name">Date of Birth</div>
                        <div class="value">
                        <div class="input-group">
                        <input type="date" name="dob" required style="padding: 10px; border: 2px solid #ccc; border-radius: 5px; font-size: 16px; width: 100%; box-sizing: border-box;">
						</div>
                        </div>
                        </div>
						
                        <div class="form-row">
                        <div class="name">Phone</div>
                        <div class="value">
						<div class="input-group">
                        <input type="number" name="phone" required style="padding: 10px; border: 2px solid #ccc; border-radius: 5px; font-size: 16px; width: 100%; box-sizing: border-box;">
						</div>
                        </div>
                        </div>
						
						 <div class="form-row">
                         <div class="name">Username</div>
                         <div class="value">
						 <div class="input-group">
                         <input type="text" name="username" required style="padding: 10px; border: 2px solid #ccc; border-radius: 5px; font-size: 16px; width: 100%; box-sizing: border-box;">
						 </div>
                         </div>
                        </div>
						
						 <div class="form-row">
                         <div class="name">Password</div>
                         <div class="value">
						 <div class="input-group">
                         <input type="password" name="password" required style="padding: 10px; border: 2px solid #ccc; border-radius: 5px; font-size: 16px; width: 100%; box-sizing: border-box;">
						 </div>
                         </div>
                        </div>
						
					
                        <div>
                        	<button type="submit" style="border-radius: 2px; background-color: gray; color: white; padding: 10px 20px; border: none; cursor: pointer;">Register</button>
							<button type="reset" style="border-radius: 2px; background-color: gray; color: white; padding: 10px 20px; border: none; cursor: pointer;">Reset</button>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    
    <script src="CSS/regform/vendor/jquery/jquery.min.js"></script>
    <script src="CSS/regform/vendor/select2/select2.min.js"></script>
    <script src="CSS/regform/vendor/datepicker/moment.min.js"></script>
    <script src="CSS/regform/vendor/datepicker/daterangepicker.js"></script>
    <script src="CSS/regform/js/global.js"></script>
    <script src="CSS/regform/vendor/jquery/jquery.min.js"></script>
    <script src="CSS/regform/vendor/select2/select2.min.js"></script>
    <script src="CSS/regform/vendor/datepicker/moment.min.js"></script>
    <script src="CSS/regform/vendor/datepicker/daterangepicker.js"></script>
    <script src="CSS/regform/js/global.js"></script>

</body>
</html>
