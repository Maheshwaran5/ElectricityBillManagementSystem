<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill Details List</title>
<style type="text/css">
body {
	background-image:
		url("https://cdn2.vectorstock.com/i/1000x1000/89/16/bill-pay-flat-online-payment-billing-system-vector-30198916.jpg");
	background-height: 786px;
	background-width: 1366px;
	background-attachment: fixed;
	background-size: cover;
	font-family: Arial, Helvetica, sans-serif;
}
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
</style>
</head>
<body>
<p>
        <button onclick="document.location='/index/customerindex/'" style="float:left">Back</button>
    </p>
	<div id="table root">
		<table border ="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>Bill Id</th>
					<th>Bill Date</th>
					<th>Unit Consumed</th>
					<th>Bill Amount</th>
					<th>Account Number</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="billdetails" items="${allbilldetails}">
					<tr>
						<td>${billdetails.billId}</td>
						<td>${billdetails.billDate}</td>
						<td>${billdetails.unitConsumed}</td>
						<td>${billdetails.billAmount}</td>
						<td>${billdetails.accountNumber}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>