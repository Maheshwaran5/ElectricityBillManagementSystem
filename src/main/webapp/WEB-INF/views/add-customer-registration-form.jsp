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
	 

	     <div class="container">
	     <p>
		<button onclick="document.location='/index/home'"
			style="margin-top: -35px;margin-left: -26px;float: left">Back</button>
	</p> 
		<form:form action="add" method="post" modelAttribute="addcustomerregistration">
			<h2 class="text-center">Add Customer Registration</h2>
	
				
				<div class="row">
				<div class="col-25">
					<label for="name">Enter Customer Name</label> 
					
				</div>
				<div class="col-75">
					<form:input path="name"  placeholder="Enter Customer Name"  title="Task Title can't be empty or must contain only alphabets"
                            pattern="^[A-Za-z\s]*$" required="true" />
				</div>
				<form:errors path="name" class="text-danger" />
			</div> 
			
				<div class="row">
				<div class="col-25">
					<label for="tel">Enter Mobile Number</label>
				</div>
				<div class="col-75">
					<form:input path="mobileNumber"  placeholder="Enter Mobile Number" title="Mobile no Missing 10 Numbers " type="tel" required="true"
						pattern='[0-9]{10}' style="
    width: 270px;
    height: 45px;
"/>
				</div>
				<form:errors path="mobileNumber" class="text-danger" />
			</div> 
			
				<div class="row">
				<div class="col-25">
					<label for="area">Enter Area</label>
				</div>
				<div class="col-75">
					<form:input path="area"  placeholder="Enter Your Area" title="Task Title can't be empty or must contain only alphabets"
                            pattern="^[A-Za-z\s]*$" required="true" />
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
