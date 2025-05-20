<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.lms.model.Employee,com.lms.service.*,com.lms.util.*,java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Employee Edit Bios</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom CSS (if needed) -->
    <style type="text/css">
        <%@include file="CSS/reg.css" %>
    </style>
</head>
<body class="container mt-5">

    <h1 class="text-center text-primary mb-4">Edit Employee Information</h1>
    
    <c:forEach var="emp" items="${empUpdate}">
        <div class="row position-absolute start-10 w-50">
            <div class="col-md-6 offset-md-3">
                <form action="UpdateEmployee" method="post" class="card p-4 shadow">
                    <input type="hidden" value="${emp.empId}" name="empId">
                    
                    <!-- First Name -->
                    <div class="mb-3">
                        <label class="form-label">First Name</label>
                        <input type="text" class="form-control" value="${emp.firstName}" name="fname" id="fname" required>
                    </div>

                    <!-- Last Name -->
                    <div class="mb-3">
                        <label class="form-label">Last Name</label>
                        <input type="text" class="form-control" value="${emp.lastName}" name="lname" id="lname">
                    </div>

                    <!-- Address -->
                    <div class="mb-3">
                        <label class="form-label">Address</label>
                        <input type="text" class="form-control" value="${emp.address}" name="address" id="address">
                    </div>

                    <!-- Date of Birth -->
                    <div class="mb-3">
                        <label class="form-label">Date of Birth</label>
                        <input type="date" class="form-control" value="${emp.dob}" name="dob" id="dob" required>
                    </div>

                    <!-- Phone Number -->
                    <div class="mb-3">
                        <label class="form-label">Phone Number</label>
                        <input type="text" class="form-control" value="${emp.phone}" name="phone" id="phone" required>
                    </div>

                    <!-- Username -->
                    <div class="mb-3">
                        <label class="form-label">Username</label>
                        <input type="text" class="form-control" value="${emp.userName}" name="username" id="username" required>
                    </div>

                    <!-- Password -->
                    <div class="mb-3">
                        <label class="form-label">Password</label>
                        <input type="password" class="form-control" value="${emp.password}" name="password" id="password" required>
                    </div>

                    <!-- Buttons -->
                    <div class="text-end">
                        <button type="submit" class="btn btn-info">Update</button>
                        <button type="reset" class="btn btn-warning">Reset</button>
                    </div>
                </form>
            </div>
        </div>
    </c:forEach>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
