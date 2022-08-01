<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MeterboxInformation List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>MeterId</th>
					<th>Meter Type</th>
					<th>Phase Code</th>
					<th>bill Type</th>
					<th>Due_Date</th>
					<th>Meter Rent</th>
					<th>Gst_Amount</th>
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
						<td>${meterbox.gstAmount}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>