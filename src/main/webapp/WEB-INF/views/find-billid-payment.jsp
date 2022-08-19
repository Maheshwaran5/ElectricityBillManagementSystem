<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get Bill ID Payment</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="fetchPaymentByBillDetails">
				<div>
					<label for="billId">Bill Id </label>
					<div>
						<form:input path="billId" />
					</div>
				</div>
				<div>
					<label for="billDate">Bill Date</label>
					<div>
						<form:input path="billDate" />
					</div>
				</div>
				<div>
					<label for="billAmount">Bill Amount</label>
					<div>
						<form:input path="billAmount" />
					</div>
				</div>
				<div>
					<label for="unitConsumed">Unit Consumed</label>
					<div>
						<form:input path="unitConsumed" />
					</div>
				</div>

				<div>
					<label for="accountNumber">Account Number</label>
					<div>
						<form:input path="accountNumber" />
						</div>
						</div>
			</form:form>
		</div>
		<div id="form">
			<form:form action="" method="get" modelAttribute="fetchBillByPayment">
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
	</div>
		
</body>
</html>