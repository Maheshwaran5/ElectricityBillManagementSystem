<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer Index</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<%@include file="/WEB-INF/css/customer-index.css"%>

</style>
</head>
<body>
<button onclick="document.location='/customer/customerlogin'" style="float:left">Back</button>
    </p>
	<h2>Welcome To Customer Index</h2>

	<div class="navbar">
		<div class="dropdown">
			<button class="dropbtn">
				Customer Details <em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="/customer/addform">Add Customer</a>
				 <br>
				  <a href="/customer/list">View Customer List</a> <br> 
				  <a href="/customer/getcustomerid?id=326876549087">Get Customer ID</a> 
				  <br>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				Bill Details <em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="/billdetails/addform">Add Bill Details</a>
	<br>
	<a href="/billdetails/list">View Bill Details List</a>
	<br>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				Bill Payment <em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">

	<br>
	<a href="/billpayment/list">View Bill Payment Details List</a>
	<br>
			</div>
		</div>
			</div>
			
			<div id="table root">
		<table class="table" style="
    margin-top: 46px;
    width: 1241px;
    height: 237px;
    background-color: bisque;
">
		<caption></caption>
			<thead>
				<tr>
					<th>Bill Id</th>
					<th>Bill Date</th>
					<th>Unit Consumed</th>
					<th>Bill Amount</th>
					<th>Account Number</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="billdetails" items="${allbilldetails}">
					<tr>
						<td>${billdetails.billId}</td>
						<td>${billdetails.billDate}</td>
						<td>${billdetails.unitConsumed}</td>
						<td>${billdetails.billAmount}</td>
						<td>${billdetails.accountNumber}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>		
</body>
</html>


