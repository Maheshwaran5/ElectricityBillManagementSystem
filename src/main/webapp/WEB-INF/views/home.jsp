<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<style>
body {
    background-image:
        url("https://img.freepik.com/free-photo/abstract-grunge-decorative-relief-navy-blue-stucco-wall-texture-wide-angle-rough-colored-background_1258-28311.jpg?w=2000");
    height: 768px;
    width: 1366px;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
}

h1 {
 font-family: "Audiowide", sans-serif;
 font-color:  #ffffff;
 font-style: oblique;
 font-variant: small-caps;
 font-size: 35px;
 font-style: oblique;
}

h2 {
 font-family: "Audiowide", sans-serif;
 font-color:  #ffffff;
 font-style: oblique;
 font-variant: small-caps;
 font-size: 35px;
 font-style: oblique;
}

a{
color: ffffff;
}
</style>
</head>
<body>
    <div id="form" align="center">
        <form:form action="index" method="post">
            <h1>Welcome Elecricity Bill Management System</h1>
            <div class="layout">
                <div class='fas fa-user-cog' style='font-size:115px;color:black'></div>
                    <h2>
                        <a href="/admin/adminlogin" style="text-decoration:none">ADMIN LOGIN</a> 
                    </h2>
               

                <div class='fas fa-users' style='font-size:115px;color:black'></div>
                    <h2>
                        <a href="/customer/customerlogin" style="text-decoration:none">CUSTOMER LOGIN</a>
                    </h2>
                </div>

        </form:form>

    </div>
</body>
</html>

