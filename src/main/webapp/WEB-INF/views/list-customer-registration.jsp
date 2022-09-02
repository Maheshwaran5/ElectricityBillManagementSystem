<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer List</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
 <style>
<%@include file="/WEB-INF/css/list-customer-registration.css"%>
h1 {text-align: center;}
div{text-align: center;}
.table-size{
border:2px ;
width:100%;
cellpadding:2px;
 }
</style>
 </head>
<body>
	<p>
		<button onclick="document.location='/index/home/'"
			style="float: left">Back</button>
	</p> 
	<div id="table root">
		<table class="table-size">
        <caption></caption>
            <colgroup>
                <col span="10" style="background-color:aqua">
                <col span="4" style="background-color: red">
            </colgroup>
         <thead>
				<tr>

					<th>Customer Name</th>
					<th>Mobile Number</th>
					<th>Area</th>
					<th>Meter Id</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="customerreg" items="${allcustomerregistration}">
					<tr>
						<td>${customerreg.name}</td>
						<td>${customerreg.mobileNumber}</td>
						<td>${customerreg.area}</td>
						<td>${customerreg.meterId}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>