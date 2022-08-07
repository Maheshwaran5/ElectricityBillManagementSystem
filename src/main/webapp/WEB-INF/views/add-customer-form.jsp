<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Customer</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addcustomer">
				<div>
					<label for="customerId">Customer Id </label>
					<div>
						<form:input path="customerId" />
					</div>
				</div>
				<div>
					<label for="customerName">Customer Name</label>
					<div>
						<form:input path="customerName" />
					</div>
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" />
					</div>
					<div>
						<label for="mobileNumber">Mobile Number</label>
						<div>
							<form:input path="mobileNumber" />
						</div>
					</div>
					<div>
						<label for="aadhaarNumber">Aadhaar Number</label>
						<div>
							<form:input path="aadhaarNumber" />
						</div>
					</div>

					<div>
						<label for="accountNumber">Account Number</label>
						<div>
							<form:input path="accountNumber" />
						</div>
					</div>

					<div>
						<label for="meterId">meterId</label>
						<div>
							<form:input path="meterId" />
						</div>
					</div>


					<div>
						<label for="depositAmount">Deposit Amount</label>
						<div>
							<form:input path="depositAmount" />
						</div>
					</div>

					<div>
						<label for="advanceAmount">Advance Amount</label>
						<div>
							<form:input path="advanceAmount" />
						</div>
					</div>
					<div>
						<label for="address">Address</label>
						<div>
							<form:input path="address" />
						</div>
					</div>

					<label for="state">State</label>
					<div>
						<form:input path="state" />
					</div>

					<label for="country">Country</label>
					<div>
						<form:input path="country" />
					</div>
					<div>
						<label for="pinCode">Pincode</label>
						<div>
							<form:input path="pinCode" />
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