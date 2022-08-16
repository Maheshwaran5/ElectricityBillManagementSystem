<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Meterbox</title>
<style type="text/css">
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}

body {
	background-image:
		url("https://media.istockphoto.com/vectors/electrical-panel-switch-with-wires-electric-meter-in-box-on-white-vector-id1083603310?b=1&k=20&m=1083603310&s=170667a&w=0&h=u1ZFLths9M15-JaFqNL5e2EgpRb_tITDunipJdPLBd4=");
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
	background-color: 	#fa8072;
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
	background-color: #6bb6ff
}

.btn:active {
	background-color: #9932CC;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
}
</style>
</head>
<body>
<p>
        <button onclick="document.location='/index/meterboxindex/'" style="float:left">Back</button>
    </p>

	<div class="container">
		<h2 align="center">Get Meterbox</h2>
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