<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<title>Registration Customer Add Form</title>
<style>
<%@include file="/WEB-INF/css/add-customer-registration-form.css"%>
</style>
</head>
<body>
	 <p>
		<button onclick="document.location='/index/customerindex/'"
			style="float: left">Back</button>
	</p> 

	     <div class="container">
		<form:form action="add" method="post" modelAttribute="addcustomerregistration">
			<h2 class="text-center">Add Customer Registration</h2>
	
				<div class="row">
				<div class="col-25">
					<label for="name">Enter Customer Name</label>
				</div>
				<div class="col-75">
					<form:input path="name"  placeholder="Enter Customer Name" />
				</div>
				<form:errors path="name" class="text-danger" />
			</div> 
			
				<div class="row">
				<div class="col-25">
					<label for="tel">Enter Mobile Number</label>
				</div>
				<div class="col-75">
					<form:input path="mobileNumber"  placeholder="Enter Mobile Number" />
				</div>
				<form:errors path="mobileNumber" class="text-danger" />
			</div> 
			
				<div class="row">
				<div class="col-25">
					<label for="area">Enter Area</label>
				</div>
				<div class="col-75">
					<form:input path="area"  placeholder="Enter Your Area" />
				</div>
				<form:errors path="area" class="text-danger" />
			</div> 
			<div class="row">
			<form:button class="btn">Add</form:button>
	</div>
			</div>
			
		</form:form>
	</div>


</body>
</html>
