<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Bill ID Payment</title>
</head>
<body>

	<div id="form">
		<form:form action="" method="get" modelAttribute="getbillpayment">
			<div>
				<label for="paymentId">Payment Id </label>
				<div>
					<form:input path="paymentId" />
				</div>
			</div>
			<div>
				<label for="paymentDate">Payment Date</label>
				<div>
					<form:input path="paymentDate" />
				</div>
			</div>
			<div>
				<label for="billId">Bill Id</label>
				<div>
					<form:input path="billId" />
				</div>
			</div>
			<div>
				<label for="paidAmount">Paid Amount</label>
				<div>
					<form:input path="paidAmount" />
				</div>
			</div>
		</form:form>
	</div>
	

</body>
</html>