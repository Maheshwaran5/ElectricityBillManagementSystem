<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Meterbox Information Index</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	background-image:
		url("https://images.wallpapersden.com/image/ws-cold-winter-digital-art-8k-10k_85267.jpg");
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
	<h1 align="center">Welcome To Warehouse</h1>

	<div class="navbar">
		<div class="dropdown">
			<button class="dropbtn">
				Meterbox Information <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="/meterbox/addform">Meterbox Add</a> 
				<br> 
				<a href="/meterbox/list/">View All Materbox List</a> 
				<br>
				 <a href="/meterbox/getmeterid?id=1">Get Materbox ID</a> <br>

			</div>
		</div>

		
			</div>
		
	

</body>
</html>


