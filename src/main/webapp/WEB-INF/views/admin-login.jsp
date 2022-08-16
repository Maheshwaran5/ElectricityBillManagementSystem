<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<style>
* {
	box-sizing: border-box;
}
body {
    background-image:
        url("https://img.freepik.com/free-vector/flat-cms-concept-illustration_23-2148844353.jpg?w=2000");
    height: 768px;
    width: 1366px;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
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
	margin-left: 33%;
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
	width: 35%;
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
	box-shadow: 0 9px #1E90FF ;
	margin-left: 170px;
	margin-top: 10px;
}

.btn:hover {
	background-color: #6bb6ff
}

.btn2{
	margin-top:3%;
	margin-left: 100px;
    color: Dodgerblue;
}
.a1{
	background-color: powderblue;
}

.btn:active {
  background-color:     #9932CC;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>
</head>
<body>
	 <h2 align="center">Admin Login</h2>
	<div class="container">
		<form:form action="checkadminlogin" method="post" modelAttribute="admin">
		
			<div class="row">
				<div class="col-25">
					<label for="Admin Name">Admin Name</label>
				</div>
				<div class="col-75">
					<form:input path="adminName" placeholder="Admin Name" required="true" />
				</div>
			</div>
			
			<div class="row">
				<div class="col-25">
					<label for="Password">Password</label>
				</div>
				<div class="col-75">
					<form:input path="password" placeholder="password" required="true" />
				</div>
			</div>
			
				<div class="row">
					<form:button class="btn">Login</form:button>
				</div>
				<li></li>
				${result}
		</form:form>
		<div >
	</div>
	</div>
</body>
</html>