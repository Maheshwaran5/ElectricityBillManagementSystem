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
<%@include file="/WEB-INF/css/add-meterbox-form.css"%>
</style>
<script type="text/javascript">
<%@include file="/WEB-INF/script/datevalidation.js"%>
</script>
</head>
<body>

	
	<div class="container">
	<p>
        <button onclick="document.location='/index/meterboxindex/'" style="float:left">Back</button>
    </p>
	<h2>Add Meterbox</h2>
		<form:form action="add" method="post" modelAttribute="addmeterbox">
   			<div class="row">
					<div class="col-25">
						<label for="meterId">Meter Id</label>
					</div>
					<div class="col-75">
						<form:input path="meterId"  required="true" pattern="^[0-9]+$" placeholder="Enter Meter Id"
						title="Phase Code Type can't be empty or must contain only numbers" />
					</div>
					<form:errors path="meterId" class="text-danger" />
				</div>
			<div class="row">
				<div class="col-25">
					<label for="meterType">Meter Type</label>
				</div>
				<div class="col-75">
					<form:input path="meterType" placeholder="Enter Meter Type"
						title="Meter Type can't be empty or must contain only alphabets"
						pattern="^[a-zA-Z]*$" required="true" />
				</div>
				<form:errors path="meterType" class="text-danger" />
			</div>

				<div class="row">
					<div class="col-25">
						<label for="phaseCode">Phase Code</label>
					</div>
					<div class="col-75">
						<form:input path="phaseCode"  required="true" pattern="^[0-9]+$" placeholder="Enter Phase Code"
						title="Phase Code Type can't be empty or must contain only numbers" />
					</div>
					<form:errors path="phaseCode" class="text-danger" />
				</div>
				
			
			<div class="row">
                <div class="col-25">
                    <label for="billType" class="button">Bill Type</label>
                    </div>
                    <div class="col-75">
                        <form:select path="billType" class="button" placeholder="Enter Bill Type">
                            <form:option value="Domestic">Domestic</form:option>
                            <form:option value="Commercial">Commercial</form:option>
                        </form:select>
                    </div>
                </div>
			
			
	<div class="row">
		<div class="col-25">
			<label for="dueDate">Due Date</label>
		</div>
		<div class="col-75">
			<form:input type="date" min="2022-08-31" required="true" path="dueDate" id="duedate" style="width: 287px;
    height: 46px;" onblur="duedatecheck()"/>
		</div>
		</div>


		<div class="row">
			<div class="col-25">
				<label for="meterRent">Meter Rent</label>
			</div>
			<div class="col-75">
				<form:input path="meterRent" required="true"  pattern="^[0-9]+$" placeholder="Enter Meter Rent"
				title="Meter Rent Type can't be empty or must contain only numbers" />
			
		</div>
		<form:errors path="meterRent" class="text-danger" />
		</div>
		
		
		<div class="row">
			<form:button class="button-85" role="button" onblur="duedatecheck()">Add</form:button>
		</div>
		</form:form>
	</div>
</body>
</html>