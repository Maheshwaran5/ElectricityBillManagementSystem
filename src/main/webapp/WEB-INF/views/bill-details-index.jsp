<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Bill Details Index</title>
<style>
<%@include file="/WEB-INF/css/bill-details-index.css"%>
h1{
 align:center; 
 style:color:blue;
</style>


</head>
<body>
	  <h1>Electricity Bill Management System</h1>

		<h1>Bill Details</h1>
	<a href="/billdetails/addform">Add Bill Details</a>
	<br>
	<a href="/billdetails/list">View Bill Details List</a>
	<br>
	<a href="/billdetails/getbilldetailsid?id=7">Get Bill Details List</a>
	<br>

</body>
</html>