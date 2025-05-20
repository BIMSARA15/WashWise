<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.lms.service.DatabaseImpl" %>
<%@ page import="com.lms.model.Delivery" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delivery</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="CSS/Delivery/delivery.css">
</head>
<body>
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
        <h1 class="text-center text-primary mb-4">Laundry Management System</h1>

        <div class="text-end mb-3">
            <a href="delivery-form.jsp" class="btn btn-primary">Add Delivery</a>
        </div>

        <div class="card">
            <div class="card-header bg-primary text-white">
                <h2 class="card-title text-center">All Deliveries</h2>
            </div>
            <div class="card-body">
                <table class="table table-striped table-bordered">
                    <thead class="table-dark">
                        <tr>
                            <th>Order ID</th>
                            <th>Location</th>
                            <th>Phone No</th>
                            <th>Email</th>
                            <th>Delivery Type</th>
                            <th>Delivery ID</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            DatabaseImpl db = new DatabaseImpl();
                            try {
                                ArrayList<Delivery> deliveries = db.getAllDeliveries();
                                for (Delivery delivery : deliveries) {
                        %>
                                    <tr>
                                        <td><%= delivery.getDeliveryId() %></td>
                                        <td><%= delivery.getLocation() %></td>
                                        <td><%= delivery.getPhoneNo() %></td>
                                        <td><%= delivery.getEmail() %></td>
                                        <td><%= delivery.getDeliveryTypeId() == 1 ? "Regular" : "Express" %></td>
                                        <td><%= delivery.getOrderId() %></td>
                                    </tr>
                        <%
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
