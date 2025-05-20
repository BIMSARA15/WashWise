<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<style type="text/css">
  <%@include file="CSS/addOrder.css" %>
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Add Order</title>

</head>

<body>
	
	<form method = "POST" action = "ViewOrderServlet">
	<table>
		<tr>
			<th WIDTH="2500"></th>
			<th WIDTH="2500"></th>
			<th WIDTH="100"><input type = "submit" value = "Show all orders" /></th>
		</tr>
	</table>
	</form>
	
	<fieldset>
	<legend>New Order</legend><br>
	<form method="post" action="AddOrderServlet">
		<table style="width: 100%;">
		<tr>
			<td>Order Id</td>
			<td><input type="text" name="orderId" value="Auto Generated" readonly="readonly" style="color:#B0B0B0;"></td>
		</tr>
		<tr>
			<td>Customer Id</td>
			<td><input type="text" name="custId" required></td>
		</tr>
		<tr>
			<td>Service Type</td>
			<td>
				<select name="service" required>
					<option value="">Select Service</option>
					<option value="wash">Wash</option>
					<option value="dry">Dry</option>
					<option value="iron">Iron</option>
					<option value="dryClean">Dry Clean</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>Weight (kg)</td>
			<td><input type="text" name="weight" placeholder="Enter weight in kg" required></td>
		</tr>
		<tr>
			<td>Order Date</td>
			<td><input type="date" name="orderDate" required></td>
		</tr>
		<tr>
			<td>Delivery Date</td>
			<td><input type="date" name="deliveryDate" required></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><input type="submit" value="Submit" /></td>
		</tr>
		</table>
	</form>
	</fieldset>
</body>
</html>
