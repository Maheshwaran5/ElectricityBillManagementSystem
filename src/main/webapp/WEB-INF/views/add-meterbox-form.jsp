<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add MeterboxInformation</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addmeterbox">
                    <div>
					<label for="meterType">Meter Type</label>
					<div>
						<form:input path="meterType" placeholder="Digital"
							title="Meter Type can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]*$" required="true" />
					</div>
				</div>
				<form:errors path="meterType" class="text-danger" />
				<div>

					<label for="phaseCode">Phase Code</label>
					<div>
						<form:input path="phaseCode" placeholder="Enter Phase Code" />
					</div>
				</div>
				<form:errors path="phaseCode" class="text-danger" />
				<div>

					<label for="billType">Bill Type</label>
					<div>
						<form:input path="billType" placeholder="Enter Bill Type"
							title="Bill Type can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]*$" required="true" />
					</div>
				</div>
				<form:errors path="billType" class="text-danger" />

				<div>

					<label for="dueDate">Due Date</label>

				</div>
				<form:input type="date" path="dueDate" />
				<div>

					<label for="meterRent">Meter Rent</label>
					<div>
						<form:input path="meterRent" placeholder="Enter Meter Rent" />
						<!--  title="Meter Rent should have atleast 10 digits" required="true" />-->
					</div>
				</div>
				<form:errors path="meterRent" class="text-danger" />
				<div>
					<form:button>Add</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>