<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Bill Details</title>
<style type="text/css">
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}

body {
	background-image:
		url("https://media.istockphoto.com/photos/electric-bill-charges-paper-picture-id1365317732?k=20&m=1365317732&s=612x612&w=0&h=p6vmwcGybI5Izf2Arut5FE7FsUWJFnzItVHa4bfSi7A=");
	height: 768px;
	width: 1366px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

* {
	box-sizing: border-box;
}

input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
}

label {
	padding: 12px 12px 12px 0;
	display: inline-block;
}

.container {
	margin-top: 1%;
	margin-left: 30%;
	border-radius: 5px;
	background-color: #e60000;
	padding: 30px;
	width: 40%;
	float: left;
}

.col-25 {
	float: left;
	width: 30%;
	margin-top: 6px;
	margin-left: 10px;
}

.col-75 {
	float: left;
	width: 55%;
	margin-top: 6px;
}

.row:after {
	content: "";
	display: table;
	clear: both;
}

.btn {
	display: inline-block;
	padding: 10px 20px;
	font-size: 18px;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	color: white;
	background-color: #6bb6ff;
	border: none;
	border-radius: 10px;
	box-shadow: 0 9px #1E90FF;
	margin-left: 190px;
	margin-top: 10px;
}

.btn:hover {
	background-color: #6BFFB6
}

.btn:active {
	background-color: #9932CC;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
}
</style>
<script type="text/javascript">
	function billCalculate() {
		var unit = document.getElementById("unitConsumed").value;

		var total = parseInt(unit) * 4;
		document.getElementById("billAmount").value = total;

	}
</script>
</head>
<body>
<p>
        <button onclick="document.location='/index/customerindex/'" style="float:left">Back</button>
    </p>

	<div class="container">
		<h2 align="center">Add Bill Details</h2>


		<form:form action="add" method="post" modelAttribute="addbilldetails">

			<div class="row">
				<div class="col-25">
					<label for="billId">Bill Id</label>
				</div>
				<div class="col-75">
					<form:input path="billId" placeholder="Enter Bill Id" />
				</div>
				<form:errors path="billId" class="text-danger" />
			</div>
			
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
		<form:input path="unitConsumed" id="unitConsumed" onchange="billCalculate()" />
				</div>
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
					<form:input path="billAmount" id="billAmount" onchange="billCalculate(this.form)" placeholder="Enter Bill Amount" />
				</div>
				</div>
			
<div class="row">
			<form:button class="btn">Add</form:button>
	</div>
	
	</form:form>
	</div>

</body>
</html>