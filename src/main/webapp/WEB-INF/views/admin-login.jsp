<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<style>
<%@include file="/WEB-INF/css/admin-login.css"%>
</style>
</head>
<body>
	 <h2>Admin Login</h2>
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