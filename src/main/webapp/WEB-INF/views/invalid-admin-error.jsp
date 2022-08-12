<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
</head>
<body>
 <h2>Invalid User </h2>
 <div> Check your user name and password</div>
<div id="root"> <div id="form">
			<form:form action="checkadminlogin" method="post" modelAttribute="admin">
				<div>
					<label for="customerUserName">Username :</label>
					<div>
						<form:input path="adminName" />
					</div>
				</div>
				<div>
					<label for="customerPassword">Password :</label>
					<div>
						<form:input path="password" />
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

