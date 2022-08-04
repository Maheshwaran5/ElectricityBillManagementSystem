<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Meterbox information & Customers</title>
</head>
<body>
	<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getmeterboxinformation">
				<div>
					<label for="meterId">Meter Id</label>
					<div>
						<form:input path="meterId" />
					</div>
				</div>
				<div>
					<label for="meterType">Meter Type</label>
					<div>
						<form:input path="meterType" />
					</div>
				</div>

				<div>
					<label for="phaseCode">Phase Code</label>
					<div>
						<form:input path="phaseCode" />
					</div>
				</div>

				<div>
					<label for="billType">Bill Type</label>
					<div>
						<form:input path="billType" />
					</div>
				</div>


				<div>
					<label for="dueDate">Due Date</label>
					<div>
						<form:input path="dueDate" />
					</div>
				</div>

				<div>
					<label for="meterRent">Meter Rent</label>
					<div>
						<form:input path="meterRent" />
					</div>
				</div>
				<div>
					<label for="gstAmount">GST Amount</label>
					<div>
						<form:input path="gstAmount" />
					</div>
				</div>
				<div>
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
		<div id="table root">
		<table border ="2" width="100%" cellpadding="2" >
	
			<thead>
				<tr>
				
					<th>Customer Id</th>
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
				
					<tr>
						<td>${getcustomer.customerId}</td>
						<td>${getcustomer.customerName}</td>
						<td>${getcustomer.mobileNumber}</td>
						<td>${getcustomer.aadhaarNumber}</td>
						<td>${getcustomer.accountNumber}</td>
						<td>${getcustomer.meterId}</td>
						<td>${getcustomer.depositAmount}</td>
						<td>${getcustomer.advanceAmount}</td>
						<td>${getcustomer.address}</td>
						<td>${getcustomer.state}</td>
						<td>${getcustomer.country}</td>
						<td>${getcustomer.pinCode}</td>
					</tr>
				
			</tbody>
		</table>
	</div>
</body>
</html>