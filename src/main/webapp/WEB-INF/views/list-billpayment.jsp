<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill Payment List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Payment Id</th>
					<th>Payment Date</th>
					<th>bill Id</th>
					<th>Paid Amount</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="billPayment" items="${allbillpayment}">
					<tr>
						<td>${billPayment.paymentId}</td>
						<td>${billPayment.paymentDate}</td>
						<td>${billPayment.billId}</td>
						<td>${billPayment.paidAmount}</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>