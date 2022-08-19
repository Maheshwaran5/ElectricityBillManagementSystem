<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>MeterboxInformation List</title>
<style>
<%@include file="/WEB-INF/css/list-meterbox.css"%>
</style>
</head>
<body>
<p>
        <button onclick="document.location='/index/meterboxindex/'" style="float:left">Back</button>
    </p>
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
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>