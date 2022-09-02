<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>MeterboxInformation List</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<style>
.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
.button {
  background-color: #89bf1e; /* Green */
  border: none;
  border-radius: 121px;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin-left: 604px;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}
<%@include file="/WEB-INF/css/list-meterbox.css"%>
</style>
</head>
<body>
	<div id="table root">
		<table class="table">
		<caption></caption>
			<thead>
				<tr>
					<th>MeterId</th>
					<th>Meter Type</th>
					<th>Phase Code</th>
					<th>Bill Type</th>
					<th>Due_Date</th>
					<th>Meter Rent</th>
					<th>Meter List</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="meterbox" items="${allmeterbox}">
					<tr>
						<td>${meterbox.meterId}</td>
						<td>${meterbox.meterType}</td>
						<td>${meterbox.phaseCode}</td>
						<td>${meterbox.billType}</td>
						<td>${meterbox.dueDate}</td>
						<td>${meterbox.meterRent}</td>
						<td><a style="color:white" href="/billdetails/meterlist?id=${meterbox.meterId}">Meter List</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
	<a button class="button button2" href="/customer/customerlogin">Customer Login</a></button>
</div>
</body>
</html>