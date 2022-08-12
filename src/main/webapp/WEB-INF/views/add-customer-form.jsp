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
					<label for="customerName">Customer Name</label>
					<div>
						<form:input path="customerName" placeholder="Enter Customer Name" />
					</div>
				</div>
				<form:errors path="customerName" class="text-danger" />
				
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" placeholder="Enter Password" />
					</div>
					<form:errors path="password" class="text-danger" />
					
					<div>
						<label for="mobileNumber">Mobile Number</label>
						<div>
							<form:input path="mobileNumber" placeholder="Enter Mobile Number" />
						</div>
					</div>
					<form:errors path="mobileNumber" class="text-danger" />
					
					<div>
						<label for="aadhaarNumber">Aadhaar Number</label>
						<div>
							<form:input path="aadhaarNumber" placeholder="Enter Aadhaar Number" />
						</div>
					</div>
					<form:errors path="aadhaarNumber" class="text-danger" />
					
					
 						
					<div>
						<label for="meterId">MeterId</label>
						<div>
							<form:input path="meterId" placeholder="Enter Meter Id " />
						</div>
					</div>
					<form:errors path="meterId" class="text-danger" />

                     
					<div>
						<label for="depositAmount">Deposit Amount</label>
						<div>
							<form:input path="depositAmount" placeholder="Enter Deposit Amount" />
						</div>
					</div>
					<form:errors path="depositAmount" class="text-danger" />
						
					<div>
						<label for="advanceAmount">Advance Amount</label>
						<div>
							<form:input path="advanceAmount" placeholder="Enter Advance Amount" />
						</div>
					</div>
					<form:errors path="advanceAmount" class="text-danger" />
					
					<div>
						<label for="address">Address</label>
						<div>
							<form:input path="address" placeholder="Enter Address" />
						</div>
					</div>
					<form:errors path="address" class="text-danger" />
					

					<label for="state">State</label>
					<div>
					
						<form:input path="state" placeholder="Enter State" />
					</div>
					<form:errors path="state" class="text-danger" />

					<label for="country">Country</label>
					<div>
					
						<form:input path="country" placeholder="Enter Country" />
					</div>
					<div>
					<form:errors path="country" class="text-danger" />
					
						<label for="pinCode">Pincode</label>
						<div>
						
							<form:input path="pinCode" placeholder="Enter Pincode"  />
						</div>
						<form:errors path="pinCode" class="text-danger" />



					</div>
					<div>
						<form:button>Add</form:button>
					</div>
			</form:form>
		</div>
	</div>
</body>
</html>