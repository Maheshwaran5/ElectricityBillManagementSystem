<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get Customer</title>
<style type="text/css">
<%@include file="/WEB-INF/css/get-customer-form.css"%>
h2{
align:center;

</style>
</head>
<body>
<p>
        <button onclick="document.location='/index/customerindex/'" style="float:left">Back</button>
    </p>
<div class="container">
	<h2>Get Customer Id</h2>
	
			<form:form action="add" method="get" modelAttribute="getcustomer">
				<%-- <div>
					<label for="customerId">Customer Id </label>
					<div>
						<form:input path="customerId" />
					</div>
				</div> --%>
				
				<div class="row">
					<div class="col-25">
						<label for="customerName">Customer Name</label>
					</div>
					<div class="col-75">
						<form:input path="customerName" placeholder="Enter Customer Name" />
					</div>
					<form:errors path="customerName" class="text-danger" />
				</div>
				
				<div class="row">
					<div class="col-25">
						<label for="password">Password</label>
					</div>
					<div class="col-75">
						<form:input path="password" placeholder="Enter Your Password" />
					</div>
					<form:errors path="password" class="text-danger" />
				</div>
				
					<div class="row">
					<div class="col-25">
						<label for="mobileNumber">Mobile Number</label>
					</div>
					<div class="col-75">
						<form:input path="mobileNumber" placeholder="Enter Your Contact Number" />
					</div>
					<form:errors path="mobileNumber" class="text-danger" />
				</div>
				
						<div class="row">
					<div class="col-25">
						<label for="aadhaarNumber">Aadhaar Number</label>
					</div>
					<div class="col-75">
						<form:input path="aadhaarNumber" placeholder="Enter Your Aadhaar Number" />
					</div>
					<form:errors path="aadhaarNumber" class="text-danger" />
				</div>

					<div class="row">
					<div class="col-25">
						<label for="accountNumber">Account Number</label>
					</div>
					<div class="col-75">
						<form:input path="accountNumber" placeholder="Enter Your Account Number" />
					</div>
					<form:errors path="accountNumber" class="text-danger" />
				</div>
				

					<div class="row">
					<div class="col-25">
						<label for="meterId">Meter Id</label>
					</div>
					<div class="col-75">
						<form:input path="meterId" placeholder="Enter Meter Id" />
					</div>
					<form:errors path="meterId" class="text-danger" />
				</div>
				


					<div class="row">
					<div class="col-25">
						<label for="depositAmount">Deposit Amount</label>
					</div>
					<div class="col-75">
						<form:input path="depositAmount" placeholder="Enter Deposit Amount" />
					</div>
					<form:errors path="depositAmount" class="text-danger" />
				</div>
				
				

					<div class="row">
					<div class="col-25">
						<label for="advanceAmount">Advance Amount</label>
					</div>
					<div class="col-75">
						<form:input path="advanceAmount"  />
					</div>
					<form:errors path="advanceAmount" class="text-danger" />
				</div>
				
					<div class="row">
				<div class="col-25">
					<label for="address">Address</label>
				</div>
				<div class="col-75">
					<form:input path="address" placeholder="Enter Your Address" title="Address Type can't be empty or must contain only alphabets" pattern="^[a-zA-Z]*$" required="true" />
						</div>
						</div>

					<div class="row">
				<div class="col-25">
					<label for="state">State</label>
				</div>
				<div class="col-75">
					<form:input path="state" placeholder="Enter Your State" title="State Type can't be empty or must contain only alphabets" pattern="^[a-zA-Z]*$" required="true" />
						</div>
						</div>

					<div class="row">
				<div class="col-25">
					<label for="country">Country</label>
				</div>
				<div class="col-75">
					<form:input path="country" placeholder="Enter Your Country" title="Country Type can't be empty or must contain only alphabets" pattern="^[a-zA-Z]*$" required="true" />
						</div>
						</div>
						
						<div class="row">
					<div class="col-25">
						<label for="pinCode">Pincode</label>
					</div>
					<div class="col-75">
						<form:input path="pinCode" placeholder="Enter Your pinCode" />
					</div>
					<form:errors path="pinCode" class="text-danger" />
				</div>
                     </div>
					
			</form:form>
		</div>
	</div>
</body>
</html>