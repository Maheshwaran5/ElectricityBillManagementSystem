<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer Index</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<%@include file="/WEB-INF/css/customer-index.css"%>
h1{
text-align:center
}
</style>
</head>
<body>
	<h1>Welcome To Customer Index</h1>

	<div class="navbar">
		<div class="dropdown">
			<button class="dropbtn">
				Customer Details <em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="/customer/addform">Add Customer</a>
				 <br>
				  <a href="/customer/list">View Customer List</a> <br> 
				  <a href="/customer/getcustomerid?id=11165789843">Get Customer ID</a> 
				  <br>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				Bill Details <em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="/billdetails/addform">Add Bill Details</a>
	<br>
	<a href="/billdetails/list">View Bill Details List</a>
	<br>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				Bill Payment <em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<!--  <a href="/billpayment/addform">Add Bill Payment</a> -->
	<br>
	<a href="/billpayment/list">View Bill Payment Details List</a>
	<br>

			</div>
		</div>

		
			</div>
		
	

</body>
</html>


