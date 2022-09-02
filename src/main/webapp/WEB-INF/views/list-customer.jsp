<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer List</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
<%@include file="/WEB-INF/css/list-customer.css"%>
</style>
</head>
<body>
	<p>
		<button onclick="document.location='/index/customerindex/'"
			style="float: left">Back</button>
	</p>
	<div id="table root">
		<table class="table">
		<caption></caption>
         <thead>
				<tr>

					<th>Customer Name</th>
					<th>Password</th>
					<th>Mobile Number</th>
					<th>Aadhaar Number</th>
					<th>Meter Id</th>
					<th>Address</th>
					<th>State</th>
					<th>Country</th>
					<th>Pincode</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="customer" items="${allcustomer}">
					<tr>
						<td>${customer.customerName}</td>
						<td>${customer.password}</td>
						<td>${customer.mobileNumber}</td>
						<td>${customer.aadhaarNumber}</td>
						<td>${customer.meterId}</td>
						<td>${customer.address}</td>
						<td>${customer.state}</td>
						<td>${customer.country}</td>
						<td>${customer.pinCode}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>