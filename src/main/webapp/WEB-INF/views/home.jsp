<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<style>
<%@include file="/WEB-INF/css/home.css"%>
</style>
</head>
<body>
    <div id="form">
        <form:form action="index" method="post">
            <h1 class="glow">Welcome Elecricity Bill Management System</h1>
            <div class="layout">
                <div class='fas fa-user-cog' style='font-size:115px;color:red'></div>
                    <h2>
                        <a href="/admin/adminlogin" style="text-decoration:none;color: #d31edf">ADMIN LOGIN</a> 
                    </h2>
               

                <div class='fas fa-users' style='font-size:115px;color:red'></div>
                    <h2>
                        <a href="/customer/customerlogin" style="text-decoration:none;color: #d31edf">CUSTOMER LOGIN</a>
                    </h2>
                </div>

        </form:form>

    </div>
</body>
</html>

