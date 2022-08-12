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
body {
    background-color: AntiqueWhite;
    text-align: center;
}
</style>
</head>
<body>
	<div id="root"> <div id="form">
			<form:form action="checkadminlogin" method="post" modelAttribute="admin">
				<div>
					<label for="customerUserName">Username :</label>
					<div>
						<form:input type="text" placeholder="Enter the name" path="adminName" />
					</div>
				</div>
				<div>
					<label for="customerPassword">Password :</label>
					<div>
						<form:input type="password" placeholder="Enter the password" path="password" />
					</div>
				</div>
				<div>
					<form:button>Login</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>