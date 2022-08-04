<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Bill Details</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post"
				modelAttribute="updatethebilldetails">
				<div>
					<label for="billId">Bill Id </label>
					<div>
						<form:input path="billId" />
					</div>
				</div>
				<div>
					<label for="bill_Date">Bill Date </label>
					<div>
						<form:input path="bill_Date" />
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


				<div>
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>