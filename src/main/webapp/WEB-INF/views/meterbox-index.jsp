<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Meterbox Information Index</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<%@include file="/WEB-INF/css/meterbox-index.css"%>
h1{
text-align:center;
}
</style>
</head>
<body>
	<h1>Meterbox Information</h1>

	<div class="navbar">
		<div class="dropdown">
			<button class="dropbtn">
				Meterbox Information <em class="fa fa-caret-down"></em>
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


