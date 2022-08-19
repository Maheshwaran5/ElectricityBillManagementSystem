<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Bill Details List</title>
<style>
<%@include file="/WEB-INF/css/list-billdetails.css"%>
</style>
</head>
<body>
<p>
        <button onclick="document.location='/index/customerindex/'" style="float:left">Back</button>
    </p>
	<div id="table root">
		<table class="table">
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