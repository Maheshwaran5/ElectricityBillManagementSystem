<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<style>
body {
� � background-image:
� � � � url("https://images.pexels.com/photos/129731/pexels-photo-129731.jpeg?cs=srgb&dl=pexels-fwstudio-129731.jpg&fm=jpg.jpg");
� � background-width: 1366px;
� � background-height: 768px;
� � background-attachment: fixed;
� � background-size: cover;
}

h1 {
� � font-family: "Audiowide", sans-serif;
� � font-color: white;
� � font-style: oblique;
� � font-variant: small-caps;
� � font-size: 35px;
� � font-style: oblique;
}

h2 {
� � font-family: "Audiowide", sans-serif;
� � font-color: white;
� � font-style: oblique;
� � font-variant: small-caps;
� � font-size: 35px;
� � font-style: oblique;
}

.layout {
� � width: 360px;
� � height: 390px;
� � padding: 50px;
� � border: 6px solid black;
}
a{
color: black;
}
</style>
</head>
<body>
� � <div id="form" align="center">
� � � � <form:form action="index" method="post">
� � � � � � <h1>Welcome Elecricity Bill Management System</h1>
� � � � � � <div class="layout">
� � � � � � � � <div class="admin">
� � � � � � � � <div class='fas fa-user-cog' style='font-size:115px;color:black'></div>
� � � � � � � � � � <h2>
� � � � � � � � � � � � <a href="/admin/adminlogin">ADMIN LOGIN</a>" 
� � � � � � � � � � </h2>
� � � � � � � � </div>
� � � � � � � � <div>
� � � � � � � � <div class='fas fa-users' style='font-size:115px;color:black'></div>
� � � � � � � � � � <h2>
� � � � � � � � � � � � <a href="/customer/adminlogin"" style="text-decoration:none">Customer Login</a>
� � � � � � � � � � </h2>
� � � � � � � � </div>
� � � � � � </div>
� � � � </form:form>
� � </div>
</body>
</html>

