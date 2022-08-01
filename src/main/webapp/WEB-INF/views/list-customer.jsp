<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Customer Name</th>
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
				<c:forEach var="meterbox" items="${allmeterbox}">
					<tr>
						<td>${meterbox.customerName}</td>
						<td>${meterbox.mobileNumber}</td>
						<td>${meterbox.aadhaarNumber}</td>
						<td>${meterbox.accountNumber}</td>
						<td>${meterbox.meterId}</td>
						<td>${meterbox.depositAmount}</td>
						<td>${meterbox.advanceAmount}</td>
						<td>${meterbox.address}</td>
						<td>${meterbox.state}</td>
						<td>${meterbox.country}</td>
						<td>${meterbox.pinCode}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>