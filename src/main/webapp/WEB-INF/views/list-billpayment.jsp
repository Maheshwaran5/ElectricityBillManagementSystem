<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill Payment List</title>
<style type="text/css">
body {
    background-image:
        url("https://paytmblogcdn.paytm.com/wp-content/uploads/2021/11/22_Electricity-Everything-About-APEPDCL-Bill-Payment-800x500.jpg");
    height: 768px;
    width: 1366px;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
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