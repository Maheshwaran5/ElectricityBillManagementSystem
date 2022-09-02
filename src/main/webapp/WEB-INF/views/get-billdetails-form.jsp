 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Bill Details</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="getbilldetails">
				<div>
					<label for="billId">Bill Id</label>
					<div>
						<form:input path="billId" />
					</div>
				</div>
				<div>
					<label for="billDate">Bill Date</label>
					<div>
						<form:input path="billDate" />
					</div>
				</div>

				<div>
					<label for="billAmount">Bill Amount</label>
					<div>
						<form:input path="billAmount" />
					</div>
				</div>

				<div>
					<label for="unitConsumed">Unit Consumed</label>
					<div>
						<form:input path="unitConsumed" />
					</div>
				</div>


				<div>
					<label for="meterId">Meter Id</label>
					<div>
						<form:input path="meterId" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html> 