<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Meterbox</title>
<style>
<%@include file="/WEB-INF/css/get-meterbox-form.css"%>
h2{
text-align:center;
</style>
</head>
<body>
<p>
        <button onclick="document.location='/index/meterboxindex/'" style="float:left">Back</button>
    </p>

	<div class="container">
		<h2>Get Meterbox</h2>
		<form:form action="add" method="get" modelAttribute="getmeter">

			<div class="row">
				<div class="col-25">
					<label for="meterId">Meter Id</label>
				</div>
				<div class="col-75">
					<form:input path="meterId" />
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="meterType">Meter Type</label>
				</div>
				<div class="col-75">
					<form:input path="meterType" />
				</div>
			</div>

			<div class="row">
				<div class="col-25">
					<label for="phaseCode">Phase Code</label>
				</div>
				<div class="col-75">
					<form:input path="phaseCode" />
				</div>
			</div>

			<div class="row">
				<div class="col-25">
					<label for="billType">Bill Type</label>
				</div>
				<div class="col-75">
					<form:input path="billType" />
				</div>
			</div>


			<div class="row">
				<div class="col-25">
				<label for="dueDate">Due Date</label>
				</div>
				<div class="col-75">
					<form:input path="dueDate" />
				</div>
			</div>

			<div class="row">
				<div class="col-25">
				<label for="meterRent">Meter Rent</label>
				</div>
				<div class="col-75">
				
					<form:input path="meterRent" />
				</div>
			</div>
		</form:form>
	</div>
	</div>
</body>
</html>