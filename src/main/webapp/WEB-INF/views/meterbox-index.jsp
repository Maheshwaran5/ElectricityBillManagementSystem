<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Meterbox Information Index</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="/WEB-INF/css/meterbox-index.css"%>
h1{
text-align:center;
}
</style>
</head>
<body>
	<h1>Meterbox Information</h1>

	<div class="navbar">
	<button onclick="document.location='/index/home'" style="float:right;width: 101px;height: 45px;font-size: 20px;font-weight: 500;margin-top: 40x;">Logout</button>
		<div class="dropdown">
			<button class="dropbtn">
				Meterbox Information <em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="/meterbox/addform">Meterbox Add</a> 
				<br> 
				<a href="/meterbox/list/">View All Materbox List</a> 
				<br>
				 <a href="/meterbox/getmeterid?id=107">Get Materbox ID</a> <br>

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

		
			</div>

</body>
</html>


