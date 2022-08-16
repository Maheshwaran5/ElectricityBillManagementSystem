<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer List</title>
<style type="text/css">
tr:hover {background-color: #ECF32D;}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
tr:nth-child(even) {
  background-color: rgba(150, 212, 212, 0.4);
}
th:nth-child(even),td:nth-child(even) {
  background-color: rgba(150, 212, 212, 0.4);
}
body {
	background-image:
		url("https://wallpaperaccess.com/full/2374143.jpg");
	height: 768px;
	width: 1366px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>
</head>
<body>
<p>
        <button onclick="document.location='/index/customerindex/'" style="float:left">Back</button>
    </p>
	<div id="table root">
		<table border ="2" width="100%" cellpadding="2" >
	
			<thead>
				<tr>
				
					<th>Customer Name</th>
					<th>Customer Id</th>
					<th>Password</th>
					<th>Mobile Number</th>
					<th>Aadhaar Number</th>
					<th>Account Number</th>
					<th>Meter Id</th>
					<th>Deposit Amount</th>
					<th>Advance Amount</th>
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
						<td>${customer.customerid}</td>
						<td>${customer.password}</td>
						<td>${customer.mobileNumber}</td>
						<td>${customer.aadhaarNumber}</td>
						<td>${customer.accountNumber}</td>
						<td>${customer.meterId}</td>
						<td>${customer.depositAmount}</td>
						<td>${customer.advanceAmount}</td>
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