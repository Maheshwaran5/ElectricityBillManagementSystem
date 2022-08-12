<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<style>
body {
	background-image:
		url("https://images.pexels.com/photos/171428/pexels-photo-171428.jpeg?cs=srgb&dl=pexels-pok-rie-171428.jpg&fm=jpg");
	height: 500px;
	width: 500;
	background-position: center top;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

.text-danger {
	color: #e80c4d;
	font-size: 0.9em;

}
</style>


</head>
<body>
	<h1 align="center" style="color:blue;">Electricity Bill Management System</h1>

	<h1>Meterbox Information</h1>
	<a href="/meterbox/addform">Meterbox Add</a>
	<br>
	<a href="/meterbox/list/">View All Materbox List</a>
	<br>
	<a href="/meterbox/getmeterid?id=1">Get Materbox ID</a>
	<br>
	


	<h1>Customer</h1>
	<a href="/customer/addform">Add Customer</a>
	<br>
	<a href="/customer/list">View Customer List</a>
	<br>
	<a href="/customer/getcustomerid?id=11165789843">Get Customer ID</a>
	<br>


	<h1>Bill Details</h1>
	<a href="/billdetails/addform">Add Bill Details</a>
	<br>
	<a href="/billdetails/list">View Bill Details List</a>
	<br>



	<h1>Bill Payment</h1>
	<a href="/billpayment/addform">Add Bill Payment</a>
	<br>
	<a href="/billpayment/list">View Bill Payment Details List</a>
	<br>


</body>
</html>