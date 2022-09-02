<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Bill Details</title>
<style>
<%@include file="/WEB-INF/css/add-billpayment-form.css"%>
</style>
</head>
<body>

	<div class="container">
		<h2>Bill Payment</h2>
	<div id="root">
		<div id="form">
		
		
			<form:form action="/billpayment/add" method="post" modelAttribute="addbillpayment">
				
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
					<label for="paymentDate">Payment Date</label>
				</div>
				<div class="col-75">
					<form:input type="date" path="paymentDate" style="
    width: 266px;
    height: 39px;
" />
				</div>
				</div>
				
				
				<div class="row">
				<div class="col-25">
					<label for="billId">Bill Id</label>
				</div>
				<div class="col-75">
					<form:input path="billId" pattern="^[0-9]+$" placeholder="Enter Bill Id" />
				</div>
				<form:errors path="billId" class="text-danger" />
			</div>
			</div>
				<div class="row">
				<div class="col-25">
					<label for="accountNumber">Account Number</label>
				</div>
				<div class="col-75">
					<form:input path="accountNumber"  />
				</div>
				<form:errors path="accountNumber" class="text-danger" />
			</div>
			    <div class="row">
				<div class="col-25">
					<label for="paidAmount">Paid Amount</label>
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