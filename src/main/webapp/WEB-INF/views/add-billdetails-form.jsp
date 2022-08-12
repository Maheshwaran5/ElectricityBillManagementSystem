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
		
			<form:form action="add" method="post" modelAttribute="addbilldetails">
			
				<div>
					<label for="billId">Bill Id </label>
					<div>
						<form:input path="billId" placeholder="Enter Bill Id" />
					</div>
				</div>
				
				<div>
					<label for="billDate">Bill Date</label>
					<div>
						<form:input type="date"  path="billDate"  />
					</div>
				</div>
				
				<div>
					<label for="billAmount">Bill Amount</label>
					<div>
						<form:input path="billAmount" placeholder="Enter Bill Amount" />
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
						<form:input path="accountNumber" placeholder="Enter Account Number" />

					</div>
					</div>

					<form:button>Add</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>