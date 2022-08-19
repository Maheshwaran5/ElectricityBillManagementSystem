<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
<%@include file="/WEB-INF/css/invalid-user-error.css"%>
</style>
</head>
<body>
	<h2>Invalid User</h2>
	<div class="invalid">Check your user name and password</div>
	<form:form action="checkcustomerlogin" method="post"
		modelAttribute="customer">
		<h1>User Log in</h1>
		<div class="inset">
			<p>
				<label for="customerName">User name</label>
				<form:input type="text" placeholder="Enter your Username"
					path="customerName" />
			</p>
			<p>
				<label for="password">PASSWORD</label>
				<form:input path="password" type="password"
					placeholder="Enter Password" />
			</p>
		</div>
		<p>
			<input type="submit" name="go" id="go" value="Log in">
		</p>
	</form:form>

</body>
</html>