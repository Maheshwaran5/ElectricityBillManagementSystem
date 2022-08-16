<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Customer</title>
<style type="text/css">
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
body {
	background-image:
		url("https://backgroundeditz.com/files/preview/800x980/116398851579jk0lc3epwtjt2tqaibugzaue4mh18ahirysvum0xxugxqf1hnansxlg3ofjrzmvtif2kxkh6dtcn3pzcxq8ru55frgoouznz1ar.jpg");
	height: 768px;
	width: 1366px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

* {
	box-sizing: border-box;
}

input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
}

label {
	padding: 12px 12px 12px 0;
	display: inline-block;
}

.container {
	margin-top: 1%;
	margin-left: 30%;
	border-radius: 5px;
    background-color: #32CD32;
	padding: 30px;
	width: 40%;
	float: left;
}

.col-25 {
	float: left;
	width: 30%;
	margin-top: 6px;
	margin-left: 10px;
}

.col-75 {
	float: left;
	width: 55%;
	margin-top: 6px;
}

.row:after {
	content: "";
	display: table;
	clear: both;
}

.btn {
	display: inline-block;
	padding: 10px 20px;
	font-size: 18px;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	color: white;
	background-color: #6bb6ff;
	border: none;
	border-radius: 10px;
	box-shadow: 0 9px #1E90FF;
	margin-left: 190px;
	margin-top: 10px;
}

.btn:hover {
	background-color: #6BFFB6
}

.btn:active {
	background-color: #9932CC;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
}
</style>
</head>
<body>
<p>
        <button onclick="document.location='/index/customerindex/'" style="float:left">Back</button>
    </p>
<div class="container">
	<h2 align="center">Get Customer Id</h2>
	
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