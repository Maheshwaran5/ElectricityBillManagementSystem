<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill Details List</title>
</head>
<body>
	<div id="table root">
		<table border ="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>Bill Id</th>
					<th>Bill Date</th>
					<th>Bill Amount</th>
					<th>Unit Consumed</th>
					<th>Account Number</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="billdetails" items="${allbilldetails}">
					<tr>
						<td>${billdetails.billId}</td>
						<td>${billdetails.billDate}</td>
						<td>${billdetails.billAmount}</td>
						<td>${billdetails.unitConsumed}</td>
						<td>${billdetails.accountNumber}</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>