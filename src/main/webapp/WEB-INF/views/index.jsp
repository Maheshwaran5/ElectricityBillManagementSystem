<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<style>
<%@include file="/WEB-INF/css/index.css"%>
</style>


</head>
<body>
	<h1 >Electricity Bill Management System</h1>

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