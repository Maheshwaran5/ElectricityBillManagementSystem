<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MeterboxInformation List</title>
<style type="text/css">
body {
    background-image:
        url("https://w0.peakpx.com/wallpaper/460/13/HD-wallpaper-green-lines-background-green-abstraction-geometric-background-creative-green-background-thumbnail.jpg");
    height: 768px;
    width: 1366px;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
}
tr:hover {background-color: #ECF32D;}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
tr:nth-child(even) {
  background-color: rgba(150, 212, 212, 0.4);
}
th:nth-child(even),td:nth-child(even) {
  background-color: rgba(150, 212, 212, 0.4);
}
</style>
</head>
<body>
<p>
        <button onclick="document.location='/index/meterboxindex/'" style="float:left">Back</button>
    </p>
	<div id="table root">
		<table border ="2" width="100%" cellpadding="2">
		
			<thead>
				<tr>
					<th>MeterId</th>
					<th>Meter Type</th>
					<th>Phase Code</th>
					<th>bill Type</th>
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