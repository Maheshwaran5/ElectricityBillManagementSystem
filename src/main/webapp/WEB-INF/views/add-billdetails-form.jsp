<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Bill Details</title>
<style>
<%@include file="/WEB-INF/css/add-billdetails-form.css"%>
</style>
<script type="text/javascript">
	function billCalculate() {
		var unit = document.getElementById("unitConsumed").value;
		if(unit<=100){
			var total = parseInt(unit) * 3;
			document.getElementById("billAmount").value = total;
		}
		 if(unit>100 || unit<=500){
			var total = parseInt(unit) * 6;
			document.getElementById("billAmount").value = total;
		}
		 if(unit>500){
			var total = parseInt(unit) * 9;
			document.getElementById("billAmount").value = total;
		}
		else{
			alert("Not a valid option.");
		}
		/* var total = parseInt(unit) * 4;
		document.getElementById("billAmount").value = total; */

	}
</script>
</head>
<body>
<p>
        <button onclick="document.location='/index/customerindex/'" style="float:left">Back</button>
    </p>

	<div class="container">
		<h2>Add Bill Details</h2>


		<form:form action="add" method="post" modelAttribute="addbilldetails">

			<%-- <div class="row">
				<div class="col-25">
					<label for="billId">Bill Id</label>
				</div>
				<div class="col-75">
					<form:input path="billId"  placeholder="Enter Bill Id" />
				</div>
				<form:errors path="billId" class="text-danger" />
			</div> --%>
			
			<div class="row">
				<div class="col-25">
					<label for="billDate">Bill Date</label>
				</div>
				<div class="col-75">
					<form:input type="date" path="billDate" />
				</div>
				</div>
				
				
			
			
			<div class="row">
				<div class="col-25">
					<label for="unitConsumed">Unit Consumed</label>
				</div>
				<div class="col-75">
		<form:input path="unitConsumed" id="unitConsumed" onchange="billCalculate() "   />
				</div>
				<form:errors path="unitConsumed" class="text-danger" />
				</div>
				
			



			<div class="row">
				<div class="col-25">
				<label for="accountNumber">Account Number</label>
				</div>
				<div class="col-75">
				<form:input path="accountNumber" placeholder="Enter Account Number" />
				</div>
				</div>
			

			<div class="row">
				<div class="col-25">
				<label for="billAmount">Bill Amount</label>
				</div>
				<div class="col-75">
					<form:input path="billAmount" id="billAmount" onchange="billCalculate(this.form)" placeholder="Enter Bill Amount" pattern="^[0-9]+$" 
					title="Bill Amount Type can't be empty or must contain only numbers" />
				</div>
				</div>
			
<div class="row">
			<form:button class="btn">Add</form:button>
	</div>
	
	</form:form>
	</div>

</body>
</html>