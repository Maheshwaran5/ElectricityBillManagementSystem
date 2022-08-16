<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Index</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	background-image:
		url("https://y26uq11r8xr1zyp0d3inciqv-wpengine.netdna-ssl.com/wp-content/uploads/2019/10/11-1-1024x600.jpg");
	background-height: 786px;
	background-width: 1366px;
	background-attachment: fixed;
	background-size: cover;
	font-family: Arial, Helvetica, sans-serif;
}

h1 {
	font-family: lucida Handwriting, Cursive;
	color: white;
}

.navbar {
	overflow: hidden;
	background-color: #38fca4;
}

.navbar a {
	float: left;
	font-size: 16px;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: #000000;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: #fa6e6e;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}
</style>
</head>
<body>
	<h1 align="center">Welcome To Customer Index</h1>

	<div class="navbar">
		<div class="dropdown">
			<button class="dropbtn">
				Customer Details <i class="fa fa-caret-down"></i>
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
				Bill Details <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="/billdetails/addform">Add Bill Details</a>
	<br>
	<a href="/billdetails/list">View Bill Details List</a>
	<br>
	<a href="/billdetails/getbilldetailsid?id=7654298765">Get Bill ID</a>
	<br>

			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				Bill Payment <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="/billpayment/addform">Add Bill Payment</a>
	<br>
	<a href="/billpayment/list">View Bill Payment Details List</a>
	<br>

			</div>
		</div>

		
			</div>
		
	

</body>
</html>


