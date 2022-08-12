<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get MeterboxInformation</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="get" modelAttribute="getmeter">
				<div>
					<label for="meterId">Meter Id</label>
					<div>
						<form:input path="meterId" />
					</div>
				</div>
				<div>
					<label for="meterType">Meter Type</label>
					<div>
						<form:input path="meterType" />
					</div>
				</div>

				<div>
					<label for="phaseCode">Phase Code</label>
					<div>
						<form:input path="phaseCode" />
					</div>
				</div>

				<div>
					<label for="billType">Bill Type</label>
					<div>
						<form:input path="billType" />
					</div>
				</div>


				<div>
					<label for="dueDate">Due Date</label>
					<div>
						<form:input path="dueDate" />
					</div>
				</div>

				<div>
					<label for="meterRent">Meter Rent</label>
					<div>
						<form:input path="meterRent" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>