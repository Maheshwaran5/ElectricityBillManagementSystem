<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Bill Details</title>
<style type="text/css">
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
body {
	background-image:
		url("https://blog.2checkout.com/wp-content/uploads/2020/04/Online-payment-buy-online-1024x1024.jpg");
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
	background-color: #e60000;
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

	<div class="container">
		<h2 align="center">Bill Payment</h2>
	<div id="root">
		<div id="form">
		
		
			<form:form action="/billpayment/add" method="post" modelAttribute="addbillpayment">
				
              <div class="row">
				<div class="col-25">
					<label for="paymentId">Payment Id</label>
				</div>
				<div class="col-75">
					<form:input path="paymentId" placeholder="Enter Payment Id" />
				</div>
				<form:errors path="paymentId" class="text-danger" />
			</div>
				
				<div class="row">
				<div class="col-25">
					<label for="paymentDate">Payment Date</label>
				</div>
				<div class="col-75">
					<form:input type="date" path="paymentDate" />
				</div>
				</div>
				
				
				<div class="row">
				<div class="col-25">
					<label for="billId">Bill Id</label>
				</div>
				<div class="col-75">
					<form:input path="billId" placeholder="Enter Bill Id" />
				</div>
				<form:errors path="billId" class="text-danger" />
			</div>
			</div>
			
			    <div class="row">
				<div class="col-25">
					<label for="paidAmount">Bill Id</label>
				</div>
				<div class="col-75">
					<form:input path="paidAmount"  />
				</div>
				<form:errors path="paidAmount" class="text-danger" />
			</div>
			</div>
				<div class="row">
			<form:button class="btn">Submit</form:button>
	</div>

			</form:form>
		</div>
	
</body>
</html>